Examples
=====================================

Get a pose from ROS
-------------------------------------

[This](assingGlobalPose) example shows how to receive a `geometry_msgs/Pose` from a ROS node on demand, but without using custom services.
Instead, it relies on a "trigger" empty service `'/get_init_transformation'` while listening on a topic for the pose being published.
