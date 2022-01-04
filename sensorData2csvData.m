cd('/MATLAB Drive/MobileSensorData/')
info=dir('sensorlog_*');
numData=size(info,1);
names={info.name};
load(names{numData})
lat=Position.latitude;
lon=Position.longitude;
latlon=[lat,lon];
T = array2table(latlon);
T.Properties.VariableNames(1:2) = {'Latitude','Longitude'};
writetable(T,'latlon.csv')