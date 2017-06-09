
%cai dat cac loai nut và cac nut dac biet%
% nhap vao dang mang ( matrix) %
plgio=input(' nhap vao cac nut la chi co turbin gio (dang mang) [...]:  ');
plmt=input(' nhap vap cac nut chi co nang luong mat troi: ');
pldc=input(' nhap vao cac nut chi co chua dong co may phat: ');
plpin= input('nhap vao cac nut chi co chua battery:  ');
plhh=input('nhap vao nut co nhieu loai nguon:  ');
%plhh(i) là so thu tu cua nut co chua nguon hon hop%
% nguon is matrix contain Power of Wind , Solar, battery , generator and Q of generator %
nguon=[0 0 0 0 0];
for lap=1:length(plhh)
    fprintf('nhap vao thu tu cac nguon tai nut %d\n ',plhh(lap));
    gtri=input('nhap vao thu tu cong suat cac loai may phat [Pgio Pmt Ppin Pdc Qdc]:\n ');
    nguon(lap,:)=gtri;
end