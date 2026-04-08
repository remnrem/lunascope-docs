# Luna Scripts

Lunascope can execute **Luna scripts** to automate processing. The
console and output docks are hidden by default, but can be opened from
the View menu or with `Ctrl/Cmd-8` and `Ctrl/Cmd-9`.

## Script console

To apply `HEADERS` and `STATS`, similar to running

```
luna s.lst 1 -o out.db -s ' HEADERS & STATS sig=C3,C4 '
```
enter the script in the console:

![Script Example](imgs/luna-script.png)

## Output dock

After _Execute_, the returned tables appear in the output dock. For example, this table corresponds to:

```
destrat out.db +STATS -r CH
```

![Script Output](imgs/luna-script-out.png)

Tables can be transposed if that makes them easier to read.

![Script Output 2](imgs/luna-script-out2.png)

### Exporting tables

Selected cells can be copied and the current table can be saved as TSV. Exported tables always include column headers, and if a filter is active only the filtered rows are exported. The _Outputs_ dock can also save, load, or clear the full set of returned tables, not just the current one.

### Saving and loading output sets

Lunascope can save the full set of outputs in two formats:

 - `.pkl` : a saved output bundle containing the output tables and table tree
 - `.zip` : a zip archive containing one `.tsv` file per table plus a `_manifest.tsv`

It can also load:

 - `.pkl` output bundles

 - `.zip` output bundles

 - Luna `.db` databases

Loading a Luna `.db` is useful when results were generated outside the current Lunascope session, for example by command-line Luna.

Hovering over output-table column headers will also try to show the Luna variable description for that field.

<!-- TODO: add screenshot of the output dock save/load/clear controls -->
Placeholder image: [imgs/output-dock-save-load.png](imgs/output-dock-save-load.png)

<!-- TODO: add screenshot of loading a Luna .db into the Outputs dock -->
Placeholder image: [imgs/output-load-db.png](imgs/output-load-db.png)


---

## A more involved case

Here is a script that detects NREM spindles and slow oscillations. It
takes optional arguments and adds annotations for the detected events:

![Script 2](imgs/luna-script-2.png)

If we load this script and just press _Execute_, we'll get an error message:

![Script Error](imgs/luna-script-2-err.png){ width="50%" } 

This correctly notes that `${s}` is required but has not been specified. These values belong in the [Parameters](parameters.md) dock. In this example `${s}`, `${r}` (reference channels), and `${frqs}` (spindle frequencies) are defined there:

![Script Error](imgs/param-dock2.png){ width="50%" } 

This is now the equivalent to writing
```
luna s.lst 1 -o out.db s=C3 r=A1,A2 frqs=11,15 < spindle.txt
```
(assuming the Luna script is called `spindle.txt`).

Now it should run properly, assuming the channels exist and NREM annotations are present. Here it shows spindle metrics for fast and slow spindles (`F` = 15 and 11 Hz) across two channels:

![Script Output](imgs/luna-script-2-out.png)

The script also generates annotations (`SP11`, `SP15`, and `SO`) marking where detected events occur. These remain attached to the current in-memory record until _Refresh_ is used or a new EDF is loaded:

![Script Variant](imgs/luna-script-2-b.png){ width="60%"}

With the relevant EEG channels and annotations selected, those detected
events can then be explored in the viewer:

![Script Viewer](imgs/luna-script-2-view.png)


## Batch processing

Lunascope is built primarily for interactive review of a single record, but it can also apply a script across the current sample list.

___For non-trivial batch processing, use command-line Luna instead of
the interactive viewer.___


A batch job in Lunascope applies the current Luna script to all samples in the current sample list, iteratively. For example, this script enumerates the number of NREM and REM obstructive apnea events:

```
TAG STG/NREM
MASK ifnot=N1,N2,N3 
ANNOTS annot=Obstructive_Apnea

TAG STG/REM
MASK ifnot=R 
ANNOTS annot=Obstructive_Apnea
```

Instead of _Execute_, use _Project / Evaluate (project)_:

![Batch jobs](imgs/luna-script-batch-2.png){ width="50%" }

This loads each EDF sequentially, runs the job, and collates the output. Progress is shown in the status bar and the console updates as records are processed:

![Batch jobs](imgs/luna-script-batch-1.png){ width="70%" }

When finished, the final record is detached and the outputs are collated and displayed together, with an `ID` column added to each table so you can see which individual produced which row:

![Batch results](imgs/luna-script-batch-3.png){ width="100%" }

Lunascope still processes project jobs sequentially rather than in parallel, but the GUI remains responsive while they run. You can request cancellation with _Project / Evaluate (project)_ again or press `Ctrl/Cmd-.`; the current record is allowed to finish cleanly before the run stops. Lunascope also does not automatically save all outputs, so this is still best kept for light project-level jobs rather than serious batch pipelines.
