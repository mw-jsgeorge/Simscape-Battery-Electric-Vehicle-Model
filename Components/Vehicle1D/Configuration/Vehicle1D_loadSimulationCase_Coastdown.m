function Vehicle1D_loadSimulationCase_Coastdown
%% Sets up simulation
% This function sets up the followings:
% - Simulation stop time
% - Input signals
% - Initial conditions
%
% Model must be loaded for this function to work.

% Copyright 2023 The MathWorks, Inc.

Vehicle1D_loadSimulationCase( ...
  CaseName = "Coastdown", ...
  ...
  ModelName = "Vehicle1D_harness_model", ...
  ...
  StopTime = 100, ...
  ...
  InputSystemPath = "/Inputs", ...
  ...
  BrakeForce_BlockName = "Brake force", ... N
  BrakeForce_DataPoints = [0 1 0], ...
  BrakeForce_DeltaT = 0.5, ...
  ...
  RoadGrade_BlockName = "Road grade", ... %
  RoadGrade_DataPoints = [ 0 1 0], ...
  RoadGrade_DeltaT = 0.5, ...
  ...
  AxleTorque_BlockName = "Axle torque", ... N*m
  AxleTorque_DataPoints = [0 1 0], ...
  AxleTorque_DeltaT = 0.5, ...
  ...
  GeartrainInertia_kg_m2 = 15*0.3^2, ...
  GeartrainDamping_Nm_per_rpm = 0.001, ...
  ...
  Initial_GeartrainInertiaSpd_rpm = 0, ...
  Initial_VehicleSpeed_kph = 50, ...
  ...
  DisplayMessage = true );

end  % function
