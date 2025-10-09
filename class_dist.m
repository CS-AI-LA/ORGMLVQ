function out = class_dist(labels)

for i=1:length(unique(labels))
    out(i) = length(find(labels==i));
end