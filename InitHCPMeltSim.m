%Modified InitHCPBlob to just keep the main bulk of material.
%Then raised the temperature to see what happens.
%At 300 K the bulk seems to melt and become amorphous, with some particles 
%leaving as gas, then solidifies into smaller crystals.
doPlot = 1;
dt = 15e-15;
TStop = 1000 * dt;
InitDist = 0.05;
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

T = 300;

AddHCPAtomicBlob(10, 0, 0, 0, 0, 0, InitDist, T, 0);

Size = 15 * AtomSpacing;
Limits = [-Size +Size -Size +1.5*Size]; % square is good
PlDelt = 5 * dt;
MarkerSize = 4;
PlotFile = 'HCPBlob.gif';
doPlotImage = 1;
PlotSize = [100, 100, 1049, 1549];

ScaleV = .2e-11;
ScaleF = 20;