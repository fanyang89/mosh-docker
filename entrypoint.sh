#!/usr/bin/env bash

mosh-server $@
tail -F /dev/null
