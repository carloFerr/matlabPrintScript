function [] = printSettings(graphTitle, hfig1, ttl1, lgd1, save)

	set(findall(hfig1,'-property','Interpreter'),'Interpreter','latex') 
	set(findall(hfig1,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
	
	set(findall(hfig1,'-property','FontSize'),'FontSize', 20)
	if (~isempty(lgd1))
		set(findall(lgd1, '-property', 'FontSize'), 'FontSize', 16)
	end
	
	set(findall(ttl1, '-property', 'FontSize'), 'FontSize', 24)
	set(findall(ttl1, '-property', 'Interpreter'), 'Interpreter', 'latex')

	if (save)
		filePath = fullfile(pwd, 'Figures\');
		fileName = strrep(graphTitle, ' ', '_');
		fileName = strrep(fileName, ':', '');

		set(hfig1, 'WindowState', 'maximized');
		
		saveas(gcf, [filePath, fileName '.svg']);
		addFile(currentProject, [filePath, fileName '.svg']);
		saveas(gcf, [filePath, fileName, '.png']);
		addFile(currentProject, [filePath, fileName '.png']);
		saveas(gcf, [filePath, fileName, '.eps']);
		addFile(currentProject, [filePath, fileName '.eps']);
		savefig([filePath, fileName, '.fig']);
		addFile(currentProject, [filePath, fileName '.fig']);
	end

end

