function P = transform2pose(T)

P = rosmessage('geometry_msgs/Pose');
P.Position.X = T.Translation.X;
P.Position.Y = T.Translation.Y;
P.Position.Z = T.Translation.Z;
P.Orientation.W = T.Rotation.W;
P.Orientation.X = T.Rotation.X;
P.Orientation.Y = T.Rotation.Y;
P.Orientation.Z = T.Rotation.Z;

end