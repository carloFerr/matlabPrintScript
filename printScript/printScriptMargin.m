function [] = printScriptMargin(graphTitle, transferFunction, axisEqualFlag, saveFig)

	[Gm, Pm, Wcg, Wcp] = margin(transferFunction);
	
	hfig1 = figure;
	
	margin(transferFunction);
	grid on; box on;
	h = findobj(gcf, 'Type', 'line');
	set(h, 'LineWidth', 2);
	Gm_dB = 20 * log10(Gm);
	titleStr = sprintf(': Gm = %.2f dB (at %.2f rad/s), Pm: %.2f Deg (at %.2f rad/s)', Gm_dB, Wcg, Pm, Wcp);
	graphTitleFinal = append(graphTitle, titleStr);
	
	ttl1 = title(graphTitleFinal);
	
	printSettings(graphTitle, hfig1, ttl1, '', axisEqualFlag, saveFig);

end



