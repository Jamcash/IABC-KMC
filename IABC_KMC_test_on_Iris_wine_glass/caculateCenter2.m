function [newCenter,class,classCounterDistance]=caculateCenter2(centerNum,x,datacolumn,datarow,center,class,classCounterDistance)
%************�����µ�����*******************%
kindNum=linspace(0,0,centerNum);%��������ÿһ��������ĸ���
sum=zeros(datarow,centerNum);
newCenter=zeros(datarow,centerNum);

%****************�����������Ͷ�Ӧ��ľ����Լ�sum��kindNum�Ĺ��̷�װ��һ������**************
[sum,kindNum,class,classCounterDistance]=calculateClassDistance(x,center,datacolumn,centerNum,sum,kindNum);
%   for i=1:datacolumn
%     for j=1:centerNum
%        distancedata(j,i)=pdist([x(:,i),center(:,j)]');
%   %   distancedata(j,i)=(x(:,i)-center(:,j))'*(x(:,i)-center(:,j));%�������i�㵽�͸������ĵľ���
%     end
%   temp=find(distancedata(:,i)==min(distancedata(:,i)));%9.17 ֮������ôд����Ϊ�³�����x=[1,1,3],find(x==min(x))�᷵������ֵ��������ʵ�������
%   %�����ֽ�����������ʽ�洢���������������t=temp(1,1)ȡ��һ���Ϳ�����
%     t=temp(1,1);%i����t�����Ľ�
%     %**************9.17**************
%     %t��������㵽���о��������о�����̵��Ǹ����ĵ��������ĵ��࣬�������������ĵ㣬���t==2����ʾi����㵽�ڶ������ĵ�ľ�����̣��������
%     %��ҲӦ�ù������ڶ����У���t==2
%     class(i)=t;
%     classCounterDistance(i,:)=[min(distancedata(:,i)),t];%��������i���Ӧ�������ĸ����Լ��������ľ���洢������
%     %�����Ϊ���Ժ����׼�����õģ����ǰ�ͬ��ľ��붼������
%     %**************9.17**************
%     
%     for j=1:centerNum
%         if t==j
%             sum(:,j)=sum(:,j)+x(:,i);
%             kindNum(j)=kindNum(j)+1;
%         end
%     end
%    
%    % distancedata(2,i)=(x(:,i)-center(:,2))'*(x(:,i)-center(:,2));%��������㵽z2�ľ���
%   % if distancedata(1,i)<distancedata(2,i)
%    %  sum(:,1)=sum(:,1)+x(:,i);%kinddata��¼����z1��ֵ
%     % kindNum(1)=kindNum(1)+1;%��¼����z1�ĸ���
%   % else
%    %  sum(:,2)=sum(:,2)+x(:,i);%kinddata��¼����z2��ֵ 
%    %  kindNum(2)=kindNum(2)+1;%��¼����z1�ĸ���
%   % newCenter1=sum(:,1)./kindNum(1);%�����µ�����
%   %newCenter2=sum(:,2)./kindNum(2);
%   %newCenter=[newCenter1 newCenter2];%�ϲ��µ�����
%    end

 for j=1:centerNum
    newCenter(:,j)=sum(:,j)./kindNum(j);%�����µ�����
 end

