he = imread('ex.jpg');
%figure,imshow('hi.jpg');
cform = makecform('srgb2lab');
lab_he = applycform(he,cform);

nColors = 3;
ab = double(lab_he(:,:,2:3));
nrows = size(ab,1);
ncols = size(ab,2);

nClusters = 3 ;
rng(2);
ab = reshape(ab,nrows*ncols,2);

%[cluster_idx,cluster_center] = kmeans(ab,nClusters,'distance','sqEuclidean', ...
        %                              'Replicates',3);
 [cluster_idx,cluster_center] = kmeans(ab,nClusters);
pixel_labels = reshape(cluster_idx,nrows,ncols);
figure,imshow(pixel_labels,[]);


segmented_images = cell(1,numlabels);
rgb_label = repmat(pixel_labels,[1 1 3]);

for k = 1:nColors
    color = he;
    color(rgb_label ~= k) = 0;
    segmented_images{k} = color;
end

imshow(segmented_images{1}), title('objects in cluster 1');