A = magic(10);
x = [1:1:10];

v = zeros(10, 1);
for i = 1:10
  for j = 1:10
    v(i) = v(i) + A(i, j) * x(j);
  end
  v(i)
end
