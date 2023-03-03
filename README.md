# HTCondorHelloWorld
Hello world trivial toy examples for working with HTCondor on Linux

## HoladCruelWorld

The HolaCruelWorld example uses a simple Python script to demonstrate a general HTCondor submit file. Of course, the intent is that the trivial example be replaced with meaningful work!

In the folder `demo` is an iPython notebook (Demo\_Notes.ipynb) describing (sketchily) the other files and walks through the demo. There is also an HTML version of the notes for people not using iPython notebook.

The Python scripts are compatible with both Python 2 and Python 3 in case a user is running on a server still running Python 2 (EOL people!).

This demo was developed for the 2015 Rocky Mountain Advanced Computing Consortium meeting in Boulder, CO August 13, 2015 by Mike Fienen (USGS). Accompanying slide deck in Presentation.pdf created by Randy Hunt (USGS) and Willem Schreuder (Principia Mathematica).

## PESTPP
The benchmark iterative ensemble smoother (iES) test case from "Approaches to Highly Parameterized Inversion: PEST++ Version 5, a Software Suite for Parameter Estimation, Uncertainty Analysis, Management Optimization and Sensitivity Analysis" report by White and others (2020).

This version uses 150 workers and starts the master on port 9701. If that port is not open through the firewall on the central manager machine, this will not work.

Important note: user must update `worker.sh` replacing the string `<<update_cm_IP>>` with the IP address or computer name where the MASTER is running.

To run the example, first execute the `launch_master.sh` script. Then in another window launch workers as `condor_submit launch_workers.sub`.
