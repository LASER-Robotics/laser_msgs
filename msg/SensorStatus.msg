# Descrição do estado de um único sensor para fins de diagnóstico.

# Nome do sensor (ex: "px4_odometry", "imu")
string name

# Indica se o sensor está a ser considerado ativo (recebeu mensagens recentemente)
bool is_active

# Indica se o sensor excedeu o seu tempo limite (timeout)
bool has_timeout

# Número de mensagens atualmente no buffer para este sensor
uint32 buffer_size

# Timestamp da última mensagem recebida deste sensor
builtin_interfaces/Time last_message_stamp

# Tempo em segundos desde a última mensagem recebida
float64 time_since_last_message