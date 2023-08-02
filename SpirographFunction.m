function [points] = SpirographFunction(p)
%% User Defined Parameters
k = p.k;                    % k = r/R
l = p.l;                    % l = d/R
EndAngle = p.EndAngle * pi; % [Radians]

%% Preset Parameters
R = 1;
resolution = 5000; 
theta = linspace(0,EndAngle,resolution);

%% Modelling the Spirograph
x = R * ( (1-k) * cos(theta) + l*k*cos((1-k)*theta/k) );
y = R * ( (1-k) * sin(theta) - l*k*sin((1-k)*theta/k) );

points(1,:) = x;
points(2,:) = y;
end

