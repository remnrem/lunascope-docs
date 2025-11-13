# Loading Data / Sample Lists

![Sample List Dock](imgs/slist-dock.png)

## Inputs

This dock supports different ways to input EDF and annotation data:

 - _Load_ : load a _sample list_

 - _Build_ : build a sample list by pointing to a folder (Lunascope
   will search for all EDFs, and pair matching annotation files),
   effectively building a sample-list on-the-fly

 - _EDF_ : load a single EDF

 - _Annot_ : load a single annotation file (i.e. no signal data)

 - _Refresh_ : reload an already attached record, removing any manipulations added (e.g. masking, filtering)
 
## Staging

By default, Lunascope will pop up a warning if no staging information is present (annotations mapped to `N1`, `N2`, `N3`, `R`, `W` and `?`).
If you are not expecting staging to be present, unchecking the _Staging_ checkbox disables this warning. 

## Selecting individuals

If you've multiple indivdiduals via loading or building a sample-list, select the one to view by clicking on that row.

You can also filter the rows by entering text in the field above this table, e.g. to search for a particular recording.


