neurons = [10 20 30 20 10]
layer = length(neurons);
for i = 1:layer
    w{i} = 0.5*randn(neurons(i),neurons(i));
end
learning_rate = 3.2;
save('test', 'w','learning_rate')
