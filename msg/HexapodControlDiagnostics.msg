builtin_interfaces/Time timestamp           # timestamp
std_msgs/String current_control_manager_mode    # walk mode || free leg mode
std_msgs/String active_leg_tracker              # gait tracker || null tracker || on off tracker
string active_gait_type                         # wave || ripple || tripod
std_msgs/String active_joint_controller         # wich joint controller is being used? position or trajectory
std_msgs/Bool admittance_controller             # is admittance control actived?
std_msgs/Bool inclination_controller            # is inclination control actived?
std_msgs/Float64[] foots_position_error         # array with all the foot positions errors 
std_msgs/Float64 highest_foot_position_error    # highest foot position error
std_msgs/Float64 trackers_error_admitted        # admitted foot position error
float64 gait_size_drag                          # size of the robot step
laser_msgs/PointArray foots_positions_reference # array with the positions reference for all foots
laser_msgs/PointArray foots_positions_state     # array with the actual positions of all foots
laser_msgs/PointArray foots_force_contact_state # array with the contact force of all foots
laser_msgs/PointArray foots_speed_state         # array with the speed of all foots
