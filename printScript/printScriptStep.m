function [] = printScriptStep(graphTitle, transferFunction, saveFig)

hfig1 = figure;

step(transferFunction);
grid on;
h = findobj(gcf, 'Type', 'line');
set(h, 'LineWidth', 2);
ttl1 = title(graphTitle);

printSettings(graphTitle, hfig1, ttl1, '', saveFig);

end



