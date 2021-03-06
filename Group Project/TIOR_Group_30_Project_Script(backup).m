% MAIN SCRIPT FOR TECHNIQUES IN OPERATIONS RESEARCH GROUP PROJECT
% MEMBERS: Chris Swan, Dominic Yew, Greta Di Lorenzo, Mark O'Brien


<<<<<<< Updated upstream:Group Project/TIOR_Group_30_Project_Script(backup).m
numSensors = 200;   % Number of sensors we want to test with

fieldSize = 100;     % Dimensions of the size of the field we are dealing with for uniformly distributed sensors 
                    % *ASSUMING SQUARE FIELD*
lambda = 500;         % Parameter for Poisson distribution of sensors     
=======
<<<<<<< HEAD
numSensors = 100;     % Number of sensors we want to test with

fieldSize = 1000;     % Dimensions of the size of the field we are dealing with for uniformly distributed sensors 
                      % *ASSUMING SQUARE FIELD*
%lambda = 50;         % Parameter for Poisson distribution of sensors    
mu = 0;               % Mean for normal distribution of sensors 
sigma = 100;          % St. Dev. for normal distribution of sensors  
=======
numSensors = 200;   % Number of sensors we want to test with

fieldSize = 100;     % Dimensions of the size of the field we are dealing with for uniformly distributed sensors 
                    % *ASSUMING SQUARE FIELD*
lambda = 500;         % Parameter for Poisson distribution of sensors     
>>>>>>> 1002aa0b671404aeb3c70fcd9ef4fcac69ae7ca8
>>>>>>> Stashed changes:Group Project/TIOR_Group_30_Project_Script.m

init_step = 0.1;      % Initial step size
epsilon = 0.000001;   % Algorithm termination threshold

X_Uniform = [];       % Matrix containing all (x1,x2) coordinates of our sensors (For Uniform distribution of sensors)
X_Poisson = [];       % Matrix containing all (x1,x2) coordinates of our sensors (For Poisson distribution of sensors)
X_Normal = [];        % Matrix containing all (x1,x2) coordinates of our sensors (For Normal distribution of sensors)

for i = 1:numSensors 
    % random generation of sensor coordinates following Uniform distribution 
    %x_unif = [random('Uniform', -fieldSize, fieldSize), random('Uniform', -fieldSize, fieldSize)];
    %X_Uniform = [X_Uniform; x_unif]
    
    % random generation of sensor coordinates following Poisson distribution
<<<<<<< Updated upstream:Group Project/TIOR_Group_30_Project_Script(backup).m
    x_pois = [random('Poisson', lambda), random('Poisson', lambda)]    
    X_Poisson = [X_Poisson; x_pois]
=======
<<<<<<< HEAD
    %x_pois = [random('Poisson', lambda), random('Poisson', lambda)]    
    %X_Poisson = [X_Poisson; x_pois]
    
    % random generation of sensor coordinates following Normal distribution
    x_norm = [random('Normal', mu, sigma), random('Normal', mu, sigma)];
    X_Normal = [X_Normal; x_norm]
=======
    x_pois = [random('Poisson', lambda), random('Poisson', lambda)]    
    X_Poisson = [X_Poisson; x_pois]
>>>>>>> 1002aa0b671404aeb3c70fcd9ef4fcac69ae7ca8
>>>>>>> Stashed changes:Group Project/TIOR_Group_30_Project_Script.m
end

S = [random('Uniform', -fieldSize, fieldSize), random('Uniform', -fieldSize, fieldSize)]
% randomly generate initial relay location

<<<<<<< Updated upstream:Group Project/TIOR_Group_30_Project_Script(backup).m
=======
<<<<<<< HEAD
% [s_list, norms] = Descent(S, X_Uniform, epsilon);
% disp(s_list);
% disp(norms);
% 
% X_Uniform_x1 = X_Uniform(:,1);
% X_Uniform_x2 = X_Uniform(:,2);
% s_list_x1 = s_list(:,1);
% s_list_y1 = s_list(:,2);
% plot(X_Uniform_x1, X_Uniform_x2, ".")

[s_list, norms] = Descent(S, X_Normal, epsilon);
disp(s_list);
disp(norms);

X_Normal_x1 = X_Normal(:,1);
X_Normal_x2 = X_Normal(:,2);
s_list_x1 = s_list(:,1);
s_list_y1 = s_list(:,2);

plot(X_Normal_x1, X_Normal_x2, ".")
=======
>>>>>>> Stashed changes:Group Project/TIOR_Group_30_Project_Script.m
%[s_list, norms] = Descent(S, X_Uniform, epsilon);
[s_list, norms] = Descent(S, X_Poisson, epsilon);
disp(s_list);
disp(norms);

%X_Uniform_x1 = X_Uniform(:,1);
%X_Uniform_x2 = X_Uniform(:,2);
X_Poisson_x1 = X_Poisson(:,1);
X_Poisson_x2 = X_Poisson(:,2);
s_list_x1 = s_list(:,1);
s_list_y1 = s_list(:,2);
plot(X_Poisson_x1, X_Poisson_x2, ".")
<<<<<<< Updated upstream:Group Project/TIOR_Group_30_Project_Script(backup).m
=======
>>>>>>> 1002aa0b671404aeb3c70fcd9ef4fcac69ae7ca8
>>>>>>> Stashed changes:Group Project/TIOR_Group_30_Project_Script.m
hold on
plot(s_list_x1, s_list_y1, "--xg");
hold off
