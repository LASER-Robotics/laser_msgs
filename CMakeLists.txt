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
  PointArrayStamped.msg
  PointWithAngle.msg
  PointWithAngleStamped.msg
  PointWithBoolArrayStamped.msg
  PointWithBool.msg
  PointWithString.msg
  PointWithStringArrayStamped.msg
  PolygonArrayStamped.msg
  ReadingVariance.msg
  BoolStamped.msg
  Rect.msg
  RectArrayStamped.msg
  StringArrayStamped.msg
)

add_service_files(
  FILES
  FeetPositions.srv
  LegsActuatorsAngles.srv
  AttachOrDetach.srv
  Kmeans.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime std_msgs geometry_msgs
)

include_directories(
 ${catkin_INCLUDE_DIRS}
)
