%Xu ly loai nut
rbus=length(busdata1(:,1));
   cbus=length(busdata1(1,:));
   Ptai=busdata1(:,5);
   Pmp=busdata1(:,7);
loai=busdata1(:,2);
for a=1:rbus
    if Ptai(a)~=0||Pmp(a)~=0
    loai(a)=0;
    end
end
busdata1(:,2)=loai;
