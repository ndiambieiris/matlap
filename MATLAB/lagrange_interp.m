function y = lagrange_interp(X, F, x)
    n = length(X);
    y = 0;
    for i = 1:n
        L = 1;
        for j = 1:n
            if j ~= i
                L = L.*(x - X(j))./(X(i) - X(j));
            end
        end
        y = y + L.*F(i);
    end
end
