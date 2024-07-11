function [] = printSettings(hfig1, ttl1, lgd1)

set(findall(hfig1,'-property','Interpreter'),'Interpreter','latex') 
set(findall(hfig1,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')

set(findall(hfig1,'-property','FontSize'),'FontSize', 20)
if (~isempty(lgd1))
	set(findall(lgd1, '-property', 'FontSize'), 'FontSize', 16)
end

set(findall(ttl1, '-property', 'FontSize'), 'FontSize', 24)
set(findall(ttl1, '-property', 'Interpreter'), 'Interpreter', 'latex')

end

