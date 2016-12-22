function H = transform2homogeneous(T)

H = quat2tform([T.Rotation.W ...
                T.Rotation.X ...
                T.Rotation.Y ...
                T.Rotation.Z]);
H(1,4) = T.Translation.X;
H(2,4) = T.Translation.Y;
H(3,4) = T.Translation.Z;

end