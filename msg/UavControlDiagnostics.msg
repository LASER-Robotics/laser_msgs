std_msgs/Header header                          # header
bool is_fly                                     # is the drone flying? 
float64 current_norm_speed
laser_msgs/ReferenceState last_planner_waypoint # previous waypoint 
laser_msgs/MotorSpeed last_control_input        # previous control input
