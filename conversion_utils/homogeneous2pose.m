function P = homogeneous2pose(H)

P = rosmessage('geometry_msgs/Pose');
P.Position.X = H(1,4);
P.Position.Y = H(2,4);
P.Position.Z = H(3,4);
H(1:3,4) = 0;

q = tform2quat(H);
P.Orientation.W = q(1);
P.Orientation.X = q(2);
P.Orientation.Y = q(3);
P.Orientation.Z = q(4);

end