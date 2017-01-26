nonblack = zeros(1,numlabels);
for i=1:numlabels
    for j=2:424
        for k=2:639
            if(i==labels(j,k))
                nonblack(1,i)=nonblack(1,i)+1;
            end
        end
    end
end
black= zeros(1,numlabels);
black(:,:)=423*638;
black_final=black-nonblack;

