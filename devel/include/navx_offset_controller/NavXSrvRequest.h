// Generated by gencpp from file navx_offset_controller/NavXSrvRequest.msg
// DO NOT EDIT!


#ifndef NAVX_OFFSET_CONTROLLER_MESSAGE_NAVXSRVREQUEST_H
#define NAVX_OFFSET_CONTROLLER_MESSAGE_NAVXSRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace navx_offset_controller
{
template <class ContainerAllocator>
struct NavXSrvRequest_
{
  typedef NavXSrvRequest_<ContainerAllocator> Type;

  NavXSrvRequest_()
    : value(0.0)  {
    }
  NavXSrvRequest_(const ContainerAllocator& _alloc)
    : value(0.0)  {
  (void)_alloc;
    }



   typedef double _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct NavXSrvRequest_

typedef ::navx_offset_controller::NavXSrvRequest_<std::allocator<void> > NavXSrvRequest;

typedef boost::shared_ptr< ::navx_offset_controller::NavXSrvRequest > NavXSrvRequestPtr;
typedef boost::shared_ptr< ::navx_offset_controller::NavXSrvRequest const> NavXSrvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator1> & lhs, const ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator2> & rhs)
{
  return lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator1> & lhs, const ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace navx_offset_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1b1594d2b74931ef8fe7be8e2d594455";
  }

  static const char* value(const ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1b1594d2b74931efULL;
  static const uint64_t static_value2 = 0x8fe7be8e2d594455ULL;
};

template<class ContainerAllocator>
struct DataType< ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "navx_offset_controller/NavXSrvRequest";
  }

  static const char* value(const ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 value\n"
;
  }

  static const char* value(const ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavXSrvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::navx_offset_controller::NavXSrvRequest_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<double>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAVX_OFFSET_CONTROLLER_MESSAGE_NAVXSRVREQUEST_H
