#!/bin/sh

pwd

tar xzf data.tar
cd data
./pestpp-ies freyberg6_run_ies.pst /h <<update_cm_IP>>:9701

