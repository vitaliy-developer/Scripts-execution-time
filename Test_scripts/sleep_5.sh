#!/bin/bash

sleep 5 &

bg_pid=$!

wait $bg_pid

