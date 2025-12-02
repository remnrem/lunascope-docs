# Parameters

The _Parameters_ dock is used for passing [special
variables](https://zzz-luna.org/luna/luna/args/#special-variables)
that are applied:

 - when first attaching a new individual's data

 - when hitting _Refresh_ (to reload the individual's data anew) 

 - when executing a Luna script

_Parameters (Luna) versus configurations (Lunascope)_: note that the
_Param_ tab described here passes instructions to the core Luna
engine; in contrast, the [_Config_](config.md) tab is used to specify
settings that are specific to the Lunascope viewer.


![Parameter Dock 2](imgs/param-dock2.png){ width="50%" }

It can sometimes be necessary to specify parameters to allow data to be loaded - e.g. if the annotations have a nonstandard YMD date format, one would add `date-format=YMD` or else Lunascope would give an error when first trying to load those.   This is equivalent to the options that come before the main Luna script:

```
luna s.lst 1 date-format=YMD th=2.5 @param.txt -o out.db < script.txt
```
i.e. in the above,

 - `date-format` is a [special variable](https://zzz-luna.org/luna/luna/args/#special-variables) that controls Luna's behavior

 - `th` is a user-defined variable, i.e. that is required by the `script.txt` Luna script, for example

 - `@param.txt` includes a file of other parameter values; here one would directly _Load_ `param.txt` into this dock (and add other options as desired)


## Aliases and remapping

One common use of parameter files is to rename signals (`alias`) and
annotations (`remap`).  If these are defined _on loading_, then the
Signals and Annotation docks will display those mapped labels, rather
than the originals.

By default Luna includes some default mappings (unless `annot-remap=F`
and/or `nsrr-remap=F` is set).  The Parameters tab can be used to view
the currently defined variables, and also to show the current set of
(internal and/or user-defined) signal and annotation mappings:

![Parameter Dock](imgs/param-dock.png){ width="50%" } 

## Loading parameter files

You can specify a parameter file when initiating Lunascope from the command line with the `-p` option:

```
lunascope s.lst -p param.txt
```
which will pre-populate this dock with that file.


