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
   Desc:   Example ros_control hardware interface blank template for the FRCRobot
           For a more detailed simulation example, see sim_hw_interface.h
*/

#pragma once

#include <atomic>
#include <thread>

#include <ros_control_boilerplate/frc_robot_interface.h>
#include <ros_control_boilerplate/tracer.h>
#include <realtime_tools/realtime_publisher.h>

#include <std_msgs/Float64.h>
#include <sensor_msgs/Joy.h>

#include <ctre/phoenix/motorcontrol/can/TalonSRX.h>
#include <ctre/phoenix/motorcontrol/can/TalonFX.h>


namespace frcrobot_control
{
// Very simple code to communicate with the HAL. This recieves
// packets from the driver station and lets the field management
// know our robot is alive.

/// \brief Hardware interface for a robot
class FRCRobotHWInterface : public ros_control_boilerplate::FRCRobotInterface
{
	public:
		/**
		 * \brief Constructor
		 * \param nh - Node handle for topics.
		 */
		FRCRobotHWInterface(ros::NodeHandle &nh, urdf::Model *urdf_model = NULL);
		~FRCRobotHWInterface();

		/** \brief Initialize the hardware interface */
		virtual void init(void) override;

		/** \brief Read the state from the robot hardware. */
		virtual void read(ros::Duration &elapsed_time) override;

		/** \brief Write the command to the robot hardware. */
		virtual void write(ros::Duration &elapsed_time) override;

	private:
		void process_motion_profile_buffer_thread(double hz);

		/* Get conversion factor for position, velocity, and closed-loop stuff */

		double getConversionFactor(int encoder_ticks_per_rotation, hardware_interface::FeedbackDevice encoder_feedback, hardware_interface::TalonMode talon_mode);

		bool convertControlMode(const hardware_interface::TalonMode input_mode,
								ctre::phoenix::motorcontrol::ControlMode &output_mode);
		bool convertDemand1Type( const hardware_interface::DemandType input,
				ctre::phoenix::motorcontrol::DemandType &output);
		bool convertNeutralMode(const hardware_interface::NeutralMode input_mode,
								ctre::phoenix::motorcontrol::NeutralMode &output_mode);
		bool convertFeedbackDevice(
			const hardware_interface::FeedbackDevice input_fd,
			ctre::phoenix::motorcontrol::FeedbackDevice &output_fd);
		bool convertRemoteFeedbackDevice(
			const hardware_interface::RemoteFeedbackDevice input_fd,
			ctre::phoenix::motorcontrol::RemoteFeedbackDevice &output_fd);
		bool convertRemoteSensorSource(
				const hardware_interface::RemoteSensorSource input_rss,
				ctre::phoenix::motorcontrol::RemoteSensorSource &output_rss);
		bool convertLimitSwitchSource(
			const hardware_interface::LimitSwitchSource input_ls,
			ctre::phoenix::motorcontrol::LimitSwitchSource &output_ls);
		bool convertRemoteLimitSwitchSource(
			const hardware_interface::RemoteLimitSwitchSource input_ls,
			ctre::phoenix::motorcontrol::RemoteLimitSwitchSource &output_ls);
		bool convertLimitSwitchNormal(
			const hardware_interface::LimitSwitchNormal input_ls,
			ctre::phoenix::motorcontrol::LimitSwitchNormal &output_ls);
		bool convertVelocityMeasurementPeriod(
			const hardware_interface::VelocityMeasurementPeriod input_v_m_p,
			ctre::phoenix::motorcontrol::VelocityMeasPeriod &output_v_m_period);
		bool convertStatusFrame(const hardware_interface::StatusFrame input,
			ctre::phoenix::motorcontrol::StatusFrameEnhanced &output);
		bool convertControlFrame(const hardware_interface::ControlFrame input,
			ctre::phoenix::motorcontrol::ControlFrame &output);

		bool safeTalonCall(ctre::phoenix::ErrorCode error_code,
				const std::string &talon_method_name);


		//certain data will be read at a slower rate than the main loop, for computational efficiency
		//robot iteration calls - sending stuff to driver station
		double t_prev_robot_iteration_;
		double robot_iteration_hz_;

		double t_prev_match_data_read_;
		double match_data_read_hz_;

		double t_prev_robot_controller_read_;
		double robot_controller_read_hz_;

		std::vector<std::shared_ptr<ctre::phoenix::motorcontrol::IMotorController>> ctre_mcs_;

		// Maintain a separate read thread for each talon SRX
		std::vector<std::shared_ptr<std::mutex>> ctre_mc_read_state_mutexes_;
		std::vector<std::shared_ptr<hardware_interface::TalonHWState>> ctre_mc_read_thread_states_;
		std::vector<std::thread> ctre_mc_read_threads_;
		void ctre_mc_read_thread(std::shared_ptr<ctre::phoenix::motorcontrol::IMotorController> ctre_mc, std::shared_ptr<hardware_interface::TalonHWState> state, std::shared_ptr<std::mutex> mutex, std::unique_ptr<Tracer> tracer);
	
		std::thread motion_profile_thread_;
		std::vector<std::shared_ptr<std::mutex>> motion_profile_mutexes_;

		Tracer read_tracer_;
};  // class

}  // namespace

