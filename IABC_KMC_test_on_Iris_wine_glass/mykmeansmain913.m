function mykmeansmain913(x)
fhandle=fopen('D:\����\��һƪ��ϲ���\k-means   matlab\data.txt');
x=fscanf(fhandle,'%g     %g     ',[2 inf]);
centerNum=4;            %�������ĵĸ���,�ɱ�
%center=x(:,1:centerNum);%ѡȡ��ʼ��
center=[0,0;8,6;8,9;3,2]';
disp('��ʼ��������:');
disp(center);
[datarow,datacolumn]=size(x);
distancedata=zeros(centerNum,datacolumn);
step=1000 ;       %����������

%**************9.17**************
class=zeros(1,datacolumn);
classCounterDistance=zeros(datacolumn,2);
%**************9.17**************

%kinddata=zeros(datarow,datacolumn);
 [newCenter,class,classCounterDistance]=caculateCenter2(centerNum,x,datacolumn,datarow,center,class,classCounterDistance);%���¼����������

while (sum(sum(newCenter~=center)))&step
    i
    center=newCenter; 
    times=1000-step+1;
    fprintf('��%d�ε�������������Ϊ��\n',times);
    %disp('��������Ϊ��');
    disp(center);
    
    %**************9.17**************
class=zeros(1,datacolumn);
classCounterDistance=zeros(datacolumn,2);%��Ϊһ���Ǿ���ֵ��һ����������������࣬����������
%**************9.17**************
    
   [newCenter,class,classCounterDistance]=caculateCenter2(centerNum,x,datacolumn,datarow,center,class,classCounterDistance);%���¼����������
    step=step-1;
end
disp('��������������Ϊ��');
disp(class);
disp('�����������������Լ������Ϊ��');
disp(classCounterDistance);

plot(x(1,:),x(2,:),'*');
hold on;
for h=1:centerNum
   plot(newCenter(1,h),newCenter(2,h),'+r');
   hold on;
end
grid;
legend('�򵥵Ķ�����K��ֵ����')
    
%sort=sort(data1);  %�Ծ����������
%sort2=sort(data2);
%m=find(data1==sortdata1(2));%�ҵ���Сֵ�ڵ�����
%n=find(data1==sortdata1(2));%
%z11=x(m);
%z22=x(n);