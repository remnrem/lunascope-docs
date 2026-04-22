# Updates & known issues

## Updates

### v1.5.2

Major additions in the current 1.5.2 line include:

 - floating multiday Actigraphy, Moonbeam, Explorer, and Annotator docks
 - multiday actigraphy mode for recordings that span multiple days
 - Moonbeam support for browsing NSRR datasets, downloading them into a local cache, and populating the sample list from cached recordings
 - a four-tab Explorer dock with cohort-level annotation summaries, hypnogram overviews, peri-event waveform views, and output-table plotting
 - session save/load via `.lss` files, including restore of internal sample-list rows and selected sample
 - output-table save/load support for full result sets, including `.pkl`, `.zip`, and Luna `.db`
 - project-mode Luna-script evaluation
 - a built-in Command help dock for browsing Luna commands, parameters, outputs, and variables
 - in-app POPS resource download/configuration and tutorial-data download/open support
 - automatic restore of window geometry and dock layout between launches
 - direct startup from a recordings folder, with automatic sample-list building
 - a compact ID-first sample-list view with expandable EDF/annotation details
 - direct EDF or annotation loading as internal sample-list entries, with better restore of those internal rows across sessions
 - automatic detection of a matching annotation file when opening an EDF
 - the option to append an annotation file onto the currently loaded record instead of replacing it
 - export of the current in-memory EDF plus selected annotations, including optional compression and XML annotation export
 - dropping selected channels and/or annotation classes from the in-memory EDF instance
 - keyboard-driven annotation markup through the floating Annotator dock, with epoch, point, and interval capture modes
 - on-the-fly PSD viewing in the main signal pane, with frequency-range controls, linear or dB display, and support in both Render and non-Render views
 - annotation-instance metadata shown in the Instances dock when present
 - left-mouse measurement probe / caliper support in the main signal viewer
 - mouse-wheel zoom and additional main-view navigation polish
 - trace-view line-weight control
 - improved annotation-jump window sizing and better zero-line / filtering redraw behavior
 - expanded configuration support for filtering, y-lines, signal/annotation ordering and coloring, actigraphy day anchoring, and signal modulation (`sigmod`)
 - faster rendering, plus SD or min/max summaries for continuous signals when zoomed out
 - all/none toggles now operate on the filtered view in the signal and annotation docks

## Known issues

Current known issues:

 - outside Render mode, IIR filters can still show edge effects because there is no padding
