std_msgs/Header header                          # header
bool is_fly                                     # is the drone flying? 
bool collision                                  # Imminent collision with other drones? 
bool have_goal                                  # does the drone have a purpose?
laser_msgs/Metrics metrics
float64 estimated_mass  
float64 control_iteration_duration_ms
float64 ocp_elapsed_time_ms
float64 current_norm_speed                      # the current drone norm speed estimated
laser_msgs/ReferenceState[] reference_horizon 
laser_msgs/MotorSpeed last_control_input        # previous control input
