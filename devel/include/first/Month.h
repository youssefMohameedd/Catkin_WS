// Generated by gencpp from file first/Month.msg
// DO NOT EDIT!


#ifndef FIRST_MESSAGE_MONTH_H
#define FIRST_MESSAGE_MONTH_H

#include <ros/service_traits.h>


#include <first/MonthRequest.h>
#include <first/MonthResponse.h>


namespace first
{

struct Month
{

typedef MonthRequest Request;
typedef MonthResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Month
} // namespace first


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::first::Month > {
  static const char* value()
  {
    return "1278061dd68c53a50ae17a40e29b2734";
  }

  static const char* value(const ::first::Month&) { return value(); }
};

template<>
struct DataType< ::first::Month > {
  static const char* value()
  {
    return "first/Month";
  }

  static const char* value(const ::first::Month&) { return value(); }
};


// service_traits::MD5Sum< ::first::MonthRequest> should match
// service_traits::MD5Sum< ::first::Month >
template<>
struct MD5Sum< ::first::MonthRequest>
{
  static const char* value()
  {
    return MD5Sum< ::first::Month >::value();
  }
  static const char* value(const ::first::MonthRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::first::MonthRequest> should match
// service_traits::DataType< ::first::Month >
template<>
struct DataType< ::first::MonthRequest>
{
  static const char* value()
  {
    return DataType< ::first::Month >::value();
  }
  static const char* value(const ::first::MonthRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::first::MonthResponse> should match
// service_traits::MD5Sum< ::first::Month >
template<>
struct MD5Sum< ::first::MonthResponse>
{
  static const char* value()
  {
    return MD5Sum< ::first::Month >::value();
  }
  static const char* value(const ::first::MonthResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::first::MonthResponse> should match
// service_traits::DataType< ::first::Month >
template<>
struct DataType< ::first::MonthResponse>
{
  static const char* value()
  {
    return DataType< ::first::Month >::value();
  }
  static const char* value(const ::first::MonthResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FIRST_MESSAGE_MONTH_H