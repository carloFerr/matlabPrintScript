# MatlabPrintScript

Contains all necassary code to print matlab figures with LaTeX fonts


It allows to print plots, multiple plots, margin, pzmaps, , grids, axis equal and an option to Save the Figures in different format files (.fig, .svg, .eps, .png).


Possible to use colorbars (future updates).

## Set Up Guide

Just follow this guide:

1 - Add this repository as a SUBMODULE to your main project repository

2 - Simply add with subfolders the "matlabPrintScript" to your Matlab path. Or add it to your Matlab_Project.prj

3 - 


## Guide: How to plot on Figures

Just keep in mind the following idea: you will only need to write in one line (printScript function/s) all you need to plot. This will keep things simple, and will save you a lot of time when you have to plot multiple figures.


Rules:

1 - type "printScript" and then the type of plot you would like to see. For example, if you want to plot a line, just write "printScriptPlot". If you want a margin/bode diagram, type "printScriptMargin". If you want to plot 2, 3 4 or 5 lines on a single figure, just type "printScriptPlot2", "printScriptPlot3", "printScriptPlot4" or "printScriptPlot5"

Now, the following options must be added. If you want to skip one, simply put '' and the command will be ignored.


1 - Title: insert the title of the plot as 'Plot Title'. Please do not use "" if you want to save the figure with saveFigure option (see xxx).

2 - X - axis line: 

3 - Y - axis line:

4 - X - axis caption: for example, if your X - axis is time, insert "time [s]". Do not use '' with saveFigure option.

5 - Y - axis caption: for example, if your Y - axis is velocity, insert "velocity [$m/s$]". Do not use '' with saveFigure option.

6 - Line Legend caption: for example, if the line represents the velocity of a car, write "Car Velocity". Do not use '' with saveFigure option.

7 - Axis equal option: in the case of, for example, gg-plots or XY plots, you may desire to have "axis equal" option. Insert 0 if you don't need it, or 1 if you need it.

8 - Save Figures option: if you want to have your figures saved in .fig, .eps, .svg and .png formats, please insert 1 in this field. Otherwise, 0. NOTE: in this mode, any figure will be saved with name present in the "Title" field. No title = no    	saving. Please notice that any special caracter will be removed, also all spaces will be removed from the name.


By default, all plots are saved with grid on, box on (and hold on) options. You can always add any other options after the line used to print the plot. However, you must not use saveFigures option, otherwise you will get an error.


Always keep in mind that any of this characters will be interpreted as LaTeX font. Feel free to write symbols and expressions as you do in latex.
