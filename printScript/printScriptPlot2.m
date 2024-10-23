function [] = printScriptPlot2(	graphTitle, xAxis1, yAxis1, xAxis2, yAxis2, ...
									graphXLabel, graphYLabel, graphLegend1, graphLegend2, saveFig)

	hfig1 = figure;
	hold on, grid on; box on;
	plot(xAxis1, yAxis1, "lineWidth", 2);
	if (~isempty(xAxis2) && ~isempty(yAxis2))
		plot(xAxis2, yAxis2, "lineWidth", 2);
	end
	ttl1 = title(graphTitle);
	xlabel(graphXLabel);
	ylabel(graphYLabel);
	
	
	
	if (~isempty(graphLegend2))
		graphLegend1 = [graphLegend1, graphLegend2];
	end
	
	lgd1 = legend(graphLegend1);
	
	printSettings(graphTitle, hfig1, ttl1, lgd1, saveFig);

end



