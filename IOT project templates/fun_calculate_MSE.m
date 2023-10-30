function mse = fun_calculate_MSE(Xm,ind_true)

[M,N] = size(Xm);
if M ~= 2 && N ~= 2
    disp("Invalid Coordinates estimation matrix.");
    disp("Coordinates should be a matrix of dimension 2 times X or X times 2");
end

if M == 2
    Xm = Xm.';
    M = N;
    N = 2;
end

if M < 10
    disp("Less than 10 coordinates...")
end

load true_location

tmp = Xm - ones(M,1)*true_location(ind_true,:);
mse = mean(abs(tmp(:)).^2);

fprintf("MSE is %f.\n",mse)







