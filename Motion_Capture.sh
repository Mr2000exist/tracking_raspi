#!/bin/bash

libcamera-vid -t $1 --inline --listen -o tcp://0.0.0.0:2000
