#!/bin/bash

(sleep 10) &

bg_pid=$!

wait $bg_pid


