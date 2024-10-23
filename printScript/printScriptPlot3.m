function [] = printScriptPlot3(	graphTitle, xAxis1, yAxis1, xAxis2, yAxis2, xAxis3, yAxis3, ...
									graphXLabel, graphYLabel, graphLegend1, graphLegend2, graphLegend3, saveFig)

	hfig1 = figure;
	hold on, grid on; box on;
	plot(xAxis1, yAxis1, "lineWidth", 2);
	if (~isempty(xAxis2) && ~isempty(yAxis2))
		plot(xAxis2, yAxis2, "lineWidth", 2);
	end
	if (~isempty(xAxis3) && ~isempty(yAxis3))
		plot(xAxis3, yAxis3, "lineWidth", 2);
	end
	ttl1 = title(graphTitle);
	xlabel(graphXLabel);
	ylabel(graphYLabel);
	
	
	
	if (~isempty(graphLegend2))
		graphLegend1 = [graphLegend1, graphLegend2];
	end
	if (~isempty(graphLegend3))
		graphLegend1 = [graphLegend1, graphLegend3];
	end

	
	lgd1 = legend(graphLegend1);
	
	printSettings(graphTitle, hfig1, ttl1, lgd1, saveFig);

end



