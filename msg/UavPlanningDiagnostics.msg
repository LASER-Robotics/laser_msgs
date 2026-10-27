uint8 IDLE=0
uint8 GENERATING=1
uint8 TRACKING=2
uint8 COMPLETED=3
uint8 ABORTED=4
uint8 FAILED=5

std_msgs/Header header
uint64 flight_id
uint64 mission_id
builtin_interfaces/Time start_time
string planner
uint8 state
uint32 waypoint_count
laser_msgs/PoseWithHeading goal
string detail
float64 planning_duration_ms
float64 reference_period_ms
