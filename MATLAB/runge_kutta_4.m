function y = runge_kutta_4(f, t0, y0, h, N)
    % Fourth-order Runge-Kutta method for solving ODEs
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
        k1 = f(t, y(i));
        k2 = f(t + h/2, y(i) + h*k1/2);
        k3 = f(t + h/2, y(i) + h*k2/2);
        k4 = f(t + h, y(i) + h*k3);
        y(i+1) = y(i) + h*(k1 + 2*k2 + 2*k3 + k4)/6;
    end
end

% Define the ODE and initial condition
function dy = f(t, y)
    dy = -2*t*y;
end
