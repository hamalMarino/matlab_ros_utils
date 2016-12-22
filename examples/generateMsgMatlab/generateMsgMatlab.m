% prerequisites:
% - add robotics toolbox folders to matlab search path
% - install gradle (groovy based build system)

% examplePackages = fullfile(fileparts('~/Documents/MATLAB/SupportPackages/R2015b/roscustommsg/toolbox/robotics/supportpackages/roscustommsg/'), 'examples', 'packages');
examplePackages = fullfile(my_catkin_ws,'src/wg_planning');
userFolder = fullfile(pwd,'myPkg');
copyfile(examplePackages, userFolder)

folderpath = fullfile(pwd);
rosgenmsg(folderpath)