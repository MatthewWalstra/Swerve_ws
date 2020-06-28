// Generated by gencpp from file imu_zero/ImuZeroAngleRequest.msg
// DO NOT EDIT!


#ifndef IMU_ZERO_MESSAGE_IMUZEROANGLEREQUEST_H
#define IMU_ZERO_MESSAGE_IMUZEROANGLEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace imu_zero
{
template <class ContainerAllocator>
struct ImuZeroAngleRequest_
{
  typedef ImuZeroAngleRequest_<ContainerAllocator> Type;

  ImuZeroAngleRequest_()
    : angle(0.0)  {
    }
  ImuZeroAngleRequest_(const ContainerAllocator& _alloc)
    : angle(0.0)  {
  (void)_alloc;
    }



   typedef double _angle_type;
  _angle_type angle;





  typedef boost::shared_ptr< ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ImuZeroAngleRequest_

typedef ::imu_zero::ImuZeroAngleRequest_<std::allocator<void> > ImuZeroAngleRequest;

typedef boost::shared_ptr< ::imu_zero::ImuZeroAngleRequest > ImuZeroAngleRequestPtr;
typedef boost::shared_ptr< ::imu_zero::ImuZeroAngleRequest const> ImuZeroAngleRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator1> & lhs, const ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator2> & rhs)
{
  return lhs.angle == rhs.angle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator1> & lhs, const ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace imu_zero

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4edb55038e2b888976a0c0c56935341c";
  }

  static const char* value(const ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4edb55038e2b8889ULL;
  static const uint64_t static_value2 = 0x76a0c0c56935341cULL;
};

template<class ContainerAllocator>
struct DataType< ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "imu_zero/ImuZeroAngleRequest";
  }

  static const char* value(const ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 angle\n"
;
  }

  static const char* value(const ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ImuZeroAngleRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::imu_zero::ImuZeroAngleRequest_<ContainerAllocator>& v)
  {
    s << indent << "angle: ";
    Printer<double>::stream(s, indent + "  ", v.angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMU_ZERO_MESSAGE_IMUZEROANGLEREQUEST_H
