# Mensagem de diagnóstico para o nó StateEstimator

# Cabeçalho padrão com timestamp
std_msgs/Header header

# Nome da fonte de odometria que está a ser ativamente usada pelo EKF
string active_odometry_source

# O EKF já foi inicializado?
bool is_initialized

# Lista com o estado de cada fonte de odometria
SensorStatus[] odometry_sources

# Estado do sensor IMU
SensorStatus imu_status