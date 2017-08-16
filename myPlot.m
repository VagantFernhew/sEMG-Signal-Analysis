function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
first = find(y==1); second = find(y == 2);
third = find(y == 3); fourth = find(y == 4);
% Plot Examples
scatter3(X(first, 1), X(first, 2),X(first,3),'MarkerFaceColor','b');
scatter3(X(second, 1), X(second, 2),X(second,3),'MarkerFaceColor','g');
scatter3(X(third, 1), X(third, 2),X(third,3),'MarkerFaceColor','r');
scatter3(X(second, 1), X(second, 2),X(fourth,3),'MarkerFaceColor','y');
title('scatter plot for 4 hand Gestures using 3 features of EMG');
legend('fist','finger Spread','wave in','wave out','Location','northwest');

% =========================================================================


hold off;

end
