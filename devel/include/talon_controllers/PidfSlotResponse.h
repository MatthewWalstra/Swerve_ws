// Generated by gencpp from file talon_controllers/PidfSlotResponse.msg
// DO NOT EDIT!


#ifndef TALON_CONTROLLERS_MESSAGE_PIDFSLOTRESPONSE_H
#define TALON_CONTROLLERS_MESSAGE_PIDFSLOTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace talon_controllers
{
template <class ContainerAllocator>
struct PidfSlotResponse_
{
  typedef PidfSlotResponse_<ContainerAllocator> Type;

  PidfSlotResponse_()
    {
    }
  PidfSlotResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::talon_controllers::PidfSlotResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::talon_controllers::PidfSlotResponse_<ContainerAllocator> const> ConstPtr;

}; // struct PidfSlotResponse_

typedef ::talon_controllers::PidfSlotResponse_<std::allocator<void> > PidfSlotResponse;

typedef boost::shared_ptr< ::talon_controllers::PidfSlotResponse > PidfSlotResponsePtr;
typedef boost::shared_ptr< ::talon_controllers::PidfSlotResponse const> PidfSlotResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::talon_controllers::PidfSlotResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::talon_controllers::PidfSlotResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace talon_controllers

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::talon_controllers::PidfSlotResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::talon_controllers::PidfSlotResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::talon_controllers::PidfSlotResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::talon_controllers::PidfSlotResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::talon_controllers::PidfSlotResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::talon_controllers::PidfSlotResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::talon_controllers::PidfSlotResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::talon_controllers::PidfSlotResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::talon_controllers::PidfSlotResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "talon_controllers/PidfSlotResponse";
  }

  static const char* value(const ::talon_controllers::PidfSlotResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::talon_controllers::PidfSlotResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::talon_controllers::PidfSlotResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::talon_controllers::PidfSlotResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PidfSlotResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::talon_controllers::PidfSlotResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::talon_controllers::PidfSlotResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // TALON_CONTROLLERS_MESSAGE_PIDFSLOTRESPONSE_H