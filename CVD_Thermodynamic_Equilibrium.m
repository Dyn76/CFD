
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CVD Thermodynamic Equilibrium
% Dan Kotabish 
% VCS algorithm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear 
global species types;
species=["ZrCl4", "ZrC", "CH4", "H2", "Cl", "HCl"];
% types=["double", "double", "double", "double", "double", "double"];
for s = 1:length(species)
    types(s)="double";
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Enter thermodynamics data
R = 8.314/1000; % kJ/mole K
P = input('Enter Pressure in atm :'); %atm
T= input('Enter Temperature in Kelvin: '); %Kelvin
% iter = input('Enter number of Iterations: ');
% tol  = input('Enter the tolerance: ');
%% Import data from text file
% Script for importing data from the following text file:
%
%    filename: C:\Users\Dan\Desktop\Chemical thermodynamics project\matlab files\Chemical-Thermodynamics\ZrCText.txt
%
% Auto-generated by MATLAB on 15-Feb-2021 15:51:23

%% Set up the Import Options and import the data
clc
clear
opts = delimitedTextImportOptions("NumVariables", 7);

% Specify range and delimiter
opts.DataLines = [2, inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["Var1", "ZrCl4", "ZrC", "CH4", "H2", "Cl", "HCl"];
opts.SelectedVariableNames = ["ZrCl4", "ZrC", "CH4", "H2", "Cl", "HCl"];
opts.VariableTypes = ["string", "double", "double", "double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "skip";

% Specify variable properties
opts = setvaropts(opts, "Var1", "WhitespaceRule", "preserve");
opts = setvaropts(opts, "Var1", "EmptyFieldRule", "auto");

% Import the data
Abund = readtable("C:\Users\Dan\Desktop\Chemical thermodynamics project\matlab files\Chemical-Thermodynamics\ZrCText.txt", opts);


%% Clear temporary variables
clear opts
% Calualte stiohcometeric vectors from null space of formula matrix 
%abundance_Matrix
% if read text table A= A.Variables
A=Abund.Variables
N =null(A,'r')


% test conservation
% A*Z 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  intial chemical potentials 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%  nt =sum(moles);
%  mu = muReff + R*T*(log(moles/nt)); 
%  gibbs = (mu * Z) 

%  extRx =zeros(length(moles));


     
       
 



