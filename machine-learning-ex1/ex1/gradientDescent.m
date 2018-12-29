function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
d=length(theta);
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    for i=1:d
    temp(i)=theta(i)-(alpha*sum((((X*theta)-y)'*X(:,i))./m));
    end
  J_history(iter) = computeCostMulti(X, y, theta);
    for k=1:d
    theta(k)=temp(k);
end

    % ============================================================

    % Save the cost J in every iteration    
    

end

end
