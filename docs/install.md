# Installation

There are three main ways to install Lunascope:

 - [a Python install via `pip install lunascope`](#python-install)
 - [pre-built macOS / Windows application bundles](#pre-built-macos-windows-apps)
 - [building from source from the GitHub repository](#building-from-source)

If Python and pip are available on your system, this is the preferred
route: it is better if you want command-line startup, more control
over the environment, or a setup that fits into an existing
Luna/Python workflow.  It also affords easier updating to newer
versions of Lunascope. For macOS and Windows users, the pre-built app
is an alternative option that may be simpler if `pip` does not work.

_Either way, please read all the notes below to avoid common mistakes_.

## Python install

Lunascope is supported for Python 3.9 to 3.14. It is best installed in
a Python virtual environment:

```
python3 -m venv myenv
```
Then activate it:
```
source myenv/bin/activate    # macOS / Linux
```
or on Windows:

```
myenv\Scripts\activate       # Windows
```

Install `lunascope` with `pip`:

```
pip install lunascope
```

This also installs the required dependencies, including [`lunapi`](https://zzz-luna.org/luna/lunapi/).

__Note:__ You may have to use `python3` and `pip3` on some platforms.


## Pre-built macOS / Windows apps

Standalone macOS and Windows builds are published from the project's
GitHub build/release workflow under the
[`Releases`](https://github.com/Lorcan7274/lunascope/releases/)
link.

Download the installer for your platform from that page:

 - macOS: `Lunascope-macOS-Silicon-Desktop.dmg` or `Lunascope-macOS-Intel-Desktop.dmg`
 - Windows: `Lunascope-Windows-Desktop-Setup.exe`

The `Desktop` versions will install a single executable file.  The above link also
contains `Diagnostic` versions - these provide the same functionality, but are packaged differently and also
preserve the console logging output; here, just unzip and click on the Lunascope file to run.
If you have trouble with the Desktop version (e.g. due to a virus scanner or lack of permissions
to install new software), try the Diagnostic version instead. 

---

Open the downloaded file in the usual way for that platform. On macOS,
open the `.dmg`, then drag `Lunascope.app` into `Applications`. On
Windows, run the `.exe` installer and then launch Lunascope from the
Start menu or desktop shortcut.

!!! warning "Expected anti-malware / trust warnings"
    The macOS and Windows executables are not yet signed/notarized in a
    way that avoids all platform reputation checks. As a result, your
    browser, OS, or antivirus product may show alarming warnings on
    download or first launch. For now, this is expected behavior for
    the GitHub `Latest Build` binaries. If you are not comfortable
    bypassing those warnings, use the [`pip install lunascope`](#python-install)
    route instead.

!!! warning "macOS security warning"
    Gatekeeper may warn that Lunascope is from an unidentified
    developer, cannot be opened, or may harm your computer. This is the
    standard false-alarm workflow for an unsigned GitHub build.

    Try this sequence:

     - open `Lunascope.app` once and dismiss the warning
     - go to `System Settings -> Privacy & Security`
     - find the blocked-app message for Lunascope and choose _Open Anyway_
     - or `Control`-click the app in Finder, choose _Open_, and confirm

!!! warning "Windows security warning"
    Windows SmartScreen or antivirus tools may warn that the installer
    is unrecognized or suspicious the first time you run it. This is
    also expected for the current GitHub `Releases` executable.

    If SmartScreen appears, choose _More info_ and then _Run anyway_.
    If your browser or antivirus quarantines the download, restore it
    only if you intended to install the release from the official GitHub
    page above.

!!! warning "Slow startup on initial run"
    As noted above, when first run, Lunascope must initialize several
    resources and this can take time.  It is also possible that virus
    checking software may slow the initial start up.   Do not click multiple times,
    just give it a while after the first double-click. 


The pre-built app and the `pip install lunascope` route run the same
GUI. The practical differences are:

 - the pre-built app is the quickest way to start using the viewer on macOS or Windows if Python and `pip` are not available
 - updates are obtained by downloading a newer installer from `Releases` rather than upgrading with `pip`
 - command-line startup examples in the rest of this page apply directly to the Python install, whereas the packaged app is mainly opened through the GUI or platform file opening

## Updating Lunascope

Upgrade with:

```
pip install --upgrade lunascope
```

(or download a newer installer from `Releases`)

## Running Lunascope

Start Lunascope from the command line:
```
lunascope
```
or (on some platforms):
```
python -m lunascope
```

If you installed the application bundle, you'll have a Start Menu option or Desktop shortcut instead.

In both cases, the first launch can take a little longer while key libraries are initialized.



## Common startup forms

Starting from the command line offers some additional convenience features.

Open a specific EDF (requires `sleep1.edf` to be in the current directory):

```
lunascope sleep1.edf
```

Open a Luna annotation file directly:

```
lunascope annots/sleep1.annot
```

Open a [sample list](https://zzz-luna.org/luna/luna/args/#sample-lists):

```
lunascope s.lst
```

Open a folder and have Lunascope build a sample list from the EDFs inside it:

```
lunascope /path/to/recordings-folder
```

Apply a [parameter file](https://zzz-luna.org/luna/luna/args/#parameter-files) at startup:

```
lunascope s.lst -p my-param.txt
```

Apply a [configuration file](config.md) at startup:

```
lunascope s.lst -c hd-eeg.cfg
```

Restore a saved [session](sessions.md):

```
lunascope prior-session.lss
```




## Building from source

You can also clone the repository and build or run Lunascope from source:

<https://github.com/Lorcan7274/lunascope>

This is mainly useful if you want to modify the application, test unreleased changes, work on documentation and code together, or build your own local application bundle. For ordinary use, the pre-built app or `pip` install is usually the better choice.

---

Previous: [Home](index.md) | Next: [Overview](overview.md)
