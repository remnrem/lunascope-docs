# Lunascope v0.2.3

Lunascope is an interactive EEG and sleep signal viewer built on top
of the [Luna suite](https:/zzz-luna.org/luna).  It provides
synchronized visualization of signals, annotations, and sleep staging.

![Overview](imgs/p1b.png){ width="100%" }

## Documentation sections

| Sections | | | 
|---|---|---|
| [Installation](install.md) | Installing and running Lunascope | `pip install lunascope` |
| [Overview](overview.md) | Instructions for loading EDF files, annotation sets, and defining sample lists. | ![Overview](imgs/p1b.png){width="80%"} |
| [Loading Data](loading.md) | Instructions for loading EDF files, annotation sets, and defining sample lists. | ![Sample list dock](imgs/slist-dock.png){width="85%"} |
| [Signal Viewer](signal-viewer.md) | Main viewer for synchronized time navigation across channels. | ![Viewer example](imgs/luna-view-1.png){width="85%"} |
| [Signals](signals.md) | Signal selection and viewing options |  ![Signals dock](imgs/signals-dock.png){width="50%"} | 
| [Annotations](annotations.md) | Toggle annotation types, view event instances |  ![Annotations](imgs/annots-dock.png){width="45%"} |
| [Spectrograms](spectrograms.md)  | Time–frequency views and spectral summaries | ![Spectrograms](imgs/spectro-dock.png){width="90%"} |
| [Hypnograms](hypnograms.md) | Automatic and manual staging, including SOAP and POPS   | ![Hypnogram](imgs/hypno-hypno.png){width="90%"} |
| [Luna Scripts](scripts.md) | Examples of scripting workflows in Lunascope | ![Luna script output](imgs/luna-script.png){width="85%"} | 
| [Parameters](parameters.md) | Details of parameter configuration and editing through the parameter dock | ![Parameters](imgs/param-dock.png){width="40%"} |
| [Configuration](config.md) | Specifying channel ordering, coloring and other properties | ![HD EEG](imgs/luna-hd-1.png){width="80%"} |

## Development status

Lunascope is a new software package and v0.2.3 is an _alpha_ release.
As such, there are likely to be some [rough
edges](updates.md#known-issues) not yet smoothed. Feedback on bugs or
other issues is appreciated.

## Contact

Lunascope was created by Shaun Purcell and is developed and
maintained by Lorcan Purcell.

Questions: [luna.remnrem@gmail.com](mailto:luna.remnrem@gmail.com)

