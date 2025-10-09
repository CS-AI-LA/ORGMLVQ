clc;close all;clear;

restoredefaultpath
addpath('gmlvq-v3-1\gmlvq-v3-1');
total_run = 10;
steps = 30;

%% Read Data
selected_Ind = 1;
all_names = {'Boston Housing','Wisconsin','Stock Domain','BankDomain (1)','Auto MPG',...
             'Abalone','Segmentation','Breast Tissue','Balance','Cleveland',...
             'Hayes-roth','Autos','Iris','New-thyroid','Wine','Yeast'};

[data,labels] = readMyData(all_names(selected_Ind));
all_lamb = [0,0.01,0.02,0.03,0.04,0.05,0.06,0.07,0.08,0.09,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1];
num_classes = length(unique(labels));

out = class_dist(labels);

for j = 1:num_classes
    AUC_lambda = [];
    for i=1:length(all_lamb)
        lamb = all_lamb(i);
        setGlobalx(lamb);
        gmlvq = GMLVQ.GMLVQ(data, labels, GMLVQ.Parameters('rocClass', j), steps); % fvec, lbl, parameters, totalsteps, prototypeLabels
        result = gmlvq.runValidation(total_run,10); % nRuns, percentage
        % result.plot();
        AUC_lambda(i) = -trapz(result.averageRun.validationPerf(end).fpr,result.averageRun.validationPerf(end).tpr);
    end
    [V,II] = max(AUC_lambda);
    AUC_class(j) = V;
    lambda_class(j) = all_lamb(II);

    lamb = all_lamb(II);
    setGlobalx(lamb);

    gmlvq = GMLVQ.GMLVQ(data, labels, GMLVQ.Parameters('rocClass', j), steps); % fvec, lbl, parameters, totalsteps, prototypeLabels
    result = gmlvq.runValidation(total_run,10); % nRuns, percentage

    for m=1:length(result.results)
        AUC_tm(j,m) = -trapz(result.finalFprs(m,:),result.finalTprs(m,:),2);
    end

end

clc;

fprintf('ORGMLVQ and Data set is: %s\n', all_names{selected_Ind}); 
MAUC_runs = mean(AUC_tm, 1);  
mean_MAUC = mean(MAUC_runs);
std_MAUC  = std(MAUC_runs);

fprintf('Mean MAUC over runs = %.4f\n', mean_MAUC);
fprintf('Std  MAUC over runs = %.4f\n', std_MAUC);

fprintf('Class distribution is: ');
fprintf('%d ', out);
fprintf('\n');

fprintf('Mean AUC of each class: ');
fprintf('%.4f ', mean(AUC_tm,2));
fprintf('\n');

fprintf('Std AUC of each class:  ');
fprintf('%.4f ', std(AUC_tm,0,2));
fprintf('\n');

