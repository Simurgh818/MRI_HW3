% BMED 6210: MRI Homework 3
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright (C) 2022  Sina Dabiri
% sdabiri@emory.edu
% 
% This program is free software; you can redistribute it and/or modify it
% under the terms of the GNU General Public License as published by the
% Free Software Foundation; either version 2 of the License, or (at your
% option) any later version.
% This program is distributed in the hope that it will be useful, but
% WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
% Public License for more details.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
alpha = 90;
T1 = [260, 780, 920, 3000];
time = 0:0.01:20;

for p = 1:length(T1)
    M_z = zeros(1, length(time));
    M_z(1) = -sqrt(2)/2;
    for t = 2:length(time)
       M_z(t) =  M_z(1)- M_z(1)*(- sqrt(2)/2*exp(-t/T1(p)));
       
    end
    hold on
    plot(time, M_z);
    xlabel("time (s)");
    ylabel("Mz");
end
legend(["Fat", "WM", "GM", "CSF"])
hold off
