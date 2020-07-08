/*********************************************************************
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2015, University of Colorado, Boulder
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
 *   * Neither the name of the Univ of CO, Boulder nor the names of its
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
   Desc:   Example ros_control hardware interface that performs a perfect control loop for
   simulation
*/

#pragma once

// ROS
#include <ros/ros.h>
#include <urdf/model.h>

// ROS Controls
#include <controller_manager/controller_manager.h>
#include <hardware_interface/joint_command_interface.h>
#include <hardware_interface/robot_hw.h>
#include <hardware_interface/imu_sensor_interface.h>
#include <talon_interface/talon_command_interface.h>

namespace ros_control_boilerplate
{

class CustomProfileState
{
	public:
		CustomProfileState()
			: time_start_(ros::Time::now().toSec())
			, iteration_count_(0)
			, points_run_(0)
	{
	}

	double time_start_;
	int iteration_count_;
	int points_run_;
	hardware_interface::CustomProfileStatus status_;
	std::vector<std::vector<hardware_interface::CustomProfilePoint>> saved_points_;
	std::vector<std::vector<double>> saved_times_;
};

/// \brief Hardware interface for a robot
class FRCRobotInterface : public hardware_interface::RobotHW
{
	public:
		/**
		 * \brief Constructor
		 * \param nh - Node handle for topics.
		 * \param urdf - optional pointer to a parsed robot model
		 */
		FRCRobotInterface(ros::NodeHandle &nh, urdf::Model *urdf_model = NULL);

		/** \brief Destructor */
		virtual ~FRCRobotInterface() {}

		/** \brief Initialize the hardware interface */
		virtual void init();

		/** \brief Read the state from the robot hardware. */
		virtual void read(ros::Duration &elapsed_time) = 0;

		/** \brief Write the command to the robot hardware. */
		virtual void write(ros::Duration &elapsed_time) = 0;

		/** \brief Set all members to default values */
		virtual void reset();

		/**
		 * \brief Check (in non-realtime) if given controllers could be started and stopped from the
		 * current state of the RobotHW
		 * with regard to necessary hardware interface switches. Start and stop list are disjoint.
		 * This is just a check, the actual switch is done in doSwitch()
		 */
		virtual bool canSwitch(const std::list<hardware_interface::ControllerInfo> &/*start_list*/,
							   const std::list<hardware_interface::ControllerInfo> &/*stop_list*/) const
		{
			return true;
		}

		/**
		 * \brief Perform (in non-realtime) all necessary hardware interface switches in order to start
		 * and stop the given controllers.
		 * Start and stop list are disjoint. The feasability was checked in canSwitch() beforehand.
		 */
		virtual void doSwitch(const std::list<hardware_interface::ControllerInfo> &/*start_list*/,
							  const std::list<hardware_interface::ControllerInfo> &/*stop_list*/)
		{
		}

		/** \brief Helper for debugging a joint's state */
		virtual void printState();
		std::string printStateHelper();

		/** \brief Helper for debugging a joint's command */
		std::string printCommandHelper();

	protected:
		/** \brief Get the URDF XML from the parameter server */
		virtual void loadURDF(ros::NodeHandle &nh, std::string param_name);

		// Short name of this class
		std::string name_;

		// Startup and shutdown of the internal node inside a roscpp program
		ros::NodeHandle nh_;

		// Hardware interfaces
		hardware_interface::JointStateInterface        joint_state_interface_;
		hardware_interface::TalonStateInterface        talon_state_interface_;
		
		hardware_interface::JointCommandInterface      joint_command_interface_;
		hardware_interface::PositionJointInterface     joint_position_interface_;
		hardware_interface::VelocityJointInterface     joint_velocity_interface_;
		hardware_interface::EffortJointInterface       joint_effort_interface_;
		hardware_interface::TalonCommandInterface      talon_command_interface_;

		hardware_interface::ImuSensorInterface         imu_interface_;

		std::vector<CustomProfileState> custom_profile_state_;

		void custom_profile_write(int joint_id);
		void custom_profile_set_talon(hardware_interface::TalonMode mode, double setpoint, double fTerm, int joint_id, int pidSlot, bool zeroPos);

		void readJointLocalParams(XmlRpc::XmlRpcValue joint_params,
								  const bool local,
								  const bool saw_local_keyword,
								  bool &local_update,
								  bool &local_hardware);

		// Configuration
		std::vector<std::string> can_ctre_mc_names_;
		std::vector<int>         can_ctre_mc_can_ids_;
		std::vector<bool>        can_ctre_mc_local_updates_;
		std::vector<bool>        can_ctre_mc_local_hardwares_;
		std::vector<bool>        can_ctre_mc_is_talon_srx_;
		std::size_t              num_can_ctre_mcs_;

		std::vector<std::string> rumble_names_;
		std::vector<int>         rumble_ports_;
		std::vector<int>         rumble_local_updates_;
		std::vector<int>         rumble_local_hardwares_;
		std::size_t              num_rumbles_;

		std::vector<std::string> navX_names_;
		std::vector<std::string> navX_frame_ids_;
		std::vector<int>         navX_ids_;
		std::vector<bool>        navX_locals_;

		std::size_t              num_navX_;

		std::vector<std::string> ready_signal_names_;
		std::vector<bool>        ready_signal_locals_;
		std::size_t              num_ready_signals_;

		std::vector<std::string> joystick_names_;
		std::vector<int>         joystick_ids_; // pretty sure this is montonic increasing by default?
		std::vector<bool>        joystick_locals_;
		std::size_t              num_joysticks_;

		std::string can_interface_;

		urdf::Model *urdf_model_;

		// Array holding master cached state of hardware
		// resources
		std::vector<hardware_interface::TalonHWState>  talon_state_;
		
		std::vector<double> rumble_state_; //No actual data
		std::vector<double> navX_state_;

		// Each entry in the vector is an array. That array holds
		// the data returned from one particular imu
		std::vector<std::array<double,4>> imu_orientations_; // x,y,z,w
		std::vector<std::array<double,9>> imu_orientation_covariances_; // [x,y,z] x [x,y,z]
		std::vector<std::array<double,3>> imu_angular_velocities_; //x,y,z
		std::vector<std::array<double,9>> imu_angular_velocity_covariances_;
		std::vector<std::array<double,3>> imu_linear_accelerations_; // x,y,z
		std::vector<std::array<double,9>> imu_linear_acceleration_covariances_;

		// Same as above, but for pending commands to be
		// written to the hardware
		std::vector<hardware_interface::TalonHWCommand>  talon_command_;
		std::vector<double> rumble_command_;
        std::vector<double> offset_navX_;

		std::vector<double> robot_ready_signals_;
		bool                robot_code_ready_;

};  // class

}  // namespace
