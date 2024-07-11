function [] = printScriptStep(graphTitle, transferFunction)

hfig1 = figure;

step(transferFunction);
grid on;
h = findobj(gcf, 'Type', 'line');
set(h, 'LineWidth', 2);
ttl1 = title(graphTitle);

printSettings(hfig1, ttl1, '');

end



