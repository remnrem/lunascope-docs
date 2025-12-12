# Installation


## Requirements

Lunascope is supported for Python 3.10 to 3.13.

Ideally, use a Python _virtual environment_: e.g.

```
python3.13 -m venv myenv
```
and active it (on macOS/Linux):
```
source myenv/bin/activate    # macOS / Linux
```
or on Windows:

```
myenv\Scripts\activate       # Windows
```

## Download

Download `lunascope` with `pip` 

```
pip install lunascope
```

This will also install the dependent packes including [`lunapi`](https://zzz-luna.org/luna/lunapi/).

__Note:__ you may have to use `python3` and `pip3` on some platforms. 

## Running Lunascope

To run Lunascope, type from the command line:
```
lunascope
```
or (on some platforms):
```
python -m lunascope
```

__Note:__ On first run, Lunascope will pause for a few moments while key libraries are configured; start-up will be faster on subsequent runs.

## Passing additional arguments

To open Lunascope with a particular EDF:

```
lunascope sleep1.edf
```

To open Lunascope with a particular annotation file (.annot or .xml as [described here](https://zzz-luna.org/luna/ref/annotations/#luna-annotations)):

```
lunascope sleep1.annot
```

To open Lunascope with a particular [sample list](https://zzz-luna.org/luna/luna/args/#sample-lists)

```
lunascope s.lst
```

To open Lunascope with a particular [parameter file](https://zzz-luna.org/luna/luna/args/#parameter-files) applied, use the `-p` argument, e.g.:

```
lunascope s.lst -p my-param.txt
```

To open Lunascope with a particular [configuration file](config.md) applied, use the `-c` argument, e.g.:

```
lunascope s.lst -c hd-eeg.cfg
```

## Updating Lunascope

If new versions are available, force an upgrade with:

```
pip install --upgrade lunascope
```



