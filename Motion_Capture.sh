#!/bin/bash

hostname -I
libcamera-vid -t $(($1*1000)) --inline --listen -o tcp://0.0.0.0:2000
