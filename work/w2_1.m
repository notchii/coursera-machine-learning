theta = [1;1;1];
x = [1;2;3];
n = 2;

% Non-vectorized
prediction = 0;
for j = 1:n+1;
  prediction= prediction + theta(j) * x(j)
end;

% vectorized
prediction = 0;
prediction = theta' * x
