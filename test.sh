#!/bin/bash
python3 - <<'PY'
from app import add
assert add(1,2)==3
print("TEST PASSED")
PY
