# Overview

Lunascope is organized as a set of synchronized panels, or docks.

![Overview](imgs/n/overview.png)

The central signal viewer is always present. Other docks can be shown,
closed, detached, or repositioned to match your workflow, whether from
the menu, by shortcut, or through a [config](config.md) file. There
are also floating docks for [multiday actigraphy](actig.md),
[NSRR/Moonbeam access](moonbeam.md), and the multi-tab
[Explorer](explorer.md).

Lunascope caches the layout of all docks when closing and re-opening.
To quickly return to the default layout, press `C-R`.

## Main menu

Lunascope has a main menu with four tabs: ___Project___, ___Views___, ___Palettes___ and ___About___.

The ___Project___ menu contains the main file and session actions:
loading EDFs, [annotations](annotations.md), or [sample lists](loading.md);
exporting or dropping data; refreshing the current record; running
project-level evaluation; and saving or restoring [sessions](sessions.md).
It also includes shortcuts for downloading POPS resources and the
tutorial dataset.

![Project menu](imgs/n2/menu1.png){ width=35% }

The ___Views___ menu shows or hides individual docks, indicates which
ones are currently open, and lists the associated keyboard shortcuts.
It also provides access to [Moonbeam](moonbeam.md),
[Explorer](explorer.md), [Annotator](annotations.md), the
[command help](commands.md) dock, a global show/hide toggle for all
docks, and fullscreen mode.

![View menu](imgs/n2/menu2.png){ width=35% }

## Keyboard shortcuts

On Windows and Linux, `C` means the _Control_ key; on macOS, it means _Command_.  The `Alt` key on macOS is the _Option_ key.

| Primary docks | | | |
|---|---|---|---|
| [Sample lists](loading.md) | `C-1` | [Hypnograms / actigraphy](hypnograms.md) * | `C-7` |
| [Parameters](parameters.md) | `C-2` | [Luna script console](scripts.md) | `C-8` |
| [Signals](signals.md) | `C-3` | [Output tables](scripts.md) | `C-9` |
| [Annotation classes](annotations.md) | `C-4` | [Masks](masks.md) | `C--` |
| [Annotation events](annotations.md) | `C-5` | [Command help](commands.md) | `C-/` |
| [Spectrograms](spectrograms.md) | `C-6` | | |
| Toggle signals-only / all-docks | `C-0` | Reset layout | `C-R` |
| __Special modules__ | | | |
| Signal Properties… | `C-P` | Annotation Properties… | `C-A` |
| Toggle [Explorer](explorer.md) | `C-E` | Toggle [Moonbeam](moonbeam.md) | `C-M` |
| Toggle [Annotator](annotations.md) | `C-Shift-A` | Toggle Snapshots | `C-Shift-C` |
| Cycle modules (forward / back) | <code>C-&#96;</code> / <code>C-Shift-&#96;</code> | | |
| __Viewing options__ | | | |
| Increase UI font size | `C-Shift-=` | Decrease UI font size | `C-Shift--` |
| Reset UI font size | `C-Shift-R` | | |
| __Other functions__ | | | |
| Refresh (reLoad) attached EDF | `C-L` | Cancel project evaluation | `C-.` |
| Evaluate console [script](scripts.md) | `C-RET` | Refresh & evaluate console [script](scripts.md) | `C-Alt-RET` |
| Evaluate console [script](scripts.md) _across all_ EDFs | `C-Shift-RET` | | |



`*` when multiday mode is detected, `C-7` switches from the hypnogram dock to the actigraphy dock.




---

Previous: [Installation](install.md) | Next: [Loading/Saving Data](loading.md)
