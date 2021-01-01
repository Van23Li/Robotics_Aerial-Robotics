function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters

u = 0;


% FILL IN YOUR CODE HERE
Kv = 25;
Kp = 200;
u = params.mass * (Kv * (s_des(2) - s(2)) + Kp * (s_des(1) - s(1)) + params.gravity);
u = max(params.u_min, u);
u = min(params.u_max, u);

end

