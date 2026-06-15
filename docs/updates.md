# Updates & known issues

## Updates

### v1.6.3

Highlights and smaller changes in the 1.6.3 line include:

 - expanded Explorer dock with Harmonizer, Tables, Assoc, Filter Design, and experimental Topo tabs
 - new Explorer Tables tab for descriptive summaries of output tables
 - Tables tab supports covariate merge, row filters, multiple measures, grouping, selectable statistics, and publication-style table view
 - Explorer Assoc workflow reorganized with clearer Build, Load, Select, Results, and Correl areas
 - Assoc observation filters can restrict the individual set before association runs
 - Filter Design tab adds narrow Gaussian filter design
 - Filter Design tab improves FIR defaults, Nyquist-edge handling, response summaries, and plotting performance for large filters
 - Time/Frequency dock replaces the older single spectrogram/Hjorth controls
 - Time/Frequency dock adds Welch, Hjorth, Multitaper, and IRASA modes
 - Multitaper supports whole-night epoch summaries and short-window zoom analysis
 - IRASA supports aperiodic and periodic component display
 - Spectrogram/Hjorth plots use tighter plotting layouts and optional legend/colorbar display
 - signal-channel labels in Time/Frequency controls include sample rate
 - main viewer Render now preserves the current window after clicking Render
 - main viewer avoids transient `0.0 : 0.0` range labels after render setup
 - newly selected channels outside the current render snapshot are labeled as not yet rendered
 - signal and annotation rows outside the current render snapshot are visually de-emphasized
 - Render button help/status distinguishes not rendered, current render, and stale render states
 - UI font scaling added with persistent larger/smaller/reset actions
 - signal-viewer text, ticks, and Explorer table output respond to font scaling
 - new Project menu action for creating an empty in-memory EDF
 - sample-list loading handles UTF-8 BOM files more robustly
 - result CSV/TSV and zipped result loading handles UTF-8 BOM files more robustly
 - sample-list path handling is more careful with relative paths and Windows-style absolute paths
 - filtering the sample list no longer implicitly loads a different record by row position
 - clicking or keyboard-selecting a real sample-list row still attaches that individual
 - sample-list engine sync is skipped when the table has not changed, avoiding stale row reloads
 - compact sample-list model preserves path-like text columns instead of numeric-coercing them
 - session restore avoids restoring transient action/toggle states that should not persist
 - automatic layout reset and dock shortcut behavior improved
 - optional attach profiling added via `LUNASCOPE_PROFILE_ATTACH`
 - Windows text panels use a more stable monospace font size
 - POPS/SOAP cleanup avoids stale plot/slot references after channel changes
 - event/instances table rebuilding is faster and keeps filters wired across rebuilds
 - annotation instance metadata lookup is faster for large annotation tables
 - output table rendering and Explorer table summaries have additional tests
 - helper tests cover dock shortcuts, path handling, and UTF-8 result loading

### v1.5.2

Earlier additions in the 1.5.2 line include:

 - floating multiday Actigraphy, Moonbeam, Explorer, and Annotator docks
 - multiday actigraphy mode for recordings that span multiple days
 - Moonbeam support for browsing NSRR datasets, downloading them into a local cache, and populating the sample list from cached recordings
 - a four-tab Explorer dock with cohort-level annotation summaries, hypnogram overviews, peri-event waveform views, and output-table plotting
 - Annotation Explorer support for covariate-assisted ID filtering and direct in-app Luna `OVERLAP` analyses on either the current subject or a compiled cohort timeline
 - Plotter support for row subsetting and numeric ordering of numeric-looking factor levels
 - Waveforms support for optional single-record outlier handling, including winsorization or removal of extreme extracted traces
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
 - the option to attach an annotation folder onto an existing sample list and to save the resulting sample list back to disk from the GUI
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
 - attached annotation paths can occasionally persist longer than intended across some append or project-eval workflows, which may lead to incorrect file lookups on a later individual or repeated IDs in batch-written annotation exports
 - in Explorer Waveforms, annotation-linked signal or channel menus can occasionally remain stale after commands that add new derived annotations; switching tabs or refreshing the relevant view repopulates the menus
 - write-based Luna commands can behave slightly differently inside a long-lived Lunascope session than in a fresh command-line invocation, because the attached in-memory EDF state persists across commands

---

Previous: [Sessions](sessions.md)
