#!/bin/bash

./dontstarve_dedicated_server_nullrenderer_x64 -shard Master &
./dontstarve_dedicated_server_nullrenderer_x64 -shard Caves &
./dontstarve_dedicated_server_nullrenderer_x64 -shard Loot &
wait -n
exit $?