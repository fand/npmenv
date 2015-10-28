#!/bin/sh

set -e

if [ -z "${PREFIX}" ]; then
  PREFIX="/usr/local"
fi

BIN_PATH="${PREFIX}/bin"
SHARE_PATH="${PREFIX}/share/npmenv"

mkdir -p "${BIN_PATH}"
mkdir -p "${SHARE_PATH}"

for file in bin/*; do
  cp "${file}" "${BIN_PATH}"
done

for file in share/npmenv/*; do
  cp "${file}" "${SHARE_PATH}"
done

echo "Installed npmenv at ${PREFIX}"
