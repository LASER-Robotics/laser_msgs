# define what will be used for the reference
bool use_position
bool use_orientation
bool use_linear_velocity
bool use_angular_velocity
bool use_individual_thrust

# pose and twist of the reference
geometry_msgs/Pose pose
geometry_msgs/Twist twist
laser_msgs/MotorSpeed individual_thrust
