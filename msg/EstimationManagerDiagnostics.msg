std_msgs/Header header # default header with timestamp

string active_odometry_source # name of the odometry source used by EKF

bool is_initialized # estimator inicialized?

SensorStatus[] odometry_sources # list with the state of each odometry source
