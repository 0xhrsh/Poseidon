clear;clc;close all;
%%load(sampledata.txt)
data = load('sampledata.txt')
x=data(:,[1,2]); y=data(:,[3]);
plotData(X, y);
hold on;
xlabel(' Test 1')
ylabel('Microchip Test 2')
legend('y = 1', 'y = 0')
hold off;
X = mapFeature(X(:,1), X(:,2));

% Initialize fitting parameters
initial_theta = zeros(size(X, 2), 1);

%currently setting lambda to some random value (accuracy factors may vary with the change of lambda)
lambda = 1;

% Compute and display initial cost and gradient for regularized logistic
% regression
[cost, grad] = costFunctionReg(initial_theta, X, y, lambda);
fprintf('Cost at some random lambda (citation needed): %f\n', cost);
display(grad);