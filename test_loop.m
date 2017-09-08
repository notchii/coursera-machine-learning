% For Loop
y(1) = 1

for n = 1:6
    y(n+1) = y(n)-0.1*y(n)
end

% While Loop
amount(1) = 1000;
r = 0.08;
p = 1;
while amount(p)<2000
    amount(p+1) = amount(p)*(r+1);
    p = p+1;
end