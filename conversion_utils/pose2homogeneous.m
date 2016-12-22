function H = pose2homogeneous(P)

H = quat2tform([P.Orientation.W ...
                P.Orientation.X ...
                P.Orientation.Y ...
                P.Orientation.Z]);
H(1,4) = P.Position.X;
H(2,4) = P.Position.Y;
H(3,4) = P.Position.Z;

end