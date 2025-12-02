# Signals

The Signals dock is used to select which are viewed (and be included in a rendered view), by checking/uncheckng the first _Sel_ column.

![Signals Dock](imgs/signals-dock.png){ width="60%" }

Other features include:

 - toggle between selecting _all_ or _none_ by clicking the top button (_Select all/none_)

 - you can filter rows by typing a comma-delimited list of channels,
   which is useful for quickly finding a channel in an EDF with dozens
   of channels; note that any _all_/_none_ toggle will only apply to the
   currently shown signals

 - you can apply on-the-fly filtering of signals (via a Butterworth
   IIR designed primarily for EEG channels); the _User_ option can be defined via
   a [config file](config.md).

 - PDIM shows the physical dimension (units) from the EDF header

 - SR shows the sample rate

 - you can specify the order of channels through a [channel
   map](hd-eeg.md), applied when first attaching the EDF



