doPlot = 1;
dt = 15e-15;
TStop = 5000 * dt;
InitDist = 0.0;
Method = 'VE'; % VE -- verlot; FD -- Forward Difference

% Here the particle mass was changed so that it becomes a random value that
% is based on the existing atomic masses of silicon and argon by
% multiplying the mass by a random number between 0 and 1

Mass0 = 14 * C.am * rand; % No longer Silicon as the masses will be different
Mass1 = 100 * C.am * rand; % No longer Argon as the masses will be different
AtomSpacing = 0.5430710e-9;
LJSigma = AtomSpacing / 2^(1 / 6);
LJEpsilon = 1e-21;

PhiCutoff = 3 * AtomSpacing * 1.1;

T = 0;

AddRectAtomicArray(10, 10, 0, 0, 0, 0, 0, T, 0);

Size = 8*AtomSpacing;
Limits = [-Size +Size -Size +Size]; % square is good
PlDelt = 5 *dt;
MarkerSize = 10;
PlotFile = 'Block0.gif';
doPlotImage = 1;
PlotSize = [100, 100, 1049, 1049];
ScaleV = 1e-11;
ScaleF = 100;
