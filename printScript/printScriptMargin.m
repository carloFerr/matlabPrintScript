function [] = printScriptMargin(	graphTitle, transferFunction)

hfig1 = figure;

margin(transferFunction);
grid on;
h = findobj(gcf, 'Type', 'line');
set(h, 'LineWidth', 2);
ttl1 = title(graphTitle);
xlabel("Magnitude [dB]");
ylabel("Frequency [Hz]");

printSettings(hfig1, ttl1, '');

end



