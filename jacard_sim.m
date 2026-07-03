data=load("/Users/liufx/Desktop/材料/文章数据/lnRNA_dis_Matrix.txt");
[X_num,Y_num]=size(data);
jacard_similarity_dis=zeros(Y_num);
jacard_similarity_lnRNA=zeros(X_num);
%lnRNA_sim
for x=1:X_num
    for y=1:X_num
        jiao_num=sum(data(x,:).*data(y,:));
        he_num=sum((data(x,:)+data(y,:))~=0);
    num_sim=(jiao_num)/( he_num);
    jacard_similarity_lnRNA(x,y)=num_sim;
    jacard_similarity_lnRNA(y,x)=num_sim;
    end
end
%dis_sim
for x=1:Y_num
    for y=1:Y_num
        jiao_num=sum(data(:,x).*data(:,y));
        he_num=sum((data(:,x)+data(:,y))~=0);
    num_sim=(jiao_num)/( he_num);
    jacard_similarity_dis(x,y)=num_sim;
    jacard_similarity_dis(y,x)=num_sim;
    end
end
writematrix(jacard_similarity_lnRNA,"/Users/liufx/Desktop/材料/文章数据/lnRNA_sim.txt");
writematrix(jacard_similarity_dis,"/Users/liufx/Desktop/材料/文章数据/dis_sim.txt");