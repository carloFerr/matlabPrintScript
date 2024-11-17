# MatlabPrintScript

Contains all necessary code to print Matlab figures with `LaTeX` fonts.

It allows to print `plots`, `multiple plots`, `margins`, `pzmaps`, `grids`, `axis equal`, and an option to save the figures in different format files (`.fig`, `.svg`, `.eps`, `.png`). It also supports `colorbars` (future updates).

## Set Up Guide

Just follow this guide:

1. Add this repository as a `SUBMODULE` to your main project repository.
2. Simply add the `matlabPrintScript` folder to your Matlab path, or add it to your Matlab project file (`.prj`).

## Guide: How to Plot on Figures

Keep in mind the following idea: you will only need to write in one line (printScript function/s) all you need to plot. This will keep things simple and save you a lot of time when you have to plot multiple figures.

### Rules

1. Type `printScript` and then the type of plot you would like to see. For example:
    - To plot a line, write `printScriptPlot`.
    - For a margin/bode diagram, type `printScriptMargin`.
    - To plot 2, 3, 4, or 5 lines on a single figure, type `printScriptPlot2`, `printScriptPlot3`, `printScriptPlot4`, or `printScriptPlot5`.

2. Now, the following options must be added. If you want to skip one, simply put '' and the command will be ignored.

### Plot Options

1. **Title:** Insert the title of the plot as 'Plot Title'. Do not use "" if you want to save the figure with the saveFigure option.
2. **X-axis line:** 
3. **Y-axis line:** 
4. **X-axis caption:** For example, if your X-axis is time, insert 'time [s]'. Do not use '' with the saveFigure option.
5. **Y-axis caption:** For example, if your Y-axis is velocity, insert 'velocity [m/s]'. Do not use '' with the saveFigure option.
6. **Line Legend caption:** For example, if the line represents the velocity of a car, write 'Car Velocity'. Do not use '' with the saveFigure option.
7. **Axis equal option:** In the case of gg-plots or XY plots, you may desire to have the "axis equal" option. Insert 0 if you don't need it, or 1 if you need it.
8. **Save Figures option:** If you want to save your figures in .fig, .eps, .svg, and .png formats, insert 1 in this field; otherwise, insert 0. NOTE: Any figure will be saved with the name present in the 'Title' field. No title = no saving. Special characters and spaces will be removed from the name.

By default, all plots are saved with grid on, box on, and hold on options. You can always add any other options after the line used to print the plot. However, you must not use the saveFigures option, otherwise you will get an error.

Always keep in mind that:
- any of these characters will be interpreted as LaTeX font. To change it, change the `printSettings.m` file
- Feel free to write symbols and expressions as you do in LaTeX.

## Examples

### - Plot a variabl in time domain

```
printScriptPlot1(sprintf('Episode %d Sideslip Angle', i-1), dataSingleE.experimentTime, dataSingleE.beta*180/pi, "Time [s]", "Angle [Deg]", "Sideslip Angle at Vehicle's COG", 0, saveFigures);
```

### - Plot Racetrack Bounds and Car Trajectory (XY Plot, with axis equal)

```
clear all
close all
clc

saveFigures = 0;

%%

limitsR = readtable("Melbourne_TrackLinesDx.csv");
limitsL = readtable("Melbourne_TrackLinesSx.csv");
raceLine = readtable("Melbourne_Race_Traj_MinLen.csv");


printScriptPlot3('Optimized Trajectory', limitsR.X, limitsR.Y, limitsL.X, limitsL.Y, raceLine.x_m, raceLine.y_m, "X [m]", "Y [m]", "Limits Right", "Limits Left", "Racing Line", 1, saveFigures);
```



