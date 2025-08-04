#!/bin/sh
cat index-head._md >index.md
ls screenshots|sed 's/\([^.]*\).*/* [\1](screenshots\/\1.png)/' >>index.md
ls screenshots|sed 's/\([^.]*\).*/\n### \1\n![\1](screenshots\/\1.png)/' >>index.md
cat index-tail._md >>index.md
