#!/bin/bash
# From the repository folder, run: source ./script3mac.sh

if [ -n "${BASH_VERSION:-}" ] && [ "${BASH_SOURCE[0]}" = "$0" ]; then
    printf 'Use: source ./script3mac.sh\n' >&2
    exit 1
fi
if [ -n "${ZSH_VERSION:-}" ]; then
    case "$ZSH_EVAL_CONTEXT" in
        *:file) ;;
        *) printf 'Use: source ./script3mac.sh\n' >&2; exit 1 ;;
    esac
fi

if [ -n "${CONDA_PREFIX:-}" ]; then
    printf 'Run conda deactivate first, then source ./script3mac.sh.\n' >&2
    return 1
fi
if [ ! -f "$PWD/.venv-tf/bin/activate" ]; then
    printf 'Run this from learn-TensorFlow after creating .venv-tf; see docs/QUICKSTART.md.\n' >&2
    return 1
fi

. "$PWD/.venv-tf/bin/activate"
printf 'Active Python: %s\n' "$(command -v python)"
