#!/bin/bash #SHEBANG indicating my system's path to bash
set -e #terminate script if any command exits with a nonzero exit status
set -u #abort script if variable's value is unset
set -o pipefail #nonzero exit status in a pipe will cause the entire pipe to return a nonzero status

#I been creating text files peptides on each line, but they are preceded by leading spaces