std_msgs/Header header                          # header
bool is_fly                                     # is the drone flying? 
bool have_goal                                  # does the drone have a purpose?
float64 control_iteration_duration_ms
float64 current_norm_speed                      # the current drone norm speed estimated
laser_msgs/ReferenceState last_planner_waypoint # previous waypoint 
laser_msgs/MotorSpeed last_control_input        # previous control input
