#pragma once

#include <hardware_interface/internal/hardware_resource_manager.h>
#include <state_handle/state_handle.h>

namespace hardware_interface
{

//holds match data
class MatchHWState
{
	public:
		MatchHWState(void) :
			match_time_remaining_(0),

			game_specific_data_(""),
			event_name_(""),

			alliance_color_(0),
			match_type_(0),
			driver_station_location_(0),
			match_number_(0),
			replay_number_(0),

			enabled_(true),
			disabled_(false),
			autonomous_(false),
			fms_attached_(false),
			ds_attached_(false),
			operator_control_(true),
			test_(false),

			battery_voltage_(0.0)
		{}

		//access and set
		double getMatchTimeRemaining(void) const		{return match_time_remaining_;}

		std::string getGameSpecificData(void) const	{return game_specific_data_;}
		std::string getEventName(void) const		{return event_name_;}

		int getAllianceColor(void) const		{return alliance_color_;}
		int getMatchType(void) const			{return match_type_;}
		int getDriverStationLocation(void) const	{return driver_station_location_;}
		int getMatchNumber(void) const			{return match_number_;}
		int getReplayNumber(void) const			{return replay_number_;}

		bool isEnabled(void) const			{return enabled_;}
		bool isDisabled(void) const			{return disabled_;}
		bool isAutonomous(void) const			{return autonomous_;}
		bool isFMSAttached(void) const			{return fms_attached_;}
		bool isDSAttached(void) const			{return ds_attached_;}
		bool isOperatorControl(void) const		{return operator_control_;}
		bool isTest(void) const				{return test_;}

		double getBatteryVoltage(void) const		{return battery_voltage_;}

		void setMatchTimeRemaining(double match_time_remaining)		{match_time_remaining_ = match_time_remaining;}

		void setGameSpecificData(std::string game_specific_data)	{game_specific_data_ = game_specific_data;}
		void setEventName(std::string event_name)			{event_name_ = event_name;}

		void setAllianceColor(int alliance_color)			{alliance_color_ = alliance_color;}
		void setMatchType(int match_type)				{match_type_ = match_type;}
		void setDriverStationLocation(int driver_station_location)	{driver_station_location_ = driver_station_location;}
		void setMatchNumber(int match_number)				{match_number_ = match_number;}
		void setReplayNumber(int replay_number)				{replay_number_ = replay_number;}

		void setEnabled(bool enabled)					{enabled_ = enabled;}
		void setDisabled(bool disabled)					{disabled_ = disabled;}
		void setAutonomous(bool autonomous)				{autonomous_ = autonomous;}
		void setFMSAttached(bool fms_attached)				{fms_attached_ = fms_attached;}
		void setDSAttached(bool ds_attached)				{ds_attached_ = ds_attached;}
		void setOperatorControl(bool operator_control)			{operator_control_ = operator_control;}
		void setTest(bool test)					{test_ = test;}

		void setBatteryVoltage(double battery_voltage)			{battery_voltage_ = battery_voltage;}
	private:

		double match_time_remaining_;

		std::string game_specific_data_;
		std::string event_name_;

		int alliance_color_;
		int match_type_;
		int driver_station_location_;
		int match_number_;
		int replay_number_;

		bool enabled_;
		bool disabled_;
		bool autonomous_;
		bool fms_attached_;
		bool ds_attached_;
		bool operator_control_;
		bool test_;

		double battery_voltage_;
};

typedef StateHandle<const MatchHWState> MatchStateHandle;
typedef StateHandle<MatchHWState> MatchStateWritableHandle;

class MatchStateInterface: public HardwareResourceManager<MatchStateHandle> {};
}
