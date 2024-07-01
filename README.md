# Underwater Vehicle Hull Profile Visualization

This MATLAB code visualizes the hull profile of an underwater vehicle based on the model described in the paper "Optimum design of acoustic stealth shape of underwater vehicle model with conning tower" by Tang et al. (2023).

## Description

The code demonstrates the geometric description of an underwater vehicle hull as presented in the paper. It visualizes the hull profile, including the bow, cylindrical middle section, and stern, using the equations and parameters provided in the study.

## Features

- Implements the bow shape using Equation 7 from the paper
- Creates a cylindrical middle section
- Implements the stern shape using Equation 8 from the paper
- Visualizes the complete hull profile
- Adds labels and annotations as shown in Figure 3A of the paper

## Usage

1. Ensure you have MATLAB installed on your system.
2. Copy the code into a new MATLAB script file (e.g., `HullGeometry.m`).
3. Run the script in MATLAB.

The script will generate a plot showing the underwater vehicle hull profile based on the initial values and equations provided in the paper.

## Customization

You can modify the initial values in the code to see how they affect the hull shape:

```matlab
a = 7.5;  % Bow length (m)
b = 37.5; % Middle section length (m)
c = 15;   % Stern length (m)
d = 7.5;  % Hull diameter (m)
n = 2;    % Bow shape parameter
theta = 22 * pi/180; % Stern angle (radians)
```

## Reference

This code is based on the work presented in:

Tang, Y., Wang, X., Miao, X., Gao, S., Li, B., & Peng, Z. (2023). Optimum design of acoustic stealth shape of underwater vehicle model with conning tower. Frontiers in Physics, 11, 1105787. https://doi.org/10.3389/fphy.2023.1105787

## License

This code is provided for educational and research purposes. Please refer to the original paper for any usage restrictions or additional permissions.

## Copyright

Copyright © 2024 Ahmad Faisal Mohamad Ayob. All rights reserved.
