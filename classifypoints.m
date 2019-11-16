function category = classifypoints(file, points)
    S = load(file);
    W = S.W;
    b = S.b;
    layers = length(S.W);
    x1 = points(1,:);
    x2 = points(2,:);
    for i = 1:length(x1)
        a{1} = [x1(i);x2(i)]
        for j = 2:layers
            a{j} = activate(a{j-1},W{j},b{j});
        end
        if a{j}(1) > a{j}(2)
            category(i) = 1;
        else
            category(i) = 0;
        end
    end
end
