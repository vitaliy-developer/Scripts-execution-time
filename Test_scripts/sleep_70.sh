#!/bin/bash

(sleep 70) &

bg_pid=$!

wait $bg_pid


