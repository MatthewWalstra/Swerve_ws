// Generated by gencpp from file ros_control_boilerplate/AutoModeStatus.msg
// DO NOT EDIT!


#ifndef ROS_CONTROL_BOILERPLATE_MESSAGE_AUTOMODESTATUS_H
#define ROS_CONTROL_BOILERPLATE_MESSAGE_AUTOMODESTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace ros_control_boilerplate
{
template <class ContainerAllocator>
struct AutoModeStatus_
{
  typedef AutoModeStatus_<ContainerAllocator> Type;

  AutoModeStatus_()
    : header()
    , auto_mode_status()  {
    }
  AutoModeStatus_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , auto_mode_status(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _auto_mode_status_type;
  _auto_mode_status_type auto_mode_status;





  typedef boost::shared_ptr< ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator> const> ConstPtr;

}; // struct AutoModeStatus_

typedef ::ros_control_boilerplate::AutoModeStatus_<std::allocator<void> > AutoModeStatus;

typedef boost::shared_ptr< ::ros_control_boilerplate::AutoModeStatus > AutoModeStatusPtr;
typedef boost::shared_ptr< ::ros_control_boilerplate::AutoModeStatus const> AutoModeStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator1> & lhs, const ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.auto_mode_status == rhs.auto_mode_status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator1> & lhs, const ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_control_boilerplate

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a8966a54ec839560d333a091630a8057";
  }

  static const char* value(const ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa8966a54ec839560ULL;
  static const uint64_t static_value2 = 0xd333a091630a8057ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_control_boilerplate/AutoModeStatus";
  }

  static const char* value(const ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"bool[] auto_mode_status\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.auto_mode_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AutoModeStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_control_boilerplate::AutoModeStatus_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "auto_mode_status[]" << std::endl;
    for (size_t i = 0; i < v.auto_mode_status.size(); ++i)
    {
      s << indent << "  auto_mode_status[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.auto_mode_status[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_CONTROL_BOILERPLATE_MESSAGE_AUTOMODESTATUS_H