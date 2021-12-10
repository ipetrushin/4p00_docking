#!/bin/bash

#echo "Docking $1"
logpath=~/docking/flav-june/opt-lig-log/
outpath=~/docking/flav-june/opt-lig-out/
for full in ~/docking/flav-june/opt-lig-in/*.pdbqt
do
    fn=$(basename -- "$full")
    fn="${fn%.*}"
    echo "Docking  $fn"
    vina --config 4p00_config.txt --log $logpath$fn-log.txt --out $outpath$fn-out.pdbqt --ligand $full --exhaustiveness 100
    mv $full ~/docking/flav-june/done
done
