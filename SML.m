% Supervised Machine Learning (SML) for distance
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





%%%%% Variables
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M=70;
N=100;
S=50;
AlphaMin=0.1;
AlphaMax=1;
BetaMin=0.1;
BetaMax=1;
GammaMin=0.001;
GammaMax=0.1;





%%%%% Training set
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TrainSet=zeros(M,3); % Ultrasonic distance | IR distance | Distance

TrainSet(1,1)=63;
TrainSet(1,2)=58;
TrainSet(1,3)=62;

TrainSet(2,1)=86;
TrainSet(2,2)=73;
TrainSet(2,3)=80;

TrainSet(3,1)=28;
TrainSet(3,2)=39;
TrainSet(3,3)=32;

TrainSet(4,1)=84;
TrainSet(4,2)=72;
TrainSet(4,3)=79;

TrainSet(5,1)=45;
TrainSet(5,2)=61;
TrainSet(5,3)=53;

TrainSet(6,1)=22;
TrainSet(6,2)=10;
TrainSet(6,3)=17;

TrainSet(7,1)=64;
TrainSet(7,2)=81;
TrainSet(7,3)=71;

TrainSet(8,1)=81;
TrainSet(8,2)=95;
TrainSet(8,3)=86;

TrainSet(9,1)=84;
TrainSet(9,2)=69;
TrainSet(9,3)=78;

TrainSet(10,1)=85;
TrainSet(10,2)=95;
TrainSet(10,3)=81;

TrainSet(11,1)=60;
TrainSet(11,2)=46;
TrainSet(11,3)=55;

TrainSet(12,1)=54;
TrainSet(12,2)=73;
TrainSet(12,3)=60;

TrainSet(13,1)=44;
TrainSet(13,2)=51;
TrainSet(13,3)=46;

TrainSet(14,1)=33;
TrainSet(14,2)=43;
TrainSet(14,3)=36;

TrainSet(15,1)=32;
TrainSet(15,2)=40;
TrainSet(15,3)=35;

TrainSet(16,1)=96;
TrainSet(16,2)=75;
TrainSet(16,3)=88;

TrainSet(17,1)=14;
TrainSet(17,2)=24;
TrainSet(17,3)=17;

TrainSet(18,1)=71;
TrainSet(18,2)=55;
TrainSet(18,3)=64;

TrainSet(19,1)=10;
TrainSet(19,2)=25;
TrainSet(19,3)=16;

TrainSet(20,1)=11;
TrainSet(20,2)=17;
TrainSet(20,3)=13;

TrainSet(21,1)=52;
TrainSet(21,2)=72;
TrainSet(21,3)=58;

TrainSet(22,1)=91;
TrainSet(22,2)=80;
TrainSet(22,3)=87;

TrainSet(23,1)=78;
TrainSet(23,2)=95;
TrainSet(23,3)=84;

TrainSet(24,1)=14;
TrainSet(24,2)=21;
TrainSet(24,3)=17;

TrainSet(25,1)=90;
TrainSet(25,2)=73;
TrainSet(25,3)=83;

TrainSet(26,1)=60;
TrainSet(26,2)=43;
TrainSet(26,3)=54;

TrainSet(27,1)=63;
TrainSet(27,2)=65;
TrainSet(27,3)=63;

TrainSet(28,1)=76;
TrainSet(28,2)=65;
TrainSet(28,3)=72;

TrainSet(29,1)=47;
TrainSet(29,2)=34;
TrainSet(29,3)=42;

TrainSet(30,1)=33;
TrainSet(30,2)=10;
TrainSet(30,3)=24;

TrainSet(31,1)=69;
TrainSet(31,2)=74;
TrainSet(31,3)=71;

TrainSet(32,1)=15;
TrainSet(32,2)=35;
TrainSet(32,3)=22;

TrainSet(33,1)=16;
TrainSet(33,2)=43;
TrainSet(33,3)=26;

TrainSet(34,1)=45;
TrainSet(34,2)=55;
TrainSet(34,3)=48;

TrainSet(35,1)=67;
TrainSet(35,2)=47;
TrainSet(35,3)=59;

TrainSet(36,1)=54;
TrainSet(36,2)=52;
TrainSet(36,3)=54;

TrainSet(37,1)=39;
TrainSet(37,2)=52;
TrainSet(37,3)=44;

TrainSet(38,1)=97;
TrainSet(38,2)=77;
TrainSet(38,3)=89;

TrainSet(39,1)=30;
TrainSet(39,2)=40;
TrainSet(39,3)=33;

TrainSet(40,1)=68;
TrainSet(40,2)=53;
TrainSet(40,3)=62;

TrainSet(41,1)=39;
TrainSet(41,2)=42;
TrainSet(41,3)=40;

TrainSet(42,1)=99;
TrainSet(42,2)=77;
TrainSet(42,3)=90;

TrainSet(43,1)=71;
TrainSet(43,2)=89;
TrainSet(43,3)=77;

TrainSet(44,1)=39;
TrainSet(44,2)=56;
TrainSet(44,3)=45;

TrainSet(45,1)=95;
TrainSet(45,2)=79;
TrainSet(45,3)=88;

TrainSet(46,1)=12;
TrainSet(46,2)=26;
TrainSet(46,3)=16;

TrainSet(47,1)=38;
TrainSet(47,2)=56;
TrainSet(47,3)=43;

TrainSet(48,1)=49;
TrainSet(48,2)=62;
TrainSet(48,3)=54;

TrainSet(49,1)=79;
TrainSet(49,2)=97;
TrainSet(49,3)=86;

TrainSet(50,1)=27;
TrainSet(50,2)=9;
TrainSet(50,3)=20;

TrainSet(51,1)=70;
TrainSet(51,2)=94;
TrainSet(51,3)=79;

TrainSet(52,1)=48;
TrainSet(52,2)=55;
TrainSet(52,3)=51;

TrainSet(53,1)=78;
TrainSet(53,2)=81;
TrainSet(53,3)=79;

TrainSet(54,1)=34;
TrainSet(54,2)=26;
TrainSet(54,3)=31;

TrainSet(55,1)=54;
TrainSet(55,2)=70;
TrainSet(55,3)=60;

TrainSet(56,1)=62;
TrainSet(56,2)=77;
TrainSet(56,3)=68;

TrainSet(57,1)=17;
TrainSet(57,2)=13;
TrainSet(57,3)=16;

TrainSet(58,1)=64;
TrainSet(58,2)=84;
TrainSet(58,3)=72;

TrainSet(59,1)=69;
TrainSet(59,2)=64;
TrainSet(59,3)=67;

TrainSet(60,1)=88;
TrainSet(60,2)=72;
TrainSet(60,3)=82;

TrainSet(61,1)=23;
TrainSet(61,2)=37;
TrainSet(61,3)=28;

TrainSet(62,1)=65;
TrainSet(62,2)=55;
TrainSet(62,3)=61;

TrainSet(63,1)=75;
TrainSet(63,2)=81;
TrainSet(63,3)=77;

TrainSet(64,1)=100;
TrainSet(64,2)=85;
TrainSet(64,3)=94;

TrainSet(65,1)=23;
TrainSet(65,2)=16;
TrainSet(65,3)=20;

TrainSet(66,1)=42;
TrainSet(66,2)=44;
TrainSet(66,3)=42;

TrainSet(67,1)=71;
TrainSet(67,2)=65;
TrainSet(67,3)=69;

TrainSet(68,1)=10;
TrainSet(68,2)=19;
TrainSet(68,3)=13;

TrainSet(69,1)=76;
TrainSet(69,2)=62;
TrainSet(69,3)=71;

TrainSet(70,1)=66;
TrainSet(70,2)=73;
TrainSet(70,3)=69;

figure(1);
plot3(TrainSet(:,1),TrainSet(:,2),TrainSet(:,3),'ob','MarkerSize',10,'LineWidth',2);
xlabel('Ultrasonic distance (cm)');
ylabel('IR distance (cm)');
zlabel('Distance (cm)');
grid on;





%%%%% Find the best values
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2);
hold on;

Solution=zeros(N,4); % Alpha | Beta | Gamma | Difference
for i=1:N
    Alpha=(AlphaMax-AlphaMin)*rand()+AlphaMin;
    Beta=(BetaMax-BetaMin)*rand()+BetaMin;
    Gamma=(GammaMax-GammaMin)*rand()+GammaMin;
    
    Sum=0;
    for j=1:S
        R=round(rand()*M);
        if R==0
           R=1;
        end;
        
        AB=Alpha*TrainSet(R,1)+Beta*TrainSet(R,2)+Gamma;
        Sum=Sum+abs(AB-TrainSet(R,3));
    end;
    Difference=Sum/S;
    %
    Solution(i,1)=Alpha;
    Solution(i,2)=Beta;
    Solution(i,3)=Gamma;
    Solution(i,4)=Difference;
    %
    plot3([1 Alpha*100+Beta*100+Gamma],[1 Alpha*100+Beta*100+Gamma],[1 Alpha*100+Beta*100+Gamma],'Color','g','LineWidth',2);
end;


% Select the best solution
Solution=sortrows(Solution,4);
Alpha=Solution(1,1);
Beta=Solution(1,2);
Gamma=Solution(1,3);

plot3([1 Alpha*100+Beta*100+Gamma],[1 Alpha*100+Beta*100+Gamma],[1 Alpha*100+Beta*100+Gamma],'Color','r','LineWidth',2);
plot3(TrainSet(:,1),TrainSet(:,2),TrainSet(:,3),'ob','MarkerSize',10,'LineWidth',2);
xlabel('Ultrasonic distance (cm)');
ylabel('IR distance (cm)');
zlabel('Distance (cm)');
view(3);
xlim([0 100]);
ylim([0 100]);
zlim([0 100]);
hold off;
grid on;





%%%%% Results
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Solution
Alpha
Beta
Gamma
