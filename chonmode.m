%----------- Display-- Mode ------------%
ct1='Y';
while ct1== 'Y'
list=[' please chose one mode you want to change:         '
      '    mode                                 select    '
      'mode 1: Change Wind                       1        '
      'mode 2: Change Solar                      2        '
      'mode 3: Change Generator                  3        '
      'mode 4: Baterry                           4        '
      'mode 5: Dont Change                       5        '
      'mode 6: Load                              6        '];
  disp(list);
  %--------End Display----------------------------------%
  syms select;
  select =0;
  while select ~=1 & select ~=2 & select ~=3 & select ~= 4 & select ~=5 & select ~=6
  select=input('You chose mode:');
  if select ~=1 & select ~=2 & select ~=3 & select ~= 4 & select ~=5 & select ~=6
      fprintf('Please chose 1 2 3 4 5 or 6');
  end;
  end;
  fprintf('\n');
  switch select
      case 1 % thay doi turbin gio%
          for cs1=1:length(plgio)
          busdata(plgio(cs1),7) =0;
          busdata(plgio(cs1),8) =0;
          busdata(plgio(cs1),9) =0;
          busdata(plgio(cs1),10)=0;
          end
          %xu li cac nut nguon hon hop%
          for cs11=1:length(plhh)
              busdata(plhh(cs11),7)=busdata(plhh(cs11),7)-nguon(cs11,1);
          end
      case 2 %thay doi nang luong mat troi%
          for cs1=1:length(plmt)
          busdata(plmt(cs1),7) =0;
          busdata(plmt(cs1),8) =0;
          busdata(plmt(cs1),9) =0;
          busdata(plmt(cs1),10)=0;
          end
          %xu li cac nut nguon hon hop%
          for cs11=1:length(plhh)
              busdata(plhh(cs11),7)=busdata(plhh(cs11),7)-nguon(cs11,2);
          end          
      case 3 %thay doi pin%
          for cs1=1:length(plpin)
          busdata(plpin(cs1),7) =0;
          busdata(plpin(cs1),8) =0;
          busdata(plpin(cs1),9) =0;
          busdata(plpin(cs1),10)=0;
          end
          %xu li cac nut nguon hon hop%
          for cs11=1:length(plhh)
              busdata(plhh(cs11),7)=busdata(plhh(cs11),7)-nguon(cs11,3);
          end                    
      case 4 %xua ly cong suat dong co may phat%
          for cs1=1:length(pldc)
          busdata(pldc(cs1),7) =0;
          busdata(pldc(cs1),8) =0;
          busdata(pldc(cs1),9) =0;
          busdata(pldc(cs1),10)=0;
          end
          %xu li cac nut nguon hon hop vi co them Q do nguoc lai cua dong co%
          for cs11=1:length(plhh)
              busdata(plhh(cs11),7)=busdata(plhh(cs11),7)-nguon(cs11,4);
              busdata(plhh(cs11),8)=busdata(plhh(cs11),8)-nguon(cs11,5);
          end                    
      case 5
          fprintf('Khong xu li bat ki truong hop nao nua!\n');
      case 6
          syms load;
          load=[];%bien load se chua tat ca cac nut co chua tai%
          for it=1:length(busdata(:,1))
              if busdata(it,5) ~= 0
                  load(it)=it;
              end
          end    
          %la mang %
          cl=input('ban muon tat tai o cac nut nao: [....] :  ');
          for icl=1:length(cl)
              busdata(cl(icl),5)=0;
              busdata(cl(icl),6)=0;
          end
  end
ct1=input('Do you Want to change another item? [Y/n] :   ')  
end