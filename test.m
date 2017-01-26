%calculate RGB,Lab,lbp for all pixels
train=zeros(numlabels,6);
for k=0:numlabels-1
    count=0;
    for i=1:size(reshapelabel)
            if(reshapelabel(i)==k)
               train(k+1,:)=train(k+1,:)+featurevector(i,:);
               count=count+1;
            end
    end
    train(k+1,:)=train(k+1,:)*(1/count); 
end