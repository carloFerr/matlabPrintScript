function [] = printScriptStep(graphTitle, transferFunction, axisEqualFlag, saveFig)

hfig1 = figure;

step(transferFunction);
grid on; box on;
h = findobj(gcf, 'Type', 'line');
set(h, 'LineWidth', 2);
ttl1 = title(graphTitle);

printSettings(graphTitle, hfig1, ttl1, '', axisEqualFlag, saveFig);

end



