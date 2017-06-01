clear all
clc
clear
basemva = 400;  accuracy = 0.0001; accel = 1.8; maxiter =100 ;
%                   PHAN NHAP SO LIEU NUT VA THONG SO DUONG DAY
%        IEEE 30-BUS TEST SYSTEM (American Electric Power)
%        Bus Bus  Voltage Angle   ---Load----  -------Generator-----   Static Mvar
%        No  code Mag.  Degree  kW    kvar   kW   kvar Qmin   Qmax     +Qc/-Ql
busdata=[1   1    1.0   0.0     0.0   0.0    0.0  0.0   0      0         0
         2   0    1.0   0.0     0     0      0     0    0      0         0
         3   0    1.0   0.0     0     0      0.0  0.0   0      0         0
         4   0    1.0   0.0     5.7   13.87   0    0    0      0         0% 13.87
         5   0    1.0   0.0     0     0      0.0  0.0   0      0         0
         6   2    1.0   0.0     0     0      30    0    0      0         0
         8   2    1.0   0.0     57    44     30   0.0  -20     50        0
         7   0    1.0   0.0     0     0       0   0.0   0      0         0
         9   0    1.0   0.0     0.0   0.0    0.0  0.0   0      0         0
        10   2    1.0   0.0     23    44.4   20   0.0  -20     50        0
        11   0    1.0   0.0     0     0      0.0  0.0   0      0         0
        12   2    1.0   0.0     5.7   13.9   3    0.0  -20     50        0
        13   0    1.0   0.0     0     0      0    0     0      0         0
        14   2    1.0   0.0     25    39.8   10   0    -40     60        0];
    %                                        Line code
%         Bus bus   R         X        1/2 B     = 1 for lines
%         nl  nr  p.u.        p.u.     p.u.      > 1 or < 1 tr. tap at bus nl
linedata=[1   2   0.0438      0.0438    0          1
          2   3   0.02485     0.00723   0          1
          3   4   0.277       0.0071    0          1
          3   5   0.02485     0.0073    0          1
          5   6   0.1035      0.0062    0          1    %khoang cach moi node la 35m
          5   7   0.13        0.0023    0          1
          7   8   0.062       0.0058    0          1
          5   9   0.02485     0.0073    0          1
          9  10   0.076       0.0071    0          1
          9  11   0.075       0.022     0          1
         11  12   0.277       0.0071    0          1
         11  13   0.02485     0.0073    0          1
         13  14   0.1035      0.0062    0          1];

%DE CHUONG TRING CHAY PHU HOP THI NEN CHINH SUA LAI LUOI NUT CHO PHU HOP VOI NHU CAU
XulyLoainut % chuyen cac nut
lfybus  
lfnewton               % Load flow solution by Gauss-Seidel method
busout              % Prints the power flow solution on the screen
lineflow2% form the bus admittance matrix
