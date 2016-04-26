% Recuperation des donnees 
load readacc.mat;

accx = ax;
accy = ay;
accz = az;
datamask = mask;

cmax = 10;
column = 1;
 
    % Affichage des entrees
    Input(accx,accy,accz,datamask,column,cmax);
    
    %  Filtrage du signal (3 signaux x,y,z)
    [datOutx,datOuty,datOutz,dataOutMask] = filtre(accx,accy,accz,datamask);
    save output.mat datOutx datOuty datOutz datamask 
    %  Affichage du signal filtre (3 signaux x,y,z)
    Output(datOutx,datOuty,datOutz,dataOutMask,column,cmax);
    
    % Algorithme 
    dataAlgo = algorithme(datOutx,datOuty,datOutz,5,7) ;
    figure(2);
    subplot(2,1,1);
    plot(dataAlgo);
    subplot(2,1,2);
    plot(dataOutMask);
    
    
    
    
    
    
    