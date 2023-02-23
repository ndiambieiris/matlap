% Define the ODE and initial condition
function dy = f(x, y)
    dy = (1 + 4*x)*sqrt(y);
end

% Define the time interval and time step
t0 = 0;
tf = 1;
h = 0.25;
N = (tf - t0)/h;

% Define the function to solve the ODE using Euler's method
function y = euler(f, t0, y0, h, N)
    % Euler's method for solving ODEs
    %
    % Inputs:
    % - f: function handle for the ODE (y' = f(t,y))
    % - t0: initial time
    % - y0: initial value of y
    % - h: time step
    % - N: number of time steps
    %
    % Output:
    % - y: solution array (size N+1 x 1)
    
    y = zeros(N+1, 1);
    y(1) = y0;
    
    for i = 1:N
        t = t0 + (i-1)*h;
        y(i+1) = y(i) + h*f(t, y(i));
    end
end
