function [x,fval,exitflag,output] = untitled(exi,cvi,csi, ep, ey)
%% This is an auto generated MATLAB file from Optimization Tool.
rangex = [exi; cvi; csi];
%% Start with the default options
options = optimoptions('simulannealbnd');
%% Modify options setting
options = optimoptions(options,'Display', 'off');
options = optimoptions(options,'HybridInterval', 'end');
options = optimoptions(options,'PlotFcn', { @saplotbestf });
[x,fval,exitflag,output] = ...
simulannealbnd(@(x) countP3(x(1), x(2), x(3), p, x),rangex,options);
end
