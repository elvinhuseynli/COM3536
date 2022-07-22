function [h] = Prepareh(B)
h = zeros(30, 30);
for m = 0:29
    for n = 0:29
        h(m+1, n+1) = (sinc(B*(m-((30-1)/2)))*sinc(B*(n-((30-1)/2))));
    end
end
