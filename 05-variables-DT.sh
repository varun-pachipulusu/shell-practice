#!/bin/bash

start_time=$(date +%s)

echo "script executed at: $start_time"

sleep 20

end_time=$(date +%s)


echo "script finished at: $end_time"

TOTAL_TIME=$((end_time - start_time))