function sendTF(pose,frameID,child_frameID)

global tftree
% check if tftree exists and is valid, otherwise recreate it and wait 1 sec
if(isempty(tftree) || ~tftree.isvalid)
    disp('Initializint tftree as this was not done before...');
    tftree = rostf;
    pause(1);
end

% fill the message
tfStampedMsg = rosmessage('geometry_msgs/TransformStamped');
tfStampedMsg.ChildFrameId = child_frameID;
tfStampedMsg.Header.FrameId = frameID;

tfStampedMsg.Transform = pose2transform(pose);

tfStampedMsg.Header.Stamp = rostime('now');

sendTransform(tftree, tfStampedMsg);

end
