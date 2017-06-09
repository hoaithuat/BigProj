fprintf('\n');
fprintf('     --Line--  Imax\n');
fprintf('     from  to    A ');
%-------------
%----ADD--------
syms dem;
dem =1;
%----------Add-----
for n = 1:nbus
busprt = 0;
   for L = 1:nbr;
       if busprt == 0
       fprintf('   \n'), fprintf('%6g', n);
        fprintf('\n');
       busprt = 1;
       else, end
       if nl(L)==n      k = nr(L);
       elseif nr(L)==n  k = nl(L);
       else, end
       %----------- Dich----------------%
         if nl(L)==n | nr(L)==n
         fprintf('%12g', k),
             if nl(L) ==n & a(L) ~= 1
             else,end
             %Xuat dong
             fprintf('%9.3f\n',Dongmax(dem) );
             dem=dem+1;
         else, end
   end
end