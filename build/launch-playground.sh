#!/bin/sh
bindir=$(pwd)
cd /home/rob/src/ogl_scratch/playground/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "xYES" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		/usr/bin/gdb -batch -command=$bindir/gdbscript --return-child-result /home/rob/src/ogl_scratch/build/playground 
	else
		"/home/rob/src/ogl_scratch/build/playground"  
	fi
else
	"/home/rob/src/ogl_scratch/build/playground"  
fi
