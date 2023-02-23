
function y = horner(coeffs, x, X)
    n = length(coeffs);
    y = coeffs(n);
    for i = n-1:-1:1
        y = y.*(x - X(i)) + coeffs(i);
    end
end