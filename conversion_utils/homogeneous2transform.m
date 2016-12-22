function T = homogeneous2transform(H)

T = rosmessage('geometry_msgs/Transform');
T.Translation.X = H(1,4);
T.Translation.Y = H(2,4);
T.Translation.Z = H(3,4);
H(1:3,4) = 0;

q = tform2quat(H);
T.Rotation.W = q(1);
T.Rotation.X = q(2);
T.Rotation.Y = q(3);
T.Rotation.Z = q(4);

end