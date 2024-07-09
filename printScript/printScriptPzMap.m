function [] = printScriptPlot(	graphTitle, xAxis1, yAxis1, xAxis2, yAxis2, xAxis3, yAxis3, xAxis4, yAxis4, xAxis5, yAxis5, ...
									graphXLabel, graphYLabel, graphLegend1, graphLegend2, graphLegend3, graphLegend4, graphLegend5)

hfig1 = figure;
hold on, grid on;
plot(xAxis1, yAxis1, "lineWidth", 2);
if (~isempty(xAxis2) && ~isempty(yAxis2))
	plot(xAxis2, yAxis2, "lineWidth", 2);
end
if (~isempty(xAxis3) && ~isempty(yAxis3))
	plot(xAxis3, yAxis3, "lineWidth", 2);
end
if (~isempty(xAxis4) && ~isempty(yAxis4))
	plot(xAxis4, yAxis4, "lineWidth", 2);
end
if (~isempty(xAxis5) && ~isempty(yAxis5))
	plot(xAxis5, yAxis5, "lineWidth", 2);
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
if (~isempty(graphLegend4))
	graphLegend1 = [graphLegend1, graphLegend4];
end
if (~isempty(graphLegend5))
	graphLegend1 = [graphLegend1, graphLegend5];
end

lgd1 = legend(graphLegend1);

printSettings(hfig1, ttl1, lgd1);

end



