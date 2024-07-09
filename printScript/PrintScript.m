
close all
clc
%% Print Script

hfig1 = figure;  % save the figure handle in a variable
fname1 = 'stepReg3SaturationIntegral';
% fname2 = 'staircaseTest4RegLUT_ControlVarVicinoMagnete';
% load('.');
% PS = PLOT_STANDARDS();

% ********************** Insert Your Plot Here **************************
% subplot(3,1,1)
% grid on, hold on;
% plot(currentInput, "lineWidth", 1);
% plot(currentSim, "lineWidth", 1.5);
% lgd1 = legend("Acq Current", "Sim Current")
% ylabel("Current [A]")
% xlabel("time [s]")
% title("Current")
% 
% subplot(3,1,2)
% grid on, hold on;
% plot(voltageInput, "lineWidth", 1.5);
% lgd2 = legend("Voltage")
% ylabel("Voltage [V]")
% xlabel("time [s]")
% title("Voltage")
% 
% subplot(3,1,3)
% grid on, hold on;
% plot(gap, "lineWidth", 1.5);
% lgd3 = legend("Gap")
% ylabel("Gap [mm]")
% xlabel("time [s]")
% title("Gap")

% surf(LGapSpan, LCurrentSpan, F')
% set(gca, 'Ydir', 'reverse');
% title('Inductance Surface');
% xlabel("Gap [m]");
% ylabel("Current [A]");
% zlabel("Inductance [H]");

% contourf(LGapSpan, LCurrentSpan, F','--')
% hold on
% plot(LUT_IP(:,2)/1000,LUT_IP(:,1),"r","lineWidth", 2.5);
% title('Equilibrium Positions Fit Line');
% lgd = legend("Force surface","Equilibrium points");
% xlabel("Gap [m]");
% ylabel("Current [A]");
% 
% plot(P/1000,I,'.','MarkerSize',20);
% hold on
% plot(LUT_IP(:,2)/1000,LUT_IP(:,1),"r","lineWidth", 2);
% title('Equilibrium Positions Fitting');
% lgd = legend("Acquired eq. positions","Fitting");
% xlabel("Gap [m]");
% ylabel("Current [A]");

% plot(extractedTimeSerie.Time/1000,extractedTimeSerie.Data(:,3))
% title('Acquired Current');
% xlabel("Time [s]");
% ylabel("Current [A]");

% for i=1:numberOfVoltageSteps
%     plot(responses(i,:));
%     hold on;
% end
% grid;
% title("LC Dynamics at Different Voltages");
% xlabel("Time [ms]");
% ylabel("Current [A]");
% lgd = legend("1V","2V","3V","4V","5V","6V","7V","8V","9V","10V","11V","12V","13V","14V","15V","16V");
% 
% 
% plot(avgCurr(:,1:numberOfVoltageSteps)', (1:1:numberOfVoltageSteps)','.','MarkerSize',20);
% hold on;
% plot(0:numberOfVoltageSteps-1, linFit(1)*(1:numberOfVoltageSteps)-2.70,'r', 'LineWidth',2);
% grid;
% title("Parasitic Resistance Characteristic");
% xlabel("Current [A]");
% ylabel("Voltage [V]");

% grid on, hold on
% plot(Lincr,'LineWidth',2);
% plot(Ldecr,'LineWidth',2);
% plot(L,'LineWidth',2);
% lgd=legend("Lincr","Ldecr", "L");
% title("Inductance Profile at a Certain Distance");
% xlabel("Voltage [V]");
% ylabel("Differential Inductance [H]");
% 
% subplot(1,2,1)
% grid on, hold on
% margin(L)
% subplot(1,2,2)
% title('Step F')
% step(F);
% 
% k = 1;
% for j = length(IncrResponses(:,1)):length(DecrResponses(:,1))+length(IncrResponses(:,1))
%     try
%         tempFit = fit(time2', (DecrResponses(k,:) - mean(DecrResponses(k,end-300:end)))', 'exp1');
%         DecrFit.("tau"+k) = -1/tempFit.b;
%         % uncomment plot if you are insaneù
%         nexttile;
%         hold on, grid on
%         title("Decr"+k)
%         plot(time2, DecrResponses(k,:) - mean(DecrResponses(k,end-300:end)));
%         plot(time2, tempFit.a *exp(tempFit.b * time2), "LineWidth", 2, "Color", "g");
%         k = k + 1;
%     end 
% end

% for i = 1:length(IncrResponses(:,1))
%     tempFit = fit(time1', (IncrResponses(i,:) - mean(IncrResponses(i,end-250:end)))', 'exp1');
%     IncrFit.("tau"+i) = -1/tempFit.b;
% 	avgCurr(i) = mean(IncrResponses(i,end-300:end));
%     % uncomment plot if you are insane
%     nexttile;
% 	hold on, grid on
% 	title("Incr"+i)
% 	plot(time1, IncrResponses(i,:) - mean(IncrResponses(i,end-300:end)));
% 	plot(time1, tempFit.a *exp(tempFit.b * time1), "LineWidth", 2, "Color", "g");
% 	tempFit2(1) = tempFit.a;
% 	tempFit2(2)= tempFit.b;
% end

% hold on;
% for j=1:length(Ldiff3(:,1))
%     grid on
%     LGapSpanMod=LGapSpan(j).*ones(LoutSize(2),1);
%     plot3(LGapSpanMod,LCurrentSpan,Lout(j,:),"LineWidth",2);
% end
% title("Real Inductance solutions at fixed gaps and varying current");
% xlabel("I [I]");
% ylabel("x [m]");
% zlabel("L_{real}", "Interpreter","latex")
% set(gca, 'Xdir', 'reverse');
% hold off;

vectLimits = [0 15 5 62];

% subset_a = timeseries(out.GapRef.Data(:), out.tout(:));
% subset_b = timeseries(out.GapReg3.Data(:), out.tout(:));
% 
% hold on, grid on;
% plot(subset_a.Time, subset_a.Data, "r","lineWidth", 2);
% plot(subset_b.Time, subset_b.Data, "g","lineWidth", 2);
% plot(positionReg3.Time, positionReg3.Data, "b","LineWidth", 2);
% axis(vectLimits)
% ttl1 = title('Response of Non Linear system');
% lgd1 = legend("positionReference","positionActualNLModel","positionActualRealSystem");
% xlabel("Time [s]");
% ylabel("Gap [mm]");


subset_a = timeseries(out.errorRefReg3.Data(:), out.tout(:));
subset_b = timeseries(out.GapRegLUT.Data(:), out.tout(:));
subset_c = timeseries(out.GapReg3.Data(:), out.tout(:));
subset_d= timeseries(out.errorRefLUT.Data(:), out.tout(:));

subplot(1,2,1);
hold on, grid on;
plot(subset_a.Time, subset_a.Data, "lineWidth", 2);
plot(subset_c.Time, subset_c.Data, "lineWidth", 2);
plot(out.GapRef.Time, out.GapRef.Data(:), "LineWidth", 2);
ttl1 = title('Response of NL System with pure integrator');
lgd1 = legend("outerLoopControlAction","measuredGap","referenceGap");
xlabel("Time [s]");
ylabel("Gap [mm]");
axis(vectLimits)
subplot(1,2,2);
hold on, grid on;
plot(subset_d.Time, subset_d.Data, "lineWidth", 2);
plot(subset_b.Time, subset_b.Data, "lineWidth", 2);
plot(out.GapRef.Time, out.GapRef.Data(:), "LineWidth", 2);
axis(vectLimits)
ttl2 = title('Response of NL System with integrator and antiwindup');
lgd2 = legend("outerLoopControlAction","measuredGap","referenceGap");
xlabel("Time [s]");
ylabel("Gap [mm]");



hfig2 = figure;

% subset_a = timeseries(out.GapRef.Data(:), out.tout(:));
% subset_b = timeseries(out.GapRegLUT.Data(:), out.tout(:));
% 
% hold on, grid on;
% plot(subset_a.Time, subset_a.Data, "r","lineWidth", 2);
% plot(subset_b.Time, subset_b.Data, "g","lineWidth", 2);
% plot(positionRegLUT.Time, positionRegLUT.Data, "b","lineWidth", 2);
% axis(vectLimits)
% ttl2 = title('Response of Non Linear system');
% lgd2 = legend("positionReference","positionActualNLModel","positionActualRealSystem");
% xlabel("Time [s]");
% ylabel("Gap [mm]");


% subset_a = timeseries(out.voltageRefSatLUT.Data(:), out.tout(:));
% 
% hold on, grid on;
% plot(subset_a.Time, subset_a.Data, "r","lineWidth", 2);
% plot(out.RealvoltageRefSatRegLut.Time, out.RealvoltageRefSatRegLut.Data(:), "b","LineWidth", 2);
% axis(vectLimits)
% ttl1 = title('Response of Non Linear system');
% lgd1 = legend("voltageReferenceSimulation","voltageReferenceSaturatedSimulation","voltageReferenceRealSystem");
% xlabel("Time [s]");
% ylabel("Voltage [V]");



% view([-128.8558 29.5192])
% *************************** End Of Plot *******************************

picturewidth = 50; % set this parameter and keep it
hw_ratio = 0.65; % feel free to play with this ratio
set(findall(hfig1,'-property','FontSize'),'FontSize', 20) % adjust fontsize to your document
% set(findall(hfig2,'-property','FontSize'),'FontSize', 20) % adjust fontsize to your document

% set(findall(hfig,'-property','Box'),'Box','off') % optional
set(findall(hfig1,'-property','Interpreter'),'Interpreter','latex') 
set(findall(hfig1,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
set(hfig1,'Units','centimeters','Position',[3 3 picturewidth hw_ratio*picturewidth])
% set(findall(hfig2,'-property','Interpreter'),'Interpreter','latex') 
% set(findall(hfig2,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
% set(hfig2,'Units','centimeters','Position',[3 3 picturewidth hw_ratio*picturewidth])

pos = get(hfig1,'Position');
set(hfig1,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])
% pos = get(hfig2,'Position');
% set(hfig2,'PaperPositionMode','Auto','PaperUnits','centimeters','PaperSize',[pos(3), pos(4)])
% print(hfig,fname,'-dpdf','-painters','-fillpage')

% set the number of legend you want
set(findall(lgd1, '-property', 'FontSize'), 'FontSize', 16)
set(findall(lgd2, '-property', 'FontSize'), 'FontSize', 16)
%set(findall(lgd3, '-property', 'FontSize'), 'FontSize', 11)

% Set title size
set(findall(ttl1, '-property', 'FontSize'), 'FontSize', 24)
set(findall(ttl2, '-property', 'FontSize'), 'FontSize', 24)

print(hfig1,fname1,'-dpng','-painters')
print(hfig1,fname1,'-deps','-painters')
print(hfig1,fname1,'-dfig','-painters')
% print(hfig2,fname2,'-dpng','-painters')
% print(hfig2,fname2,'-deps','-painters')

