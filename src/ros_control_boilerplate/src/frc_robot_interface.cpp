/*********************************************************************
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2015, PickNik LLC
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of PickNik LLC nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *********************************************************************/

/* Original Author: Dave Coleman
   Desc:   Helper ros_control hardware interface that loads configurations
*/

//PURPOSE: Stuff used by to run both hw and sim interfaces

#include <ros_control_boilerplate/frc_robot_interface.h>
#include <limits>

namespace ros_control_boilerplate
{

void FRCRobotInterface::readJointLocalParams(XmlRpc::XmlRpcValue joint_params,
											 const bool local,
											 const bool saw_local_keyword,
											 bool &local_update,
											 bool &local_hardware)
{
	local_update = local;
	if (joint_params.hasMember("local_update"))
	{
		if (saw_local_keyword)
			throw std::runtime_error("local can't be combined with local_update");
		XmlRpc::XmlRpcValue &xml_joint_local_update = joint_params["local_update"];
		if (!xml_joint_local_update.valid() ||
			xml_joint_local_update.getType() != XmlRpc::XmlRpcValue::TypeBoolean)
			throw std::runtime_error("An invalid joint local_update was specified (expecting a boolean).");
		local_update = xml_joint_local_update;
	}
	local_hardware = local;
	if (joint_params.hasMember("local_hardware"))
	{
		if (saw_local_keyword)
			throw std::runtime_error("local can't be combined with local_hardware");
		XmlRpc::XmlRpcValue &xml_joint_local_hardware = joint_params["local_hardware"];
		if (!xml_joint_local_hardware.valid() ||
			xml_joint_local_hardware.getType() != XmlRpc::XmlRpcValue::TypeBoolean)
			throw std::runtime_error("An invalid joint local_hardware was specified (expecting a boolean).");
		local_hardware = xml_joint_local_hardware;
	}
}

FRCRobotInterface::FRCRobotInterface(ros::NodeHandle &nh, urdf::Model *urdf_model) :
	  name_("generic_hw_interface")
	, nh_(nh)
	, num_can_ctre_mcs_(0)
	, num_rumbles_(0)
	, num_navX_(0)
    , num_ready_signals_(0)
	, robot_code_ready_(false)
{
	// Check if the URDF model needs to be loaded
	if (urdf_model == NULL)
		loadURDF(nh, "robot_description");
	else
		urdf_model_ = urdf_model;

	// Load rosparams
	ros::NodeHandle rpnh(nh_, "hardware_interface"); // TODO(davetcoleman): change the namespace to "frc_robot_interface" aka name_

	// Read a list of joint information from ROS parameters.  Each entry in the list
	// specifies a name for the joint and a hardware ID corresponding
	// to that value.  Joint types and locations are specified (by name)
	// in a URDF file loaded along with the controller.
	XmlRpc::XmlRpcValue joint_param_list;
	if (!rpnh.getParam("joints", joint_param_list))
		throw std::runtime_error("No joints were specified.");
	for (int i = 0; i < joint_param_list.size(); i++)
	{
		XmlRpc::XmlRpcValue &joint_params = joint_param_list[i];
		if (!joint_params.hasMember("name"))
			throw std::runtime_error("A joint name was not specified");
		XmlRpc::XmlRpcValue &xml_joint_name = joint_params["name"];
		if (!xml_joint_name.valid() ||
			xml_joint_name.getType() != XmlRpc::XmlRpcValue::TypeString)
			throw std::runtime_error("An invalid joint name was specified (expecting a string)");
		const std::string joint_name = xml_joint_name;

		if (!joint_params.hasMember("type"))
			throw std::runtime_error("A joint type was not specified for joint " + joint_name);
		XmlRpc::XmlRpcValue &xml_joint_type = joint_params["type"];
		if (!xml_joint_type.valid() ||
			xml_joint_type.getType() != XmlRpc::XmlRpcValue::TypeString)
			throw std::runtime_error("An invalid joint type was specified (expecting a string) for joint " + joint_name);
		const std::string joint_type = xml_joint_type;

		bool saw_local_keyword = false;
		bool local = true;
		bool local_update;
		bool local_hardware;
		if (joint_params.hasMember("local"))
		{
			XmlRpc::XmlRpcValue &xml_joint_local = joint_params["local"];
			if (!xml_joint_local.valid() ||
				xml_joint_local.getType() != XmlRpc::XmlRpcValue::TypeBoolean)
				throw std::runtime_error("An invalid joint local was specified (expecting a boolean) for joint " + joint_name);
			local = xml_joint_local;
			saw_local_keyword = true;
		}

		if ((joint_type == "can_talon_srx") || (joint_type == "can_talon_fx") )
		{
			readJointLocalParams(joint_params, local, saw_local_keyword, local_update, local_hardware);

			const bool has_can_id = joint_params.hasMember("can_id");
			if (!local_hardware && has_can_id)
				throw std::runtime_error("A CAN Talon SRX / Talon FX can_id was specified with local_hardware == false for joint " + joint_name);

			int can_id = 0;
			if (local_hardware)
			{
				if (!has_can_id)
					throw std::runtime_error("A CAN Talon SRX / Talon FX can_id was not specified");
				XmlRpc::XmlRpcValue &xml_can_id = joint_params["can_id"];
				if (!xml_can_id.valid() ||
						xml_can_id.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joint can_id was specified (expecting an int) for joint " + joint_name);
				can_id = xml_can_id;
				auto it = std::find(can_ctre_mc_can_ids_.cbegin(), can_ctre_mc_can_ids_.cend(), can_id);
				if (it != can_ctre_mc_can_ids_.cend())
					throw std::runtime_error("A duplicate can_id was specified for joint " + joint_name);
			}
			can_ctre_mc_names_.push_back(joint_name);
			can_ctre_mc_can_ids_.push_back(can_id);
			can_ctre_mc_local_updates_.push_back(local_update);
			can_ctre_mc_local_hardwares_.push_back(local_hardware);
			can_ctre_mc_is_talon_srx_.push_back(joint_type == "can_talon_srx");
		}
		else if (joint_type == "rumble")
		{
			readJointLocalParams(joint_params, local, saw_local_keyword, local_update, local_hardware);

			const bool has_rumble_port = joint_params.hasMember("rumble_port");
			if (local_hardware && !has_rumble_port)
				throw std::runtime_error("A rumble_port was specified for non-local hardware for joint " + joint_name);
			int rumble_port = 0;
			if (local_hardware)
			{
				if (!has_rumble_port)
					throw std::runtime_error("A rumble_port was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_rumble_port = joint_params["rumble_port"];
				if (!xml_rumble_port.valid() ||
						xml_rumble_port.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joint rumble_port was specified (expecting an int) for joint " + joint_name);
				rumble_port = xml_rumble_port;

				auto it = std::find(rumble_ports_.cbegin(), rumble_ports_.cend(), rumble_port);
				if (it != rumble_ports_.cend())
					throw std::runtime_error("A duplicate rumble port was specified for joint " + joint_name);
			}

			rumble_names_.push_back(joint_name);
			rumble_ports_.push_back(rumble_port);
			rumble_local_updates_.push_back(local_update);
			rumble_local_hardwares_.push_back(local_hardware);
		}
		else if (joint_type == "navX")
		{
			// TODO : id might instead be a string - MXP, USB, etc
			// telling where the navX is attached?
			const bool has_id = joint_params.hasMember("id");
			if (!local && has_id)
				throw std::runtime_error("A navX id was specified for non-local hardware for joint " + joint_name);
			int navX_id = 0;
			if (local)
			{
				if (!has_id)
					throw std::runtime_error("A navX id was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_navX_id = joint_params["id"];
				if (!xml_navX_id.valid() ||
						xml_navX_id.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joint id was specified (expecting an int) for joint " + joint_name);
				navX_id = xml_navX_id;
				auto it = std::find(navX_ids_.cbegin(), navX_ids_.cend(), navX_id);
				if (it != navX_ids_.cend())
					throw std::runtime_error("A duplicate navX_id was specified for joint " + joint_name);
			}

			const bool has_frame_id = joint_params.hasMember("id");
			if (!local && has_frame_id)
				throw std::runtime_error("A navX frame_id was specified for non-local hardware for joint " + joint_name);
			std::string frame_id;
			if (local)
			{
				if (!has_frame_id)
					throw std::runtime_error("A navX frame_id was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_joint_frame_id= joint_params["frame_id"];
				if (!xml_joint_frame_id.valid() ||
						xml_joint_frame_id.getType() != XmlRpc::XmlRpcValue::TypeString)
					throw std::runtime_error("An invalid navX frame_id was specified (expecting a string) for joint " + joint_name);
				frame_id = std::string(xml_joint_frame_id);
			}

			navX_names_.push_back(joint_name);
			navX_frame_ids_.push_back(frame_id);
			navX_ids_.push_back(navX_id);
			navX_locals_.push_back(local);
		}
		else if (joint_type == "joystick")
		{
			const bool has_id = joint_params.hasMember("id");
			if (!local && has_id)
				throw std::runtime_error("A joystick ID was specified for non-local hardware for joint " + joint_name);
			int id = 0;
			if (local)
			{
				if (!has_id)
					throw std::runtime_error("A joystick ID was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_id = joint_params["id"];
				if (!xml_id.valid() ||
						xml_id.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joystick id was specified (expecting an int) for joint " + joint_name);
				id = xml_id;
				auto it = std::find(joystick_ids_.cbegin(), joystick_ids_.cend(), id);
				if (it != joystick_ids_.cend())
					throw std::runtime_error("A duplicate joystick ID was specified for joint " + joint_name);
			}
			joystick_names_.push_back(joint_name);
			joystick_ids_.push_back(id);
			joystick_locals_.push_back(local);
		}
		else
		{
			std::stringstream s;
			s << "Unknown joint type " << joint_type << " specified for joint " + joint_name;
			throw std::runtime_error(s.str());
		}
	}
	can_interface_ = rpnh.param<std::string>("can_interface", "can0");
}

void FRCRobotInterface::init()
{
	num_can_ctre_mcs_ = can_ctre_mc_names_.size();
	// Create vectors of the correct size for
	// talon HW state and commands
	talon_command_.resize(num_can_ctre_mcs_);

	// Loop through the list of joint names
	// specified as params for the hardware_interface.
	// For each of them, create a Talon object. This
	// object is used to send and recieve commands
	// and status to/from the physical Talon motor
	// controller on the robot.  Use this pointer
	// to initialize each Talon with various params
	// set for that motor controller in config files.
	for (size_t i = 0; i < num_can_ctre_mcs_; i++)
	{
		ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface: Registering Talon Interface for " << can_ctre_mc_names_[i] << " at hw ID " << can_ctre_mc_can_ids_[i]);

		// Create joint state interface
		// Also register as JointStateInterface so that legacy
		// ROS code which uses that object type can
		// access basic state info from the talon
		// Code which needs more specific status should
		// get a TalonStateHandle instead.
		talon_state_.push_back(hardware_interface::TalonHWState(can_ctre_mc_can_ids_[i]));
	}
	for (size_t i = 0; i < num_can_ctre_mcs_; i++)
	{
		// Create state interface for the given Talon
		// and point it to the data stored in the
		// corresponding talon_state array entry
		hardware_interface::TalonStateHandle tsh(can_ctre_mc_names_[i], &talon_state_[i]);
		talon_state_interface_.registerHandle(tsh);

		// Do the same for a command interface for
		// the same talon
		hardware_interface::TalonCommandHandle tch(tsh, &talon_command_[i]);
		talon_command_interface_.registerHandle(tch);
		
		custom_profile_state_.push_back(CustomProfileState());
	}

	num_rumbles_ = rumble_names_.size();
	rumble_state_.resize(num_rumbles_);
	rumble_command_.resize(num_rumbles_);
	for (size_t i = 0; i < num_rumbles_; i++)
	{
		ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface: Registering interface for : " << rumble_names_[i] << " at port " << rumble_ports_[i]);

		rumble_state_[i] = std::numeric_limits<double>::max();
		rumble_command_[i] = 0;
		hardware_interface::JointStateHandle rsh(rumble_names_[i], &rumble_state_[i], &rumble_state_[i], &rumble_state_[i]);
		joint_state_interface_.registerHandle(rsh);

		hardware_interface::JointHandle rh(rsh, &rumble_command_[i]);
		joint_position_interface_.registerHandle(rh);
	}

	// Differentiate between navX and IMU here
	// We might want more than 1 type of IMU
	// at some point - eventually allow this by making IMU
	// data sized to hold results from all IMU
	// hardware rather than just navX size
	num_navX_ = navX_names_.size();
	imu_orientations_.resize(num_navX_);
	imu_orientation_covariances_.resize(num_navX_);
	imu_angular_velocities_.resize(num_navX_);
	imu_angular_velocity_covariances_.resize(num_navX_);
	imu_linear_accelerations_.resize(num_navX_);
	imu_linear_acceleration_covariances_.resize(num_navX_);
	navX_state_.resize(num_navX_);
	offset_navX_.resize(num_navX_);

	for (size_t i = 0; i < num_navX_; i++)
	{
		ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface: Registering navX interface for : " << navX_names_[i] << " at id " << navX_ids_[i]);

		// Create state interface for the given IMU
		// and point it to the data stored in the
		// corresponding imu arrays
		hardware_interface::ImuSensorHandle::Data imu_data;
		imu_data.name = navX_names_[i];
		imu_data.frame_id = navX_frame_ids_[i];
		for (size_t j = 0; j < 3; j++)
		{
			imu_orientations_[i][j] = 0;
			imu_angular_velocities_[i][j] = 0;
			imu_linear_accelerations_[i][j] = 0;
		}
		imu_orientations_[i][3] = 1;
		imu_data.orientation = &imu_orientations_[i][0];
		imu_data.orientation_covariance = &imu_orientation_covariances_[i][0];
		imu_data.angular_velocity = &imu_angular_velocities_[i][0];
		imu_data.angular_velocity_covariance = &imu_angular_velocity_covariances_[i][0];
		imu_data.linear_acceleration = &imu_linear_accelerations_[i][0];
		imu_data.linear_acceleration_covariance = &imu_linear_acceleration_covariances_[i][0];

		hardware_interface::ImuSensorHandle imuh(imu_data);
		imu_interface_.registerHandle(imuh);

		// Set up a command interface to set an
		// offset for reported heading
		hardware_interface::JointStateHandle nxsh(navX_names_[i], &navX_state_[i], &navX_state_[i], &navX_state_[i]);
		joint_state_interface_.registerHandle(nxsh);
		offset_navX_[i] = 0;
	}

	

	// Publish various FRC-specific data using generic joint state for now
	// For simple things this might be OK, but for more complex state
	// (e.g. joystick) it probably makes more sense to write a
	// RealtimePublisher() for the data coming in from
	// the DS
	registerInterface(&talon_state_interface_);
	registerInterface(&joint_state_interface_);
	registerInterface(&talon_command_interface_);
	registerInterface(&joint_command_interface_);
	registerInterface(&joint_position_interface_);
	registerInterface(&joint_velocity_interface_);
	registerInterface(&joint_effort_interface_); // empty for now
	registerInterface(&imu_interface_);


	ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface Ready.");
}

// Using the mode, setpoint, etc generated from a given Talon's custom profile,
// update the talon command values for that Talon. This way the rest of the
// write() command will use those values to update hardware / sim for the
// motor controller
void FRCRobotInterface::custom_profile_set_talon(hardware_interface::TalonMode mode,
												 double setpoint, double fTerm,
												 int joint_id, int pidSlot, bool zeroPos)
{
	auto &tc = talon_command_[joint_id];
	if(zeroPos)
	{
		tc.setSelectedSensorPosition(0);
		ROS_INFO_STREAM("custom_profile_set_talon zeroing talon:" <<  joint_id);
	}
	ROS_INFO_STREAM("joint_id:" << joint_id << " mode:" << mode << " setpoint: " << setpoint << " fterm: " << fTerm << " slot: " << pidSlot);

	// Set talon mode based on profile type
	if(mode == hardware_interface::TalonMode_PercentOutput)
	{
		// Percent output doesn't use feedforward
		tc.setDemand1Type(hardware_interface::DemandType_Neutral);
	}
	else
	{
		tc.setDemand1Type(hardware_interface::DemandType_ArbitraryFeedForward);
		tc.setDemand1Value(fTerm);
	}

	tc.setMode(mode);
	tc.set(setpoint);

	tc.setPidfSlot(pidSlot);
}

// Called once per talon in each write loop.  Used to generate
// commands for that talon if it is running in custom
// motion profile mode
// TODO : see if there's a way to only zero out position once,
// and then not send pt[0]'s zero pos command for points
// interpolated from it
void FRCRobotInterface::custom_profile_write(int joint_id)
{
	// Don't run if the talon isn't local
	if (!can_ctre_mc_local_hardwares_[joint_id])
	{
		return;
	}

	auto &tc = talon_command_[joint_id];

	if (tc.getCustomProfileDisable())
	{
		return;
	}

	auto &ts = talon_state_[joint_id];
	auto &cps = custom_profile_state_[joint_id];
	auto &ps = cps.status_;

	// Grab points to hit and times to hit them from the
	// talon command buffer
	auto &prof_pts = cps.saved_points_;
	auto &prof_times = cps.saved_times_;

	tc.getCustomProfilePointsTimesChanged(prof_pts, prof_times);

	// TODO : add check for talon mode == disabled,, run, etc.
	// if so clear out getCustomProfileRun(), run, etc.
	if (ts.getTalonMode() == hardware_interface::TalonMode_Disabled)
	{
		tc.setCustomProfileRun(false);
	}

	const bool run = tc.getCustomProfileRun();

	// Clear out the current slot when profile status
	// transitions from running to stopped
	// This should also catch the case where a profile was being run
	// when the robot was disabled, because we force custom profile
	// run to false on robot disable
	if(ps.running && !run)
	{
		std::vector<hardware_interface::CustomProfilePoint> empty_points;
		tc.overwriteCustomProfilePoints(empty_points, ps.slotRunning);
		//Right now we wipe everything if the profile is stopped
		//This could be changed to a pause type feature in which the first point has zeroPos set and the other
		//positions get shifted
		cps.points_run_ = 0;
	}

	// Reset start time to now when switching from non-running to running
	if((run && !ps.running) || !run)
	{
		cps.time_start_ = ros::Time::now().toSec();
	}
	const int slot = tc.getCustomProfileSlot();

	if(slot != ps.slotRunning && run && ps.running)
	{
		ROS_WARN("transitioned between two profile slots without any break between. Intended?");
		std::vector<hardware_interface::CustomProfilePoint> empty_points;
		tc.overwriteCustomProfilePoints(empty_points, ps.slotRunning);
		//Right now we wipe everything if the slots are flipped
		//Should try to be analagous to having a break between
		cps.points_run_= 0;
		cps.time_start_= ros::Time::now().toSec();
	}
	ps.slotRunning = slot;
	// Actully run profile code for this talon
	if(run)
	{
		if(prof_pts[slot].size() == 0)
		{
			ROS_ERROR_THROTTLE(1.0, "Tried to run custom profile with no points buffered");
			//Potentially add more things to do if this exception is caught
			//Like maybe set talon to neutral mode or something
			return;
		}

		//Find the point just greater than time since start
		size_t end;
		ps.outOfPoints = true;
		const double time_since_start = ros::Time::now().toSec() - cps.time_start_;
		for(end = std::max(cps.points_run_ - 1, 0); end < prof_pts[slot].size(); end++)
		{
			if(prof_times[slot][end] > time_since_start)
			{
				ps.outOfPoints = false;
				break;
			}
		}

		// Save the current point found to run to speed up the
		// search for it next time through the loop.
		if(ps.outOfPoints)
		{
			cps.points_run_ = prof_pts[slot].size();
		}
		else
		{
			cps.points_run_ = std::max(static_cast<int>(end) - 1, 0);
		}
#if 0
		ROS_INFO_STREAM(" cps.points_run_:" << cps.points_run_
				<< " time_since_start:" << time_since_start
				<< " end:" << end
				<< " ps.outOfPoints:" << ps.outOfPoints);
#endif
		if(ps.outOfPoints)
		{
			auto next_slot = tc.getCustomProfileNextSlot();
			auto back = prof_pts[slot].back();

			//If all points have been exhausted, just use the last point
			custom_profile_set_talon(back.mode, back.setpoint, back.fTerm, joint_id, back.pidSlot, back.zeroPos);
			if (next_slot.size() > 0)
			{
				tc.setCustomProfileSlot(next_slot[0]);
				next_slot.erase(next_slot.begin());
				tc.setCustomProfileNextSlot(next_slot);
			}
		}
		else if(end == 0)
		{
			auto m = prof_pts[slot][0];
			//If we are still on the first point,just use the first point
			custom_profile_set_talon(m.mode, m.setpoint, m.fTerm, joint_id, m.pidSlot, m.zeroPos);
		}
		else
		{
			auto endp = prof_pts[slot][end];
			auto endpm1 = prof_pts[slot][end - 1];
			//Allows for mode flipping while in profile execution
			//We don't want to interpolate between positional and velocity setpoints
			if(endp.mode != endpm1.mode)
			{
				ROS_WARN_STREAM("mid profile mode flip. If intendped, Cooooooooollllll. If not, fix the code : " << endp.mode << " from " << endpm1.mode);
				custom_profile_set_talon(endp.mode, endp.setpoint, endp.fTerm, joint_id, endp.pidSlot, endp.zeroPos);
				// consider adding a check to see which is closer
			}
			else
			{
				// linear interpolation of the points this particular iteration time
				// falls between
#if 0
				ROS_INFO_STREAM("prof_pts[" << slot <<"]["<<end<<"] setpoint:" << endp.setpoint <<
						" fTerm:" << endp.fTerm);
				ROS_INFO_STREAM("prof_pts[" << slot <<"]["<<end-1<<"] setpoint:" << endpm1.setpoint <<
						" fTerm:" << endpm1.fTerm);
#endif

				const double time_percent = (time_since_start - prof_times[slot][end-1]) / (prof_times[slot][end] - prof_times[slot][end-1]);
				const double setpoint = endpm1.setpoint + (endp.setpoint - endpm1.setpoint) * time_percent;

				const double fTerm = endpm1.fTerm + (endp.fTerm - endpm1.fTerm) * time_percent;
				custom_profile_set_talon(endp.mode, setpoint, fTerm, joint_id, endp.pidSlot, endpm1.zeroPos);
			}
		}
	}
	else
	{
		ps.outOfPoints = false;
	}

	// Update talon profile status
	ps.remainingPoints.resize(prof_pts.size());

	for(size_t i = 0; i < prof_pts.size(); i++)
	{
		if(i == static_cast<size_t>(ps.slotRunning))
		{
			ps.remainingPoints[i] = tc.getCustomProfileCount(i) - cps.points_run_;
			if(tc.getCustomProfileTimeCount(i) > 0)
			{
				ps.remainingTime = tc.getCustomProfileEndTime(i) - (ros::Time::now().toSec() - cps.time_start_);
			}
			else
			{
				ps.remainingTime = 0.0;
			}
		}
		else
		{
			ps.remainingPoints[i] = tc.getCustomProfileCount(i);
		}
	}

	ps.running = run;
	ts.setCustomProfileStatus(ps);
}

void FRCRobotInterface::reset()
{
}

void FRCRobotInterface::printState()
{
	// WARNING: THIS IS NOT REALTIME SAFE
	// FOR DEBUGGING ONLY, USE AT YOUR OWN ROBOT's RISK!
	ROS_INFO_STREAM_THROTTLE(1,
							 std::endl << "State" <<
							 std::endl << printStateHelper());
}

std::string FRCRobotInterface::printStateHelper()
{
	std::stringstream ss;
	std::cout.precision(15);

	ss << "    CAN ID       position        velocity        effort" << std::endl;
	for (std::size_t i = 0; i < num_can_ctre_mcs_; ++i)
	{
		ss << "j" << i << ":    " ;
		ss << talon_state_[i].getCANID() << "\t ";
		ss << std::fixed << talon_state_[i].getPosition() << "\t ";
		ss << std::fixed << talon_state_[i].getSpeed() << "\t ";
		ss << std::fixed << talon_state_[i].getOutputVoltage() << std::endl;
	}
	return ss.str();
}

std::string FRCRobotInterface::printCommandHelper()
{
	std::stringstream ss;
	std::cout.precision(15);
	ss << "    setpoint" << std::endl;
	for (std::size_t i = 0; i < num_can_ctre_mcs_; ++i)
		ss << "j" << i << ": " << std::fixed << talon_command_[i].get() << std::endl;
	return ss.str();
}

void FRCRobotInterface::loadURDF(ros::NodeHandle &/*nh*/, std::string /*param_name*/)
{
	return;
#if 0
	std::string urdf_string;
	urdf_model_ = new urdf::Model();

	// search and wait for robot_description on param server
	while (urdf_string.empty() && ros::ok())
	{
		std::string search_param_name;
		if (nh.searchParam(param_name, search_param_name))
		{
			ROS_INFO_STREAM_NAMED(name_, "Waiting for model URDF on the ROS param server at location: " <<
								  nh.getNamespace() << search_param_name);
			nh.getParam(search_param_name, urdf_string);
		}
		else
		{
			ROS_INFO_STREAM_NAMED(name_, "Waiting for model URDF on the ROS param server at location: " <<
								  nh.getNamespace() << param_name);
			nh.getParam(param_name, urdf_string);
		}

		usleep(100000);
	}

	if (!urdf_model_->initString(urdf_string))
		ROS_ERROR_STREAM_NAMED(name_, "Unable to load URDF model");
	else
		ROS_DEBUG_STREAM_NAMED(name_, "Received URDF from param server");
#endif
}

}  // namespace
