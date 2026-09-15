#!/usr/bin/env bash

set -euo pipefail

git shortlog -sn HEAD > commits_report.txt
