# LASER Messages

`laser_msgs` defines the ROS 2 messages and services shared by the LASER UAV System (LUS). Controllers, planners, hardware APIs and the terminal interface use these types to exchange references, telemetry and flight status.

This package generates interfaces at build time. It has no nodes or runtime parameters.

## Interfaces

### Flight commands and references

| Message | Purpose |
| --- | --- |
| `PoseWithHeading` | Position and heading for a navigation goal. Position is in metres and heading is in radians. |
| `TrajectoryPath` | Waypoint list, requested speed and whether to stop at each waypoint. |
| `ReferenceState` | Desired pose, velocities and individual thrust, with flags selecting which fields the controller should use. |
| `ReferenceHorizon` | Timed sequence of reference states, with a coordinate frame, flight ID and mission ID. |
| `AttitudeRatesAndThrust` | Body angular rates and normalized total thrust. |
| `MotorSpeed` | Motor values and a string identifying their units. Check `unit_of_measurement` before interpreting `data`. |
| `MotorSpeedStamped` | Motor values with a timestamp. |

For `ReferenceHorizon`, `header.stamp` is the publication time. Each sample occurs at `start_time + time_from_start[i]`; the offsets must increase strictly and match the number of reference states. A `terminal` horizon describes a stationary endpoint. The managers validate the timing, frame and flight identifiers before tracking it.

### Telemetry and diagnostics

| Message | Purpose |
| --- | --- |
| `ApiPx4Diagnostics` | Armed state, offboard state, preflight checks, satellite count and RF jamming information. The ArduPilot API also uses this type. |
| `UavControlDiagnostics` | Control timing, estimated mass, tracking metrics, references, predictions and the last control input. |
| `UavControlState` | Control readiness, commanded reference, horizon dimensions and current flight and mission IDs. |
| `UavPlanningDiagnostics` | Planner, mission state, goal, waypoint count and planning timing. States include idle, generating, tracking, completed, aborted and failed. |
| `EstimationManagerDiagnostics` | Estimator initialization, active odometry source and sensor status. |
| `SensorStatus` | Sensor availability, timeout, buffer size and last-message timing. |
| `Metrics` | Root mean square error and standard deviation. |

The package also includes `Float64Header`, point arrays, stamped point arrays and points paired with strings for timestamped data and annotations. See [msg/](msg/) for the field definitions.

### Services

| Service | Request | Response |
| --- | --- | --- |
| `SetString` | `data`: string value, such as an odometry source name. | `success` and `message`. |
| `ToggleOdom` | `odom_name` and `enable`: source to enable or disable. | `success` and `message`. |

Defining a service type does not create a service server. The node using it determines the service name and behavior.

## Build and use

From a ROS 2 workspace containing this package:

```bash
colcon build --packages-select laser_msgs
source install/setup.bash
ros2 interface show laser_msgs/msg/ReferenceHorizon
```

Add `<depend>laser_msgs</depend>` to the `package.xml` of a package that uses these interfaces. Rebuild dependent packages after changing a message or service definition.
