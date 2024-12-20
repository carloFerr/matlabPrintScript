function [] = printScriptPlot1(graphTitle, xAxis1, yAxis1, graphXLabel, graphYLabel, graphLegend1, axisEqualFlag, saveFig)

	hfig1 = figure;
	hold on, grid on; box on;
	plot(xAxis1, yAxis1, "lineWidth", 2);
	ttl1 = title(graphTitle);
	xlabel(graphXLabel);
	ylabel(graphYLabel);
	
	lgd1 = legend(graphLegend1);
	
	printSettings(graphTitle, hfig1, ttl1, lgd1, axisEqualFlag, saveFig);

end



