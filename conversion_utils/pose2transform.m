function T = pose2transform(P)

T = rosmessage('geometry_msgs/Transform');
T.Translation.X = P.Position.X;
T.Translation.Y = P.Position.Y;
T.Translation.Z = P.Position.Z;
T.Rotation.W = P.Orientation.W;
T.Rotation.X = P.Orientation.X;
T.Rotation.Y = P.Orientation.Y;
T.Rotation.Z = P.Orientation.Z;

end