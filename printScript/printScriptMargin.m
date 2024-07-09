function [] = printScriptMargin(	graphTitle, transferFunction)

hfig1 = figure;
hold on, grid on;
margin(transferFunction, "lineWidth", 2);
ttl1 = title(graphTitle);
xlabel("Magnitude [dB]");
ylabel("Frequency [Hz]");


lgd1 = '';

printSettings(hfig1, ttl1, lgd1);

end



