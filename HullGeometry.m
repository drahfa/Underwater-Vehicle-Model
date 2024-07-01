% Define initial values from Table 1
a = 7.5;  % m
b = 37.5; % m
c = 19;   % m
d = 7.5;  % m
n = 2;
theta = 22 * pi/180; % Convert to radians

% Calculate total length L
L = a + b + c;

% Generate x-coordinates for plotting
x = linspace(0, L, 1000);

% Initialize y-coordinates
y = zeros(size(x));

% Equation 7: Bow linear function
bow_indices = x <= a;
y(bow_indices) = 0.5 * d * (1 - ((x(bow_indices) - a) / a).^2).^(1/n);

% Middle section (cylindrical)
middle_indices = (x > a) & (x <= a + b);
y(middle_indices) = 0.5 * d;

% Equation 8: Stern linear function
stern_indices = x > a + b;
x_stern = x(stern_indices) - (a + b);
y(stern_indices) = 0.5 * d - (1.45*d/c^2 - tan(theta)/c) * x_stern.^2 - ...
                   (d/c^3 - tan(theta)/(c^2)) * x_stern.^3;

% Plot the hull profile
figure;
plot(x, y, 'b-', 'LineWidth', 2);
hold on;
plot(x, -y, 'b-', 'LineWidth', 2);
axis equal;
title('Underwater Vehicle Hull Profile');
xlabel('Length (m)');
ylabel('Radius (m)');
grid on;

% Add annotations and lines
text(a/2, 0, 'a', 'HorizontalAlignment', 'center', 'VerticalAlignment', 'top');
text(a + b/2, 0, 'b', 'HorizontalAlignment', 'center', 'VerticalAlignment', 'top');
text(L - c/2, 0, 'c', 'HorizontalAlignment', 'center', 'VerticalAlignment', 'top');
text(L/2, 0.6*d, 'L', 'HorizontalAlignment', 'center');
text(L + 0.5, 0, 'x', 'HorizontalAlignment', 'left');
text(-0.5, 0.6*d, 'y', 'HorizontalAlignment', 'right');
text(-1, 0.5*d, '0.5d', 'HorizontalAlignment', 'right');
text(0, -0.1*d, 'O', 'HorizontalAlignment', 'left');

% Draw vertical lines
line([a, a], [-0.6*d, 0.6*d], 'Color', 'k', 'LineStyle', '--');
line([a+b, a+b], [-0.6*d, 0.6*d], 'Color', 'k', 'LineStyle', '--');

% Adjust axis
axis([-2, L+2, -0.6*d, 0.6*d]);

% Add text for bow and stern shape
text(a/2, 0.55*d, 'Bow shape', 'HorizontalAlignment', 'center');
text(L - c/2, 0.55*d, 'Stern shape', 'HorizontalAlignment', 'center');