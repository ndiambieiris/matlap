function p = newton_interp(x, f, xi)
    % NEWTON_INTERP Evaluates the Newton interpolating polynomial at a given point.
    %   P = NEWTON_INTERP(X, F, XI) returns the value of the Newton interpolating polynomial at
    %   point XI, based on the given data points X and function values F.
    %
    %   Example:
    %       x = [1 2 2.5 3 4 5];
    %       f = [0 5 6.5 7 3 1];
    %       xi = 3.5;
    %       p = newton_interp(x, f, xi);
    
    % Initialize the coefficients of the polynomial.
    n = length(x);
    c = f;
    
    % Compute the coefficients using the divided differences method.
    for j = 2:n
        for i = n:-1:j
            c(i) = (c(i) - c(i-1)) / (x(i) - x(i-j+1));
        end
    end
    
    % Evaluate the polynomial at the given point.
    p = c(n);
    for i = n-1:-1:1
        p = p * (xi - x(i)) + c(i);
    end
end