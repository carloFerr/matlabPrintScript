function [hfig1, ttl1] = printScriptMultiplePlot3(title1, xLabel1, yLabel1, tLR, tLL, tlSimRX, tlSimRY, tlSimLX, tlSimLY)

	hfig1 = figure;
	hold on, grid on; box on;
	ttl1 = title(title1);
	xlabel(xLabel1);
	ylabel(yLabel1);
	if (~isempty(tLR) && ~isempty(tLL))
		plot(tLR.X, tLR.Y, "lineWidth", 2);
		plot(tLL.X, tLL.Y, "lineWidth", 2);
		plot(tlSimRX, tlSimRY, "lineWidth", 2);
		plot(tlSimLX, tlSimLY, "lineWidth", 2);
	end

end

