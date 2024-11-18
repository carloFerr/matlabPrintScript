# MatlabPrintScript

Contains all necessary code to print `MATLAB figures` with `LaTeX` fonts and save them.

It allows to print `plots`, `multiple plots`, `margins`, `pzmaps`, `grids`, `axis equal`, and an option to `save figures` in different format files (`.fig`, `.svg`, `.eps`, `.png`). It also supports `colorbars` (future updates).

## Set Up Guide

Just follow this guide:

1. Add this repository as a `SUBMODULE` to your main project repository.
2. Simply add the `matlabPrintScript` folder to your Matlab path, or add it to your Matlab project file (`.prj`).

## Guide: How to Plot on Figures

Keep in mind the following idea: you will only need to write in one line (`printScript` function/s) all you need to plot. This will keep things simple and save you a lot of time when you have to plot multiple figures.

### Rules

1. Type `printScript` and then the type of plot you would like to see. For example:
    - To plot a line, write `printScriptPlot`.
    - For a margin/bode diagram, type `printScriptMargin`.
    - To plot 2, 3, 4, or 5 lines on a single figure, type `printScriptPlot2`, `printScriptPlot3`, `printScriptPlot4`, or `printScriptPlot5`.
    - If you don't know how many lines there will be in your plot, use `printScriptMultiplePlots` in a for loop ([see "Plot unknown number of lines in a single Figure" example](Plot-unknown-number-of-lines-in-a-single-Figure)).

2. See [Plot Options](Plot-Options) to understand how it works. Remember that any of those function options must be always present. In case you want to skip one, simply put `''` and the command will be ignored.

### Plot Options

#### `printScriptPlot1` options

1. **Title:** Insert here the title of the plot as `'Plot Title'`. Do not use `""` if you want to save the figure with the `saveFigure` option.
2. **X-axis line:** Put here the `data vector` for the X - Axis plane.
3. **Y-axis line:** Put here the `data vector` for the Y - Axis plane. Always make sure the size of the two vectors is the same.
4. **X-axis caption:** For example, if your X-axis is time, insert 'time [s]'. Do not use `''` with the `saveFigure` option.
5. **Y-axis caption:** For example, if your Y-axis is velocity, insert 'velocity [m/s]'. Do not use `''` with the saveFigure option.
6. **Line Legend caption:** For example, if the line represents the velocity of a car, write 'Car Velocity'. Do not use `''` with the saveFigure option.
7. **Axis equal option:** In the case of gg-plots or XY plots, you may desire to have the `"axis equal"` option. Insert `0` if you don't need it, or `1` if you need it. See figures in [ example]() to understand what `axis equal` looks like.
8. **Save Figures option:** If you want to save your figures in `.fig`, `.eps`, `.svg`, and `.png` formats, insert `1` in this field; otherwise, insert `0`. NOTE: Any figure will be saved with the name present in the `'Title'` field. No title = no saving. Special characters and spaces will be automatically and always removed from the name.

By default, all plots are saved with `grid on`, `box on`, and `hold on` options. You can always add any other options after the line used to print the plot. However, you must not use the saveFigures option, otherwise you will get an error.

NOTE: in a future update, a 9th option to use `grid minor` will be added.

Always keep in mind that:
- any of these characters will be interpreted as LaTeX font. To change it or any font option, check the `printSettings.m` file.
- feel free to write symbols and expressions as you would normally do in LaTeX.

#### `printScriptPlot2` and `3`, `4`, `5` options

The options are the same as for `printScriptPlot1` (see [`printScriptPlot1` options section](`printScriptPlot1`-options)), however, you must remind that any of the additional lines to be plotted must be followed by a corresponding `"Line Legend Caption"` ([see "Plot two variables in time domain" example](#Plot-two-variables-in-time-domain)).

The structure you need to follow is represented in the following scheme:

" future image to be added "

Here is a little explaination of the general structure of the `printScript` module:

1. **Title:** Area dedicated to the title. There must be only one title independently on the number of plotted lines.
2. **X-axis and Y-axis lines:** This area is dedicated for plotting the lines, you must provide the required amount of XY data couples to plot how many 2D lines you need.
5. **X-axis and Y-axis caption:** Space dedicated to the X and Y Axis caption. Notice that this is fixed size and accepts one label for X - Axis and one for Y - Axis. So there must always be only two spaces used by this data fields.
6. **Line Legend caption:** In this area you must name each of the plotted lines (couple of X-Y data). There must be one "name" per each line.
7. **Axis equal option.**
8. **Save Figures option.**

## Examples

### - Plot a variable in time domain

```
printScriptPlot1(sprintf('Episode %d Sideslip Angle', i-1), dataSingleE.experimentTime, dataSingleE.beta*180/pi, "Time [s]", "Angle [Deg]", "Sideslip Angle at Vehicle's COG", 0, saveFigures);
```

You can also go to new line as you would normally do in matlab using `...`:

```
printScriptPlot1(sprintf('Episode %d Sideslip Angle', i-1), dataSingleE.experimentTime, dataSingleE.beta*180/pi, ...
	"Time [s]", "Angle [Deg]", "Sideslip Angle at Vehicle's COG", 0, saveFigures);
```

### - Plot two variables in time domain

```
printScriptPlot2(sprintf('Episode %d Velocities', i-1), experimentTime, velocity , ...
		experimentTime, Vx, "Time [s]", "Velocity [$m/s$]", "Vehicle Velocity", ...
		"Vehicle Longitudinal Velocity", 0, saveFigures);
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


### - Plot unknown number of lines in a single Figure

```
%% Parameters and Track Info

episodeNo = "Episode_";
trackLimitsRight = readtable("Melbourne_TrackLinesDx.csv");
trackLimitsLeft  = readtable("Melbourne_TrackLinesSx.csv");
trackInfo  = readtable("Melbourne_TrackInfo.csv");

plotStart = 1;
plotEnd = length(episodeMeanActorLoss);

csvColorsPlot                    % Used for colorbar

%% Plot all episodes Data

graphTitle = 'AI Attempts Path';
[hfig1, ttl1] = printScriptMultiplePlot(graphTitle, "X [m]", "Y [m]", trackLimitsRight, trackLimitsLeft);
for i=plotStart:plotEnd
	pathSingleEpisode = append(path, episodeNo, sprintf('%d', i-1), ".csv");
	dataEpisode = readtable(pathSingleEpisode);
	
	if (~isempty(dataEpisode))
		plot(dataEpisode.x, dataEpisode.y, "lineWidth", 2, 'Color', colors(i, :));
	end
end
lgd = legend("Track Limits Right", "Track Limits Left");
createColorBar
printSettings(graphTitle, hfig1, ttl1, lgd, 1, saveFigures);
```



