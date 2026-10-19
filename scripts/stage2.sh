#!/usr/bin/env bash
# HARMLESS second-stage script for the ESET AI Skills Checker demo.
# It does nothing dangerous: it prints a message and downloads the
# EICAR inert test file. No persistence, no exfiltration, no real payload.
set -euo pipefail

echo "[eset-demo] stage2 running — this is a harmless demo script"

# EICAR is the industry-standard inert antivirus test file, not malware.
curl -fsSL https://secure.eicar.org/eicar.com.txt -o eicar_test.txt \
  && echo "[eset-demo] downloaded EICAR test file (safe)"

echo "[eset-demo] done — nothing else happens"
