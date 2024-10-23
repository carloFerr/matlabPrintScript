function [hfig1, ttl1] = printScriptMultiplePlot(title1, xLabel1, yLabel1, tLR, tLL)

	hfig1 = figure;
	hold on, grid on; box on;
	ttl1 = title(title1);
	xlabel(xLabel1);
	ylabel(yLabel1);
	if (~isempty(tLR) && ~isempty(tLL))
		plot(tLR.X, tLR.Y, "lineWidth", 2);
		plot(tLL.X, tLL.Y, "lineWidth", 2);
	end

end

