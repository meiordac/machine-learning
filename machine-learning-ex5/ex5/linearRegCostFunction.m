function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

s_theta= theta(2:size(theta));
theta_reg = [0;s_theta];
h=theta(1) + (theta_reg'*X')';

J=1/(2*m) * (sum((h-y).^2)) + lambda/(2*m) * sum(theta_reg.^2);
grad = (1/m)*(X'*(h-y)+lambda*theta_reg);

% =========================================================================

grad = grad(:);

end
