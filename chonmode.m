list=[' please chose one mode you want to change:         '
      '    mode                                 select    '
      'mode 1: Change Wind                       1        '
      'mode 2: Change Solar                      2        '
      'mode 3: Change Generator                  3        '
      'mode 4: Baterry                           4        '
      'mode 5: Dont Change                       5        '
      'mode 6: Load                              6        ']
  disp(list);
 cont='Y'
 while cont = 'Y'
  syms select;
  select =0;
  while select ~=1 & select ~=2 & select ~=3 & select ~= 4 & select ~=5
  select=input('You chose mode:');
  if select ~=1 & select ~=2 & select ~=3 & select ~= 4 & select ~=5
      fprintf('Please chose 1 2 3 4 or 5');
  end;
  end;
  fprintf('\n');
  switch select
      case 1
          
      case 2
      case 3
      case 4
          
  end
  cont=input('Do you want to continue? [Y/n]');
 end
          
 