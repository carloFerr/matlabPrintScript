# matlabPrintScript

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

2 - 
