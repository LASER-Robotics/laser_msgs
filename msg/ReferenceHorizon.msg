# Publication stamp and common coordinate frame.
std_msgs/Header header
uint64 flight_id
uint64 mission_id
# Absolute trajectory origin and strictly increasing sample offsets in seconds.
builtin_interfaces/Time start_time
float64[] time_from_start
laser_msgs/ReferenceState[] reference_horizon
# Only a final stationary reference may remain valid after the sample window ends.
bool terminal
