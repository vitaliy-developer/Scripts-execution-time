#!/bin/bash

(sleep 30) &

bg_pid=$!

wait $bg_pid


