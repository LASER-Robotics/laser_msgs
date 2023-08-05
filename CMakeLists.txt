cmake_minimum_required(VERSION 3.0.2)
project(laser_msgs)

find_package(catkin REQUIRED COMPONENTS
    message_generation
    std_msgs
    geometry_msgs
)

add_message_files(
  FILES
  BoolArray.msg
  Angles.msg
  HexapodStatus.msg
  ObstacleData.msg
  ObstaclePerception.msg
  BoolArray.msg
)

add_service_files(
  FILES
  FeetPositions.srv
  LegsActuatorsAngles.srv
  AttachOrDetach.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime
)

include_directories(
 ${catkin_INCLUDE_DIRS}
)
