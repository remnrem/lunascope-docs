# Color maps

Color maps are text files that can be used to specify the order or channels and the color of each line.  They can also control the order and color of annotations as well as signals.

## PSG mappings

This can be useful, e.g. in a standard PSG setting, to group channels by type (EEG, EMG, EOG, ECG, respiratory, etc):


```
C3	#4DA6FF
C4	#4DA6FF
A1	#4DA6FF
A2	#4DA6FF
LOC	#66CCFF
ROC	#66CCFF
EMG1	#FF9933
EMG2	#FF9933
EMG3	#FF9933
LEFT_LEG1	#FF9933
LEFT_LEG2	#FF9933
RIGHT_LEG1	#FF9933
RIGHT_LEG2	#FF9933
ECG1	#FF3333
ECG2	#FF3333
AIRFLOW	#33CC33
NASAL_PRES	#33CC33
THOR_EFFORT	#33CC33
ABDO_EFFORT	#33CC33
SNORE	#33CC33
SUM	#33CC33
SpO2	#CC00CC
OX_STATUS	#CC00CC
PULSE	#CC00CC
PlethWV	#CC00CC
POSITION	#CCCC00
Light	#999999
HRate	#009999

N1	#0066CC
N2	#0066CC
N3	#0066CC
R	#0066CC
W	#0066CC
Arousal_ASDA	#FF6600
ASDA_arousal	#FF6600
Hypopnea	#33CC33
SpO2_artifact	#CC00CC
SpO2_desaturation	#CC00CC
```

Here the colors are defined by hex codes, but you can use standard color labels too.

Maps can be applied either by adding the `-c` option on first starting Lunascope, or via the _Palette / Load/Apply bespoke palette_ Menu option.

```
lunascope s.lst -c psg.map
```

The above leads to this grouping/coloring of PSG channels (i.e. which is different from the order in the EDF)

![Viewer 1](imgs/luna-view-1.png){width="100%"}

## hd-EEG application

Lunascope supports visualization of high-density EEG recordings with hundreds of channels.   Here, we used a color-map to order hd-EEG channels along a anterior-posterior gradient, and color them respectively.   (A single prompt to ChatGPT was used to generate this file, in fact):

```
Fp1	#d9bd20
Fpz	#f2d224
Fp2	#fedc25
AF7	#d98620
AF3	#d98620
AFz	#f29524
AF4	#fe9c25
...
```

Applying this, and using the Y-axis scaling/spacing options as
[described here](signal-viewer.md), we can see some nice renderings of
NREM transients, here in a small 6-second window.

![HD EEG 5](imgs/luna-hd-5.png)

