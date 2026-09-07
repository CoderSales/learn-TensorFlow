#!/bin/bash
set -euo pipefail

notebook_repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
notebook_python="$notebook_repo_dir/.venv-tf/bin/python"

if [[ ! -x "$notebook_python" ]]; then
    printf 'The TensorFlow environment is missing. Set up .venv-tf first.\n' >&2
    exit 1
fi

cd "$notebook_repo_dir"
exec "$notebook_python" -m notebook "$notebook_repo_dir/notebooks/beginner.ipynb" "$@"
