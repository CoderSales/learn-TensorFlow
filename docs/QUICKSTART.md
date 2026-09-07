# Mac setup

Run these commands from the `learn-TensorFlow` folder in Terminal.

## Leave another environment first

If a Python virtual environment is active, run `deactivate` first.
If Conda is active, for example the prompt shows `(base)`, then run:

```bash
conda deactivate
```

Skip commands for environments that are not active. If Conda environments were
stacked, repeat `conda deactivate` until none is active. This changes the current
terminal session; it does not uninstall Anaconda or its packages.

## Use this repository's working TensorFlow environment

`.venv-tf` uses Python 3.12. The separate `.venv` on this Mac uses Python 3.14.
Use `.venv-tf` for the beginner TensorFlow notebook.

Create the environment only if its folder is missing. This command skips
creation when `.venv-tf` already exists, so you can use it on later visits too:

```bash
if [ ! -d .venv-tf ]; then
    uv venv --python 3.12 --seed .venv-tf
fi
```

If an earlier command asks to replace the environment, choose **no**. The
"already exists" error then means it was kept; continue with activation.

Activate it in the current terminal:

```bash
source .venv-tf/bin/activate
```

Alternatively, `source ./script3mac.sh` activates the same environment. Use
`source`, because `bash script3mac.sh` cannot activate the parent terminal.

Check the selected Python, upgrade pip, and install the saved package versions:

```bash
python --version
python -c 'import sys; print(sys.executable)'
python -m pip install --upgrade pip
python -m pip install -r requirements-mac.txt
python -m pip check
```

Expect Python 3.12 and a path ending in `learn-TensorFlow/.venv-tf/bin/python`.
`python -m pip` uses that selected Python environment for installation.

`requirements-mac.txt` records the environment verified with `beginner.ipynb`.
It does not establish that the advanced, classification, and CSV notebooks have
all been updated or tested. The original `requirements.txt` remains an older
snapshot containing Windows-specific packages and the obsolete formatter.

Open the beginner notebook:

```bash
bash run-beginner-mac.sh
```

This launcher uses `.venv-tf` directly, so activation is not required just to
launch it. In Jupyter, choose **Python 3.12 (TensorFlow)** if it is listed. On a
fresh setup, **Python 3 (ipykernel)** supplied by this environment is also valid.

## Save an updated package snapshot

After intentionally changing packages and checking the notebook still runs,
save the active TensorFlow environment:

```bash
python -m pip freeze > requirements-mac.txt
```

`freeze` writes the installed package versions; it does not install anything.
The `>` replaces the destination file, so review the Git diff afterwards. You
do not need to freeze again after every successful install from that file.

When finished, leave the active virtual environment with `deactivate`.

## General `.venv` workflow for another project

Use a Python version supported by that project. `python3 -m venv` uses whichever
Python `python3` currently resolves to. For this TensorFlow repository, use the
Python 3.12 instructions above instead of the default Python 3.14 on this Mac.

After leaving other active environments and entering the other project's folder:

```bash
python3 --version
python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m pip check
```

Create `.venv` only once; on later visits, start at the activation command. The
project must already supply a suitable `requirements.txt` for the install step.

After intentional dependency changes and a successful project check:

```bash
python -m pip freeze > requirements.txt
```

The filename is `requirements.txt`. This command overwrites it with a snapshot
of the currently active environment.

References: [Conda environment management](https://docs.conda.io/projects/conda/en/stable/user-guide/tasks/manage-environments.html),
[pip freeze](https://pip.pypa.io/en/stable/cli/pip_freeze/).
