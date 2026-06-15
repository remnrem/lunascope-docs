# Explorer

The _Explorer_ is an experimental floating multi-tab dock for
higher-level visual summaries across annotations, staging, signals,
and output tables. Features may be added, changed, or refined over
time.

Open it from the _View_ menu or press `Ctrl/Cmd-E`.

## Tabs

The Explorer includes several tabs:

 - _Harmonizer_ : project-wide summaries of signal and annotation naming across the current sample list

 - _Annotations_ : cohort-level summaries and direct overlap analyses across the current sample list or a compiled cache

 - _Hypnoscope_ : summaries of staging across _all individuals_ in the current sample list (or cached)

 - _Waveforms_ : event-locked visualizations of signals for the current attached recording

 - _Tables_ : descriptive summary tables from the current output tables

 - _Plotter_ : plots of the current [output dock](scripts.md#output-dock)

 - _Assoc_ : group-level association workflows for phenotypes, signals, and covariates

 - _Filter Design_ : interactive filter-design and response-plotting tools

 - _Topo_ : experimental topographic displays for channel-level summaries

## Annotation Explorer

![imgs/v2/explorer-annots.png](imgs/v2/explorer-annots.png){ width="90%" } 

The _Annotations_ tab compiles annotations across the whole sample
list and supports several cohort-level views:

 - _Peri-event (PETH)_ (example above)

 - _Overlap matrix_

 - _Nearest-neighbour_

 - _Event raster_

 - _Temporal occupancy_

 - _Duration distribution_

 - _Inter-event intervals_

 - _Luna OVERLAP_

In addition to compiling across the project, the tab can save or load
compiled caches, export figures, choose a reference annotation class,
and adjust the analysis window, histogram bin width, and raster gap.

For compiled cohort caches, Lunascope can also merge an external
covariate table that contains an `ID` column. Low-cardinality columns
from that table can then be used as ID-level filters, making it easier
to restrict the cohort to a subgroup before plotting or computing
summary statistics.

The _Luna OVERLAP_ mode exposes the native Luna `OVERLAP` analysis from
within the Explorer. You provide the `OVERLAP` arguments directly in a
free-text box, and choose whether to run on the _current subject_ or on
a _compiled cohort_ timeline assembled from the current cache or sample
list. In compiled-cohort mode, Lunascope concatenates individuals onto
a non-overlapping synthetic timeline and inserts subject-boundary
markers so background-restricted permutations still operate within
person.

All returned Luna output tables are pushed to the standard _Outputs_
dock. This makes it possible to inspect the full `OVERLAP` result set,
including the usual seed-seed and seed-other summary tables, while
keeping the setup inside the annotation workflow.

## Hypnoscope

![imgs/v2/explorer-hypnoscope.png](imgs/v2/explorer-hypnoscope.png){ width="90%" }

The _Hypnoscope_ tab compiles staging annotations across the full
sample list and renders a cohort hypnogram grid.

It supports project-wide compilation, cache save/load, figure export,
alignment by _Clock time_, _Elapsed recording_, or _Elapsed sleep_,
and sorting by alphabetical order, clock start, sleep efficiency, TST,
or sleep-onset latency. This is intended as a compact cohort-level
overview of staging timing and structure.

## Waveforms

![imgs/v2/explorer-waveform-1.png](imgs/v2/explorer-waveform-1.png){ width="90%" }

The _Waveforms_ tab extracts peri-event signal windows from the
currently attached record. You choose an annotation class, one or more
EDF channels, pre-event and post-event windows, alignment to event
_Start_, _Midpoint_, or _Stop_, and whether to baseline-subtract each
extracted trace.

The resulting display overlays individual traces together with a mean
trace and confidence interval summary.

For single-record analyses, the tab also supports optional outlier
handling on extracted traces. Outlying windows can either be left as
is, winsorized, or removed entirely using a user-selected SD-based
threshold.

## Plotter

![imgs/v2/explorer-out2.png](imgs/v2/explorer-out2.png){ width="90%" }

The _Plotter_ tab turns output tables from the _Outputs_ dock into
figures. It supports auto-selected or explicit plot types (`scatter`,
`line`, `bar`, `histogram`, `box`), X and Y variable selection,
optional log scaling on either axis, two grouping variables, and
either _Overlay_ or _Separate_ display for each grouping variable. It
can also merge an external TSV/CSV covariate file as long as that file
contains an `ID` column.

A row-subsetting control can be used to filter the current output table
before plotting. This is useful when a Luna output contains multiple
strata or analysis passes but only a subset should be shown in the
figure.

When an X-axis factor looks numeric, the Plotter sorts it numerically
rather than lexicographically. This avoids orderings such as `1, 10,
11, 2, 3` when plotting epoch numbers, bins, lags, or similar indexed
variables.

Note, when first loading a stratified table, for example by channel,
the initial plot will combine all strata: here channels are
interleaved effectively:

![imgs/v2/explorer-out1.png](imgs/v2/explorer-out1.png){ width="90%" }

Selecting the `CH` to be the _Group 1_ stratifier yields a plot with
two lines, one per unique value of `CH` (as above). You can also
select _Separate_ instead of _Overlap_ to get multi-panel
representations of the same data:

![imgs/v2/explorer-out-3.png](imgs/v2/explorer-out-3.png){ width="90%" }

## Tables

The _Tables_ tab summarizes numeric columns from output tables. It
supports selecting one or more measures, optional grouping by one or
two factors, row filters, covariate-file merging, selectable summary
statistics, and either grid-style or publication-style table output.

## Filter Design

The _Filter Design_ tab builds and visualizes filter specifications
before they are used in scripts or configuration files. It supports
FIR, CWT, and narrow Gaussian designs, with response plots, command
text, and safeguards for large kernels and Nyquist-edge designs.

## Caches and exports

The cohort-level _Explorer_ tabs are designed to avoid repeated
recompilation: the _Annotations_ tab can save and load compiled
annotation caches, and the _Hypnoscope_ tab can do the same for
staging caches. All tabs also provide figure export for reports and
presentations.

---

Previous: [Actigraphy](actig.md) | Next: [Configuration](config.md)
