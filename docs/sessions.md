# Sessions

Lunascope can save and restore session files with a `.lss`
extension. Sessions are useful when you want to return to the same
layout and working state without rebuilding the view from
scratch. Session restore is designed to preserve:

 - window geometry and dock placements

 - dock visibility and floating state

 - text buffers such as Parameters, Config, and Console text

 - many checkboxes, spinboxes, combo-box values, and active tabs

If the current project came from a sample list, Lunascope will also
try to reload that sample list and re-select the previously selected
row.

Separate from explicit session files, Lunascope also keeps a
lightweight cached copy of the current window geometry and dock layout
between launches. That automatic restore is useful for day-to-day use,
whereas `.lss` files are intended for deliberate saved workspaces that
you may want to reopen later or share across machines.

Sessions can be saved and loaded from the _Project_ menu, and they can
also be restored directly from the command line:

```bash
lunascope prior-session.lss
```
