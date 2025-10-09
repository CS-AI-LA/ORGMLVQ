function [dCorrect,dIncorrect] = get_derivative_R(prototypes,num_classes,correct,incorrect)

switch num_classes
    case 3 % For 3-class problem
        w1 = prototypes(1,:);
        w2 = prototypes(2,:);
        w3 = prototypes(3,:);
        D(1,:) = 2*w1 - 2*w2; 
        D(2,:) = -2*w1 + 4*w2 - 2*w3;
        D(3,:) = -2*w2 + 2*w3;
        dCorrect = D(correct,:);
        dIncorrect = D(incorrect,:);

    case 4 % For 4-class problem
        w1 = prototypes(1,:);
        w2 = prototypes(2,:);
        w3 = prototypes(3,:);
        w4 = prototypes(4,:);
        D(1,:) = 2*w1 - 2*w2; 
        D(2,:) = -2*w1 + 4*w2 - 2*w3;
        D(3,:) = -2*w2 + 4*w3 -2*w4;
        D(4,:) = -2*w3 + 2*w4;
        dCorrect = D(correct,:);
        dIncorrect = D(incorrect,:);

    case 5 % For 5-class problem
        w1 = prototypes(1,:);
        w2 = prototypes(2,:);
        w3 = prototypes(3,:);
        w4 = prototypes(4,:);
        w5 = prototypes(5,:);

        D(1,:) = 2*w1 - 2*w2; 
        D(2,:) = -2*w1 + 4*w2 - 2*w3;
        D(3,:) = -2*w2 + 4*w3 -2*w4;
        D(4,:) = -2*w3 + 4*w4 -2*w5;
        D(5,:) = -2*w4 + 2*w5;
        dCorrect = D(correct,:);
        dIncorrect = D(incorrect,:);


    case 6 % For 6-class problem
        w1 = prototypes(1,:);
        w2 = prototypes(2,:);
        w3 = prototypes(3,:);
        w4 = prototypes(4,:);
        w5 = prototypes(5,:);
        w6 = prototypes(6,:);

        D(1,:) = 2*w1 - 2*w2; 
        D(2,:) = -2*w1 + 4*w2 - 2*w3;
        D(3,:) = -2*w2 + 4*w3 - 2*w4;
        D(4,:) = -2*w3 + 4*w4 - 2*w5;
        D(5,:) = -2*w4 + 4*w5 - 2*w6;
        D(6,:) = -2*w5 + 2*w6;
        dCorrect = D(correct,:);
        dIncorrect = D(incorrect,:);

    case 7 % For 7-class problem
        w1 = prototypes(1,:);
        w2 = prototypes(2,:);
        w3 = prototypes(3,:);
        w4 = prototypes(4,:);
        w5 = prototypes(5,:);
        w6 = prototypes(6,:);
        w7 = prototypes(7,:);
        
        D(1,:) = 2*w1 - 2*w2;
        D(2,:) = -2*w1 + 4*w2 - 2*w3;
        D(3,:) = -2*w2 + 4*w3 - 2*w4;
        D(4,:) = -2*w3 + 4*w4 - 2*w5;
        D(5,:) = -2*w4 + 4*w5 - 2*w6;
        D(6,:) = -2*w5 + 4*w6 - 2*w7;
        D(7,:) = -2*w6 + 2*w7;
        dCorrect = D(correct,:);
        dIncorrect = D(incorrect,:);


    case 10 % For 10-class problem
        w1 = prototypes(1,:);
        w2 = prototypes(2,:);
        w3 = prototypes(3,:);
        w4 = prototypes(4,:);
        w5 = prototypes(5,:);
        w6 = prototypes(6,:);
        w7 = prototypes(7,:);
        w8 = prototypes(8,:);
        w9 = prototypes(9,:);
        w10 = prototypes(10,:);

        D(1,:) = 2*w1 - 2*w2;
        D(2,:) = -2*w1 + 4*w2 - 2*w3;
        D(3,:) = -2*w2 + 4*w3 - 2*w4;
        D(4,:) = -2*w3 + 4*w4 - 2*w5;
        D(5,:) = -2*w4 + 4*w5 - 2*w6;
        D(6,:) = -2*w5 + 4*w6 - 2*w7;
        D(7,:) = -2*w6 + 4*w7 - 2*w8;
        D(8,:) = -2*w7 + 4*w8 - 2*w9;
        D(9,:) = -2*w8 + 4*w9 - 2*w10;
        D(10,:) = -2*w9 + 2*w10;
        dCorrect = D(correct,:);
        dIncorrect = D(incorrect,:);
end