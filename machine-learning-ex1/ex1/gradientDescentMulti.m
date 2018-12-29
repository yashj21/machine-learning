function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
nofeatures= size(X,2);
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

for i= 1:nofeatures
  temp(i,1)=theta(i,1)-alpha*sum((((X*theta)-y)'*X(:,i))./m);
end
    J_history(iter) = computeCostMulti(X, y, theta);
for k=1:nofeatures
  theta(k,1)=temp(k,1);
 end 









    % ============================================================

    % Save the cost J in every iteration    
 
end

end
