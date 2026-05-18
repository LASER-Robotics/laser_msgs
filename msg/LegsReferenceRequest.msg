std_msgs/Bool[] requested_leg_to_move # the leg is requested to move?
std_msgs/String[] foot_state          # foot in stance or swing?
laser_msgs/PointArray reference       # array with the reference points to the leg
float64[] surface_beta                # surface inclination per leg [rad]: 0 = floor, pi/2 = wall

