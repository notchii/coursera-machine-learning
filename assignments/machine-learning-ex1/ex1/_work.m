data = load('ex1data1.txt');
m = length(data);
X = [ones(m,1),data(:,1)];
y = data(:,2);
theta = zeros(2,1);

iterations = 1500;
alpha = 0.01;

i = 1;
J_theta = 0.0;
while i <= m,
    J_theta = J_theta + ((theta' * X(i,:)' - y(i,1))^2) / (2*m);
    i++;
end;
J_theta


    
