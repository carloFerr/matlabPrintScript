function [] = printScriptPzMap(graphTitle, transferFunction, saveFig)

hfig1 = figure;
box on;
pzmap(transferFunction);
h = findobj(gcf, 'Type', 'line');
set(h, 'LineWidth', 2);
ttl1 = title(graphTitle);
% xlabel('Real Axis [$seconds^-1$]', 'Interpreter', 'latex')
% ylabel('Imaginary Axis [$seconds^-1$]', 'Interpreter', 'latex')

printSettings(graphTitle, hfig1, ttl1, '', saveFig);

end



