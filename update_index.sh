#!/bin/sh
cat index_head.md >index.md
ls screenshots|sed 's/\([^.]*\).*/* [\1](screenshots\/\1.png)/' >>index.md
ls screenshots|sed 's/\([^.]*\).*/\n### \1\n![\1](screenshots\/\1.png)/' >>index.md
cat index_tail.md >>index.md
