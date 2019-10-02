#!/bin/bash
PORT=${PORT:-6379}
exec redis-server /redis.conf --port $PORT
