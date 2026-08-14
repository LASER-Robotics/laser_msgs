string name # sensor name

bool is_active # indicates whether the sensor is considered active

bool has_timeout # indicates whether the sensor has exceeded its timeout

uint32 buffer_size # number of messages currently in the buffer for this sensor

builtin_interfaces/Time last_message_stamp # timestamp of the last message received from this sensor

float64 time_since_last_message # time in seconds since the last message received
