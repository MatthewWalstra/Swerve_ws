// Generated by gencpp from file ros_control_boilerplate/LineBreakSensorsRequest.msg
// DO NOT EDIT!


#ifndef ROS_CONTROL_BOILERPLATE_MESSAGE_LINEBREAKSENSORSREQUEST_H
#define ROS_CONTROL_BOILERPLATE_MESSAGE_LINEBREAKSENSORSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_control_boilerplate
{
template <class ContainerAllocator>
struct LineBreakSensorsRequest_
{
  typedef LineBreakSensorsRequest_<ContainerAllocator> Type;

  LineBreakSensorsRequest_()
    : j(0)
    , name()
    , value(false)  {
    }
  LineBreakSensorsRequest_(const ContainerAllocator& _alloc)
    : j(0)
    , name(_alloc)
    , value(false)  {
  (void)_alloc;
    }



   typedef uint64_t _j_type;
  _j_type j;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef uint8_t _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LineBreakSensorsRequest_

typedef ::ros_control_boilerplate::LineBreakSensorsRequest_<std::allocator<void> > LineBreakSensorsRequest;

typedef boost::shared_ptr< ::ros_control_boilerplate::LineBreakSensorsRequest > LineBreakSensorsRequestPtr;
typedef boost::shared_ptr< ::ros_control_boilerplate::LineBreakSensorsRequest const> LineBreakSensorsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator1> & lhs, const ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.j == rhs.j &&
    lhs.name == rhs.name &&
    lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator1> & lhs, const ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_control_boilerplate

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6ba4a11e97d96b717271b75f5e116646";
  }

  static const char* value(const ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6ba4a11e97d96b71ULL;
  static const uint64_t static_value2 = 0x7271b75f5e116646ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_control_boilerplate/LineBreakSensorsRequest";
  }

  static const char* value(const ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint64 j\n"
"string name\n"
"bool value\n"
;
  }

  static const char* value(const ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.j);
      stream.next(m.name);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LineBreakSensorsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_control_boilerplate::LineBreakSensorsRequest_<ContainerAllocator>& v)
  {
    s << indent << "j: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.j);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "value: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_CONTROL_BOILERPLATE_MESSAGE_LINEBREAKSENSORSREQUEST_H