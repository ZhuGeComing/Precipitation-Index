function [x,fval,exitflag,output] = a(x0,lb,ub)
%% This is an auto generated MATLAB file from Optimization Tool.

%% Start with the default options
options = optimoptions('simulannealbnd');
%% Modify options setting
options = optimoptions(options,'Display', 'off');
options = optimoptions(options,'HybridInterval', 'end');
options = optimoptions(options,'PlotFcn', { @saplotbestf });
[x,fval,exitflag,output] = ...
simulannealbnd(@fitness,x0,lb,ub,options);
