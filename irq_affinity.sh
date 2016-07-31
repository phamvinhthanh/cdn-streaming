#!/bin/bash
CPUS=`nproc`
INTERFACE=`ip link show | grep 'state UP' | cut -d: -f 2 | sed "s/ //g"`
for DEV in $INTERFACE
do
	echo $DEV
	INT_ARR=`cat /proc/interrupts | grep $DEV- | cut  -d:  -f1 | sed "s/ //g"`
	for INT in $INT_ARR
	do
		CPUS=$((CPUS-1))
		echo "echo $CPUS > /proc/irq/$INT/smp_affinity_list"
		echo $CPUS > /proc/irq/$INT/smp_affinity_list
	done
done