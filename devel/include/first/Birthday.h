// Generated by gencpp from file first/Birthday.msg
// DO NOT EDIT!


#ifndef FIRST_MESSAGE_BIRTHDAY_H
#define FIRST_MESSAGE_BIRTHDAY_H

#include <ros/service_traits.h>


#include <first/BirthdayRequest.h>
#include <first/BirthdayResponse.h>


namespace first
{

struct Birthday
{

typedef BirthdayRequest Request;
typedef BirthdayResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Birthday
} // namespace first


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::first::Birthday > {
  static const char* value()
  {
    return "10865812b40adf763ff24279c924d0fc";
  }

  static const char* value(const ::first::Birthday&) { return value(); }
};

template<>
struct DataType< ::first::Birthday > {
  static const char* value()
  {
    return "first/Birthday";
  }

  static const char* value(const ::first::Birthday&) { return value(); }
};


// service_traits::MD5Sum< ::first::BirthdayRequest> should match
// service_traits::MD5Sum< ::first::Birthday >
template<>
struct MD5Sum< ::first::BirthdayRequest>
{
  static const char* value()
  {
    return MD5Sum< ::first::Birthday >::value();
  }
  static const char* value(const ::first::BirthdayRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::first::BirthdayRequest> should match
// service_traits::DataType< ::first::Birthday >
template<>
struct DataType< ::first::BirthdayRequest>
{
  static const char* value()
  {
    return DataType< ::first::Birthday >::value();
  }
  static const char* value(const ::first::BirthdayRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::first::BirthdayResponse> should match
// service_traits::MD5Sum< ::first::Birthday >
template<>
struct MD5Sum< ::first::BirthdayResponse>
{
  static const char* value()
  {
    return MD5Sum< ::first::Birthday >::value();
  }
  static const char* value(const ::first::BirthdayResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::first::BirthdayResponse> should match
// service_traits::DataType< ::first::Birthday >
template<>
struct DataType< ::first::BirthdayResponse>
{
  static const char* value()
  {
    return DataType< ::first::Birthday >::value();
  }
  static const char* value(const ::first::BirthdayResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FIRST_MESSAGE_BIRTHDAY_H
