% listen on a topic for messages

% initialize ROS

try
    rosshutdown;
    rosinit;
catch
    disp('Something went wrong initializing ROS!');
end

%% listen on a topic for messages

global pose
pose = rosmessage('geometry_msgs/Pose');

topicname = 'wall_grasp_init_ee_pose';
callback = @assignGlobalPose;
sub = rossubscriber(topicname,'geometry_msgs/Pose',callback);

%% ask for an empty service

client = rossvcclient('/get_init_transformation');
response = call(client);

disp('done!');
