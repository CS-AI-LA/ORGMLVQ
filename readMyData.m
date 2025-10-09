function [data,labels] = readMyData(name)

switch cell2mat(name)
    case 'BankDomain (1)'
        X = load("data\bank8FM.data");
        [data,labels] = bankData(X);
        % data = log(data + 1); % Log transform

    case 'Boston Housing'
        X = load("data\housing.ord");
        data = X(:,1:end-1);
        labels = X(:,end);
        % data = log(data + 1); % Log transform

    case 'Wisconsin'
        X = load("data\wpbc.ord");
        data = X(:,1:end-1);
        labels = X(:,end);
        % data = log(data + 1); % Log transform

    case 'Stock Domain'
        X = load("data\stock.ord");
        data = X(:,1:end-1);
        labels = X(:,end);
        % data = log(data + 1); % Log transform

    case 'Auto MPG'
        X = load("data\auto.data.ord");
        data = X(:,1:end-1);
        labels = X(:,end);
        % data = log(data + 1); % Log transform

    case 'Abalone'
        X = load("data\abalone.ord");
        data = X(:,1:end-1);
        labels = X(:,end);
        % data = log(data + 1); % Log transform

    case 'Segmentation'
        X = load('data\uci-segmentation-sampled.mat');
        data = X.fvec;
        labels = X.lbl;

    case 'Breast Tissue'
        X = load("data\BreastTissue.txt");
        data = X(:,1:end-1);
        labels = X(:,end);

    case 'Balance'
        X = load("data\Balance.txt");
        data = X(:,1:end-1);
        labels = X(:,end);

    case 'Cleveland'
        X = load("data\Cleveland.txt");
        data = X(:,1:end-1);
        labels = X(:,end);

    case 'Hayes-roth'
        X = load("data\Hayes-roth.txt");
        data = X(:,1:end-1);
        labels = X(:,end);

    case 'Autos'
        X = load("data\Autos.txt");
        data = X(:,1:end-1);
        labels = X(:,end);

    case 'Iris'
        X = load("data\Iris.txt");
        data = X(:,1:end-1);
        labels = X(:,end);

    case 'New-thyroid'
        X = load("data\New-thyroid.txt");
        data = X(:,1:end-1);
        labels = X(:,end);

    case 'Wine'
        X = load("data\Wine.txt");
        data = X(:,1:end-1);
        labels = X(:,end);

    case 'Yeast'
        X = load("data\Yeast.txt");
        data = X(:,1:end-1);
        labels = X(:,end);

end

