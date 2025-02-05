
function [outputArg1,outputArg2] = EnthalpyEntropyChart(oneStaticT,oneStagnationT,twoStaticT,twoStagnationT)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

% Axis dimesnions and variables
temps = [oneStaticT, oneStagnationT, twoStaticT, twoStagnationT];
LowOM = floor(log(abs(min(temps)))./log(10));
HighOM = floor(log(abs(val))./log(base));
yAxisLow = (10 * LowOM) * (floor(min(temps)) / (10*LowOM));
yAxisHigh = (10 * HighOM) * (ceil(max(temps)) / (10*LowOM));
axis([0 entropyAxisSize yAxisLow yAxisHigh])

entropypadding = entropyAxisSize / 0.3;



% Isotherms
oneStaticIsotherm(2,:) = linspace(0, entropyAxisSize,(entropyAxisSize / 2));
oneStaticIsotherm(1,:) = oneStaticT;

oneStagIsotherm(2,:) = linspace(0, entropyAxisSize,(entropyAxisSize / 2));
oneStagIsotherm(1,:) = oneStagnationT;

twoStaticIsotherm(2,:) = linspace(0, entropyAxisSize,(entropyAxisSize / 2));
twoStaticIsotherm(1,:) = twoStaticT;

twoStagIsotherm(2,:) = linspace(0, entropyAxisSize,(entropyAxisSize / 2));
twoStagIsotherm(1,:) = twoStagnationT;


% Isobars
oneStaticIsobar(2,:) = linspace( (s1 - (entropypadding / 2 )), (s1 + ...
    (entropypadding / 2)),(entropyAxisSize / 2) );
oneStaticIsobar(1,:) = oneStaticIsobar(2,:) + (oneStaticT - s1);

oneStagIsobar(2,:) = linspace( (s1 - (entropypadding / 2 )), (s1 + ...
    (entropypadding / 2)),(entropyAxisSize / 2) );
oneStagIsobar(1,:) = oneStagIsobar(2,:) + (oneStagnationT - s1);

twoStaticIsobar(2,:) = linspace( (s2 - (entropypadding / 2)), (s2 + ...
    (entropypadding / 2)), (entropAxisSize / 2) );
twoStaticIsobar(1,:) = twoStaticIsobar(2,:) + (twoStaticT - s2);

twoStagIsobar(2,:) = linspace( (s2 - (entropypadding / 2)), (s2 + ...
    (entropypadding / 2)), (entropAxisSize / 2) );
twoStagIsobar(1,:) = twoStagIsobar(2,:) + (twoStagnationT - s2);

% T2a



end