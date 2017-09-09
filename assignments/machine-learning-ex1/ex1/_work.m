%% 2.2.3 Computing the cost J(theta)

data = load('ex1data1.txt');
m = length(data);
X = [ones(m,1),data(:,1)];
y = data(:,2);
theta = zeros(2,1);

iterations = 1500;
alpha = 0.01;

temp = X * theta - y;
J = ( temp' * temp ) / (2 * m);

%% My first answer (Using while loop)

%i = 1;
%while i <= m,
%    J = J + ((X(i,:) * theta - y(i,1))^2) / (2*m);
%    i++;
%end;
J

%% 2.2.4 Gradient descent
% function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

num_iters = iterations;
J_history = zeros(num_iters, 1);
    
for iter = 1:num_iters,

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % theta = theta - alpha * ( 1 / m ) * (X(i,:) * theta - y(i)) * X(:,2)';

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end
