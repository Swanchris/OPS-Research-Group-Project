% MAIN SCRIPT FOR TECHNIQUES IN OPERATIONS RESEARCH GROUP PROJECT
% MEMBERS: Chris Swan, Dominic Yew, Greta Di Lorenzo, Mark O'Brien


numSensors = 1000   % Number of sensors we want to test with

fieldSize = 100     % Dimensions of the size of the field we are dealing with for uniformly distributed sensors 
                    % *ASSUMING SQUARE FIELD*
lambda = 50         % Parameter for Poisson distribution of sensors     

X_Uniform = []      % Matrix containing all (x,y) coordinates of our sensors (For Uniform distribution of sensors)
X_Poisson = []      % Matrix containing all (x,y) coordinates of our sensors (For Poisson distribution of sensors)

for i = 1:numSensors 
    % random generation of sensor coordinates following Uniform distribution 
    x_unif = [random('Uniform', -fieldSize, fieldSize), random('Uniform', -fieldSize, fieldSize)]
    X_Uniform = [X_Uniform; x_unif]
    
    % random generation of sensor coordinates following Poisson distribution
    x_pois = [random('Poisson', lambda), random('Poisson', lambda)]    
    X_Poisson = [X_Poisson; x_pois]
    
% ENTER CODE HERE
        
