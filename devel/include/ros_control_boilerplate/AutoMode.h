// Generated by gencpp from file ros_control_boilerplate/AutoMode.msg
// DO NOT EDIT!


#ifndef ROS_CONTROL_BOILERPLATE_MESSAGE_AUTOMODE_H
#define ROS_CONTROL_BOILERPLATE_MESSAGE_AUTOMODE_H


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
struct AutoMode_
{
  typedef AutoMode_<ContainerAllocator> Type;

  AutoMode_()
    : header()
    , mode()
    , delays()
    , position(0)  {
    }
  AutoMode_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , mode(_alloc)
    , delays(_alloc)
    , position(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _mode_type;
  _mode_type mode;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _delays_type;
  _delays_type delays;

   typedef int32_t _position_type;
  _position_type position;





  typedef boost::shared_ptr< ::ros_control_boilerplate::AutoMode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_control_boilerplate::AutoMode_<ContainerAllocator> const> ConstPtr;

}; // struct AutoMode_

typedef ::ros_control_boilerplate::AutoMode_<std::allocator<void> > AutoMode;

typedef boost::shared_ptr< ::ros_control_boilerplate::AutoMode > AutoModePtr;
typedef boost::shared_ptr< ::ros_control_boilerplate::AutoMode const> AutoModeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_control_boilerplate::AutoMode_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_control_boilerplate::AutoMode_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_control_boilerplate::AutoMode_<ContainerAllocator1> & lhs, const ::ros_control_boilerplate::AutoMode_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.mode == rhs.mode &&
    lhs.delays == rhs.delays &&
    lhs.position == rhs.position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_control_boilerplate::AutoMode_<ContainerAllocator1> & lhs, const ::ros_control_boilerplate::AutoMode_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_control_boilerplate

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ros_control_boilerplate::AutoMode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_control_boilerplate::AutoMode_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_control_boilerplate::AutoMode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_control_boilerplate::AutoMode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_control_boilerplate::AutoMode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_control_boilerplate::AutoMode_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_control_boilerplate::AutoMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9d4724fa280e34f6f045b31bdcf1105d";
  }

  static const char* value(const ::ros_control_boilerplate::AutoMode_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9d4724fa280e34f6ULL;
  static const uint64_t static_value2 = 0xf045b31bdcf1105dULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_control_boilerplate::AutoMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_control_boilerplate/AutoMode";
  }

  static const char* value(const ::ros_control_boilerplate::AutoMode_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_control_boilerplate::AutoMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"int32[] mode\n"
"float64[] delays\n"
"int32 position\n"
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

  static const char* value(const ::ros_control_boilerplate::AutoMode_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_control_boilerplate::AutoMode_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.mode);
      stream.next(m.delays);
      stream.next(m.position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AutoMode_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_control_boilerplate::AutoMode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_control_boilerplate::AutoMode_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "mode[]" << std::endl;
    for (size_t i = 0; i < v.mode.size(); ++i)
    {
      s << indent << "  mode[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.mode[i]);
    }
    s << indent << "delays[]" << std::endl;
    for (size_t i = 0; i < v.delays.size(); ++i)
    {
      s << indent << "  delays[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.delays[i]);
    }
    s << indent << "position: ";
    Printer<int32_t>::stream(s, indent + "  ", v.position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_CONTROL_BOILERPLATE_MESSAGE_AUTOMODE_H
