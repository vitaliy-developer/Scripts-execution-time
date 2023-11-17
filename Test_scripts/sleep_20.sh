#!/bin/bash

(sleep 20) &

bg_pid=$!

wait $bg_pid


