############################################################
#########  GDBINIT FILE FOR JERRY MAX VERSION 1.0 ##########
############################################################

#Using intel disassembly syntax
set disassembly-flavor intel

# Display 
############################################################
define dip
display /i $pc
end
document dip
print next introduction after each cmd
end
############################################################
define ls
set listsize 20
list
end
document ls
show source file with 20 lines
end
############################################################


# Info 
############################################################
define ia
info args
end
document ia
pirnt args val
end
############################################################
define il
info locals
end
document il
print local variables
end
############################################################
define ir
info reg
end
document ir
print register val
end
############################################################
define it
info threads
end
document it
pirnt threads
end
############################################################
define ifun
info function $arg0
end
document ifun
print functions with regular exp param or all functions
usage: ifun funname
end
############################################################
define ivar
info variables $arg0
end
document ivar
print variables with regular exp param or all vars
usage: ivar varname
end
############################################################
define ilib
info sharedlibrary $arg0
end
document ilib
print sharedlibrary with regular exp param or all libs
usage: ilib libname
end
############################################################
define isig
info signals $arg0
end
document isig
print signal info of signame
usage: isig signame
end
############################################################
define isigs
info signals
end
document isigs
print all signals info
end
############################################################
define r32
printf " eip:%08X\n", $eip
printf " eax:%08X  ebx:%08X  ecx:%08X  edx:%08X\n", $eax, $ebx, $ecx, $edx
printf " esi:%08X  edi:%08X  esp:%08X  ebp:%08X\n", $esi, $edi, $esp, $ebp
printf " cs:%04X  ds:%04X  es:%04X\n", $cs, $ds, $es
printf " fs:%04X  gs:%04X  ss:%04X\n", $fs, $gs, $ss
printf " eflags:%08X\n", $eflags
print $eflags 
end
document r32
print cpu registers(32bit)
end
############################################################

# Memory eXamming
############################################################
define xb
x /32xb $arg0
end
document xb
print memory with 32 byte
usage: xb addr
end
############################################################
define xh
x /32xh $arg0
end
document xh
print memory with 32 double-byte
usage: xh addr
end
############################################################
define xw
x /32xw $arg0
end
document xw
print memory with 32 quad-byte
usage: xw addr
end
############################################################
define xg
x /32xg $arg0
end
document xg
print memory with 32 eight-byte
usage: xg addr
end
############################################################
define xf
x /32f $arg0 
end
document xf
print memory with 32 float number
usage: xf addr
end
############################################################
define xs
x /s $arg0 
end
document xs
print memory with c-style strings
usage: xs addr
end
############################################################
define xc
x /32bc $arg0
end
document xc
print memory with 32 byte ascii
usage: xc addr
end
############################################################
define xi
x /10i $arg0
end
document xi
disassembly 10 introductions
usage: xi addr
end
############################################################
define xic
x /10i $pc
end
document xic
disassembly 10 introductions under current eip
end
############################################################

# Next and Step 
############################################################
define nl
next
info locals
end
document nl
print local variables after next
end
############################################################
define na
next
info args
end
document na 
print args val after next
end
############################################################
define sl
step
info locals
end
document sl
print local variables after step
end
############################################################
define sa
step
info args
end
document sa
print args val after step
end
############################################################
define nn
next
info locals
info args
end
document nn
print local variables and args val after next
end
############################################################
define ss
step
info locals
info args
end
document ss
print local variables and args val after step
end
############################################################
define np
next
p/x $arg0
p/x $arg1
p/x $arg2
p/x $arg3
end
document np
print params val after next (4 params at most)
usage: np param1 param2 param3 param4 
end
############################################################
define sp
step
p/x $arg0
p/x $arg1
p/x $arg2
p/x $arg3
end
document sp 
print param val after step (4 params at most)
usage: sp param1 param2 param3 param4 
end
############################################################

# Stack and Frame
############################################################
define sf
echo +------------------------ stack info ------------------------+\n
info stack
echo +------------------------ frame info ------------------------+\n
info frame
echo +------------------------------------------------------------+\n
end
document sf
print current stack frame info
end
############################################################

# Breakpoint
############################################################
define bl
info breakpoints
end
document bl
show bp list
end
############################################################
define bm
break main
end
document bm
add bp to main
end
############################################################
define bc
clear $arg0
end
document bc
clear bp at function/address
usage: bc param
end
############################################################
define be
enable $arg0
end
document be
enable bp N 
usage: be bp'id
end
############################################################
define bd
disable $arg0
end
document bd
disable bp N
usage: bd bp'id
end
############################################################
define tb
set $SHOW_CONTEXT = 1
tbreak $arg0
end
document tb
set a temporary bp on address
usage: tb addr
end
############################################################
define ba
set $SHOW_CONTEXT = 1
awatch $arg0
end
document ba
set a read/write breakpoint on address
usage: ba addr
end
############################################################
define dab
delete breakpoints
end
document dab
delete all breakpoints!
end
############################################################


# Shell
##########################################################t#
define cs
shell clear
end
document cs
clear screen
end
############################################################
define re
refresh
end
############################################################


# Threads and Process
############################################################
define setfreeze
set scheduler-locking on
end
document setfreeze
freeze other threads when current thread break
end
############################################################
define setunfreeze
set scheduler-locking off
end
document setunfreeze
unfreeze other threads when current thread break
end
############################################################
define setforkchild
set follow-fork-mode child
end
document setforkchild
set follow child process when fork
end
############################################################
define setforkparent
set follow-fork-mode parent
end
document setforkparent
set follow child process when parent
end

############################################################


