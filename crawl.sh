#!/bin/bash

python3 arxiv_daemon.py --num 10000 --break-after 0

if [ $? -eq 0 ]; then
    echo "New papers detected! Running compute.py"
    python3 compute.py
else
    echo "No new papers were added, skipping feature computation"
fi
