cmake_minimum_required(VERSION 3.8)
project(laser_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/BoolArray.msg"
  "msg/HexapodBehaviorsDiagnostics.msg"
  "msg/HexapodClosestWallPose.msg"
  "msg/HexapodControlDiagnostics.msg"
  "msg/LegsReferenceRequest.msg"
  "msg/PointArray.msg"
  "msg/PointArrayStamped.msg"
  "msg/PointWithString.msg"
  "msg/PointWithStringArrayStamped.msg"
  "msg/PlaneIntersection.msg"
  "msg/ReferenceState.msg"
  "msg/Rpy.msg"
  "msg/ThetaAngles.msg"
  "srv/SetString.srv"
  "srv/SetFloat64.srv"
  DEPENDENCIES std_msgs geometry_msgs
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
