function root = newton_raphson(f, df, x0, epsilon)
    % NEWTON_RAPHSON Finds the root of a function using the Newton-Raphson method.
    %   ROOT = NEWTON_RAPHSON(F, DF, X0, EPSILON) finds the root of the function F with 
    %   derivative DF, starting from initial guess X0, using a stopping criterion of EPSILON.
    %
    %   Example:
    %       f = @(x) x^3 - 6*x^2 + 11*x - 6.10;
    %       df = @(x) 3*x^2 - 12*x + 11;
    %       root = newton_raphson(f, df, 0.5, 0.008);
    
    % Set the maximum number of iterations.
    maxIterations = 1000;
    
    % Initialize the iteration counter and the current estimate of the root.
    iter = 0;
    x = x0;
    
    % Iterate until the root is found or the maximum number of iterations is reached.
    while iter < maxIterations
        % Calculate the new estimate of the root using the Newton-Raphson formula.
        x = x - f(x)/df(x);
        
        % Check if the root has been found within the tolerance.
        if abs(f(x)) < epsilon
            break;
        end
        
        % Increment the iteration counter.
        iter = iter + 1;
    end
    
    % Return the root.
    root = x;
end