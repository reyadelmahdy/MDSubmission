doPlot = 1;
dt = 5e-15;
TStop = 3000 * dt;
InitDist = 0.0;
Method = 'VE'; % VE -- verlot; FD -- Forward Difference

% Here the particle mass was changed so that it becomes a random value that
% is based on the existing atomic masses of silicon and argon by
% multiplying the mass by a random number between 0 and 1, Since the number
% is less than 1, the masses used for each case will always be less than the real masses of
% argon and silicon

Mass0 = 14 * C.am * rand; % No longer Silicon as the masses will be different
Mass1 = 100 * C.am * rand; % No longer Argon as the masses will be different

AtomSpacing = 0.5430710e-9;
LJSigma = AtomSpacing / 2^(1 / 6);
LJEpsilon = 1e-21;

PhiCutoff = 3 * AtomSpacing * 1.1;

T = 30;

AddRectAtomicArray(10, 10, 0, 0, 0, 0, 0, T, 0);
% vy0 = -sqrt(0.02*Ep/Mass1);
% AddRectAtomicArray(4,4,0,12*AtomSpacing,0,vy0,0,T,1);
Ep = 2;
AddParticleStream(5, 0.1, 10, -pi / 2, 1, Ep * C.q_0, 5);

Size = 10*AtomSpacing;
Limits = [-Size +Size -Size +Size]; % square is good
PlDelt = 5 * dt;

PlotFile = 'BlockSt.gif';
PlotPosOnly = 1;
doPlotImage = 0;
PlotSize = [100, 100, 1049, 1049];

ScaleV = .02e-11;
ScaleF = 10;
