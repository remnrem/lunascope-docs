# Updates & known issues

## Updates

### v0.9.9

 - new floating docks for multiday actigraphy, Moonbeam, and the multi-tab Explorer
 - multiday actigraphy mode for recordings spanning multiple days
 - Moonbeam support for browsing and downloading NSRR datasets into a local cache
 - new Explorer views for cohort-level annotation summaries, hypnogram overviews, peri-event waveforms, and output-table plotting
 - session save/load support via `.lss` files
 - output-table save/load support for full result sets, including `.pkl`, `.zip`, and Luna `.db`
 - new built-in Command help dock for browsing Luna commands, parameters, outputs, and variables
 - expanded configuration support for filtering, y-lines, signal/annotation ordering and coloring, actigraphy day anchoring, and signal modulation (`sigmod`)
 - project-mode Luna-script evaluation
 - configurable POPS resource locations
 - in-app POPS resource downloader
 - tutorial-data downloader that can fetch and open a working sample project
 - automatic restore of window geometry and dock layout between launches
 - direct startup from a recordings folder, building a sample list automatically
 - annotation-instance metadata shown in the Instances dock when present
 - left-mouse measurement probe / caliper in the main signal viewer
 - fixed filtering of rendered signals
 - faster rendering, plus SD or min/max summaries for continuous signals when zoomed out
 - mouse-wheel zoom control
 - all/none toggles now work on the filtered view in the signal and annotation docks

## Known issues

Current known issues:

 - user-defined filters only work in Render mode
 - outside Render mode, IIRs have edge effects because there is no padding
