# Installation

There are three main ways to use Lunascope:

 - [pre-built macOS / Windows application bundles](#pre-built-macos-windows-apps)
 - [a Python install via `pip`](#python-install)
 - [building from source from the GitHub repository](#building-from-source)

For most macOS and Windows users, the pre-built app may be the simplest
option. The Python install is better if you want command-line startup,
more control over the environment, or a setup that fits into an
existing Luna/Python workflow.

## Pre-built macOS / Windows apps

Standalone macOS and Windows application bundles are published from
the project's GitHub build/release workflow:

<https://github.com/Lorcan7274/lunascope/releases>

Download the archive for your platform, extract it, and launch the app
in the usual way for that platform.  On macOS, extract `Lunascope.app`
and open the _lunascope_ executable from Finder. On Windows, extract
the bundle and launch the `lunascope-bin` executable inside it.

!!! note "macOS security warning"
    Because the macOS build is
    distributed as a standalone archive, Gatekeeper may warn that the
    app is from an unidentified developer or cannot be opened, or give other
    ominous sounding messages about not being able to run the file.
    If that
    happens, try opening it once, dismiss the warning, then go to
    `System Settings -> Privacy & Security`, scroll to the message for
    Lunascope, and choose _Open Anyway_. You can also `Control`-click
    the app in Finder, choose _Open_, and then confirm.

!!! note "Windows security warning"
    Windows SmartScreen may warn that
    the app is unrecognized the first time you launch it. If that
    happens, choose _More info_ and then _Run anyway_. Make sure you
    extracted the full archive before launching the executable.

The pre-built app and the `pip install lunascope` route run the same
GUI. The practical differences are:

 - the pre-built app is the quickest way to start using the viewer on macOS or Windows
 - no Python, `pip`, or virtual environment setup is required
 - updates are obtained by downloading a newer build rather than upgrading with `pip`
 - command-line startup examples in the rest of this page apply directly to the Python install, whereas the packaged app is mainly opened through the GUI or platform file opening

## Python install

Lunascope is supported for Python 3.9 to 3.14.

It is best installed in a Python virtual environment:

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

## Running Lunascope

Start Lunascope from the command line:
```
lunascope
```
or (on some platforms):
```
python -m lunascope
```

__Note:__ The first launch can take a little longer while key libraries are initialized.

## Common startup forms

Open a specific EDF (requires `sleep1.edf` to be in the current directory):

```
lunascope sleep1.edf
```

Open a Luna annotation file directly:

```
lunascope sleep1.annot
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



## Updating Lunascope

Upgrade with:

```
pip install --upgrade lunascope
```

## Building from source

You can also clone the repository and build or run Lunascope from source:

<https://github.com/Lorcan7274/lunascope>

This is mainly useful if you want to modify the application, test unreleased changes, work on documentation and code together, or build your own local application bundle. For ordinary use, the pre-built app or `pip` install is usually the better choice.
