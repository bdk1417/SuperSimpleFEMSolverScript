clc;
clear all;

width=4;
height=4;
finalLoopCount=500;

T = zeros(height,width);

T(1,:)=30;
T(:,1)=20;
T(width,:)=0;
T(:,height)=10;
Told= zeros(height,width);
loopCount=0;
while(norm(abs(Told-T))>.00000005 && loopCount<finalLoopCount)
    Told=T;
    loopCount=loopCount+1;
    for i=2:1:height-1,        
        for j=2:1:width-1,            
            T(i,j)=.25*(Told(i-1,j)+Told(i,j-1)+Told(i,j+1)+Told(i+1,j));         
        end
    end
end
norm(abs(Told-T))
loopCount
T