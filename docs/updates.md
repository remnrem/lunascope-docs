# Updates & known issues

## Updates

### v0.2.3 (1-Dec-2025)

 - new configuration support (filtering, y-lines, signal/annotation ordering/coloring, etc)

 - project-mode luna-script evaluation

 - save to .tsv as well as copy for output tables, and better handling of missing values

 - configurable POPS resource locations

 - fixed filtering of rendered signals

 - increased speed of rendering; display of SD, or min/max for continuous signals when zoomed out

 - mouse wheel control for zooming

 - toggle (`select none/all`) now works on the _filtered view_ for signal/annotation boxes

## Known issues

There are several known issues:

 - occassionally, channels will not display; refresh the recording

 - spectrograms, hypnograms and hypnodensity plots may not always indicate gaps (removed/masked epochs)

 - user-defined filters only work for Render mode

 - outside of Render mode, IIRs have edge effects (no padding)

