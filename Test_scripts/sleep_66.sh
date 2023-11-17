#!/bin/bash

(sleep 66) &

bg_pid=$!

wait $bg_pid


