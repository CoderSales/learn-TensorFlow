# Mac

## Conda

```bash
if [ -n "${VIRTUAL_ENV:-}" ]; then deactivate; fi
while [ "${CONDA_SHLVL:-0}" -gt 0 ]; do conda deactivate || break; done
```

## Create once

```bash
uv venv --python 3.12 --seed .venv-tf
```

## Activate

```bash
source .venv-tf/bin/activate
```

## Install

```bash
python -m pip install --upgrade pip
python -m pip install -r requirements-mac.txt
python -m pip check
```

## Run

```bash
bash run-beginner-mac.sh
```

## Save after testing

```bash
python -m pip freeze > requirements-mac.txt
```

## Finish

```bash
deactivate
```
