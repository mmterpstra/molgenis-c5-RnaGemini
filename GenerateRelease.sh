#!/bin/bash
tar -zcf RnaAnalysis$(date --rfc-3339=date).tar.gz scripts protocols/*.sh *.csv
