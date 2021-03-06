#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_CONF=x86-32
CND_DISTDIR=dist

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=build/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/kernel/x86/irq.o \
	${OBJECTDIR}/src/drivers/x86/ibmpc/clock.o \
	${OBJECTDIR}/src/kernel/x86/kload.o \
	${OBJECTDIR}/src/kernel/x86/isr.o \
	${OBJECTDIR}/src/kernel/x86/sync.o \
	${OBJECTDIR}/src/kernel/x86/paging.o \
	${OBJECTDIR}/src/drivers/x86/ibmpc/vbe_real.o \
	${OBJECTDIR}/src/kernel/x86/isr32.o \
	${OBJECTDIR}/src/drivers/x86/ibmpc/ibmpc.o \
	${OBJECTDIR}/src/libraries/all/string.o \
	${OBJECTDIR}/src/loader/x86/start32.o \
	${OBJECTDIR}/src/kernel/x86/cpuid.o \
	${OBJECTDIR}/src/drivers/x86/ibmpc/initrd.o \
	${OBJECTDIR}/src/kernel/x86/gdt32.o \
	${OBJECTDIR}/src/kernel/x86/timer.o \
	${OBJECTDIR}/src/kernel/x86/mm.o \
	${OBJECTDIR}/src/kernel/x86/idt32.o \
	${OBJECTDIR}/src/drivers/x86/ibmpc/floppy.o \
	${OBJECTDIR}/src/kernel/x86/irq32.o \
	${OBJECTDIR}/src/kernel/all/driver-manager/devfs.o \
	${OBJECTDIR}/src/loader/x86/startup.o \
	${OBJECTDIR}/src/kernel/all/driver-manager/dm.o \
	${OBJECTDIR}/src/kernel/x86/realmode.o \
	${OBJECTDIR}/src/drivers/all/console.o \
	${OBJECTDIR}/src/kernel/x86/gdt.o \
	${OBJECTDIR}/src/kernel/all/driver-manager/classes/io.o \
	${OBJECTDIR}/src/drivers/x86/ibmpc/screen.o \
	${OBJECTDIR}/src/kernel/all/driver-manager/classes/bus.o \
	${OBJECTDIR}/inc/x86/gdt32.o \
	${OBJECTDIR}/src/kernel/all/driver-manager/classes/storage.o \
	${OBJECTDIR}/src/kernel/x86/cpuid32.o \
	${OBJECTDIR}/src/drivers/all/clock.o \
	${OBJECTDIR}/src/loader/x86/boot.o \
	${OBJECTDIR}/src/kernel/x86/idt.o \
	${OBJECTDIR}/src/kernel/x86/cmos.o \
	${OBJECTDIR}/src/kernel/all/vfs/vfs.o \
	${OBJECTDIR}/src/drivers/x86/ibmpc/kb.o \
	${OBJECTDIR}/src/kernel/x86/syscall32.o \
	${OBJECTDIR}/src/kernel/x86/syscall.o \
	${OBJECTDIR}/src/kernel/x86/mt.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-x86-32.mk dist/x86-32/GNU-Linux-x86/new

dist/x86-32/GNU-Linux-x86/new: ${OBJECTFILES}
	${MKDIR} -p dist/x86-32/GNU-Linux-x86
	${LINK.c} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/new ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/src/kernel/x86/irq.o: src/kernel/x86/irq.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/x86/irq.o src/kernel/x86/irq.c

${OBJECTDIR}/src/drivers/x86/ibmpc/clock.o: src/drivers/x86/ibmpc/clock.c 
	${MKDIR} -p ${OBJECTDIR}/src/drivers/x86/ibmpc
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/drivers/x86/ibmpc/clock.o src/drivers/x86/ibmpc/clock.c

${OBJECTDIR}/src/kernel/x86/kload.o: src/kernel/x86/kload.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/x86/kload.o src/kernel/x86/kload.c

${OBJECTDIR}/src/kernel/x86/isr.o: src/kernel/x86/isr.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/x86/isr.o src/kernel/x86/isr.c

${OBJECTDIR}/src/kernel/x86/sync.o: src/kernel/x86/sync.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/x86/sync.o src/kernel/x86/sync.c

${OBJECTDIR}/src/kernel/x86/paging.o: src/kernel/x86/paging.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/x86/paging.o src/kernel/x86/paging.c

${OBJECTDIR}/src/drivers/x86/ibmpc/vbe_real.o: src/drivers/x86/ibmpc/vbe_real.asm 
	${MKDIR} -p ${OBJECTDIR}/src/drivers/x86/ibmpc
	$(AS) $(ASFLAGS) -g -o ${OBJECTDIR}/src/drivers/x86/ibmpc/vbe_real.o src/drivers/x86/ibmpc/vbe_real.asm

${OBJECTDIR}/src/kernel/x86/isr32.o: src/kernel/x86/isr32.asm 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	$(AS) $(ASFLAGS) -g -o ${OBJECTDIR}/src/kernel/x86/isr32.o src/kernel/x86/isr32.asm

${OBJECTDIR}/src/drivers/x86/ibmpc/ibmpc.o: src/drivers/x86/ibmpc/ibmpc.c 
	${MKDIR} -p ${OBJECTDIR}/src/drivers/x86/ibmpc
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/drivers/x86/ibmpc/ibmpc.o src/drivers/x86/ibmpc/ibmpc.c

${OBJECTDIR}/src/libraries/all/string.o: src/libraries/all/string.c 
	${MKDIR} -p ${OBJECTDIR}/src/libraries/all
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/libraries/all/string.o src/libraries/all/string.c

${OBJECTDIR}/src/loader/x86/start32.o: src/loader/x86/start32.asm 
	${MKDIR} -p ${OBJECTDIR}/src/loader/x86
	$(AS) $(ASFLAGS) -g -o ${OBJECTDIR}/src/loader/x86/start32.o src/loader/x86/start32.asm

${OBJECTDIR}/src/kernel/x86/cpuid.o: src/kernel/x86/cpuid.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/x86/cpuid.o src/kernel/x86/cpuid.c

${OBJECTDIR}/src/drivers/x86/ibmpc/initrd.o: src/drivers/x86/ibmpc/initrd.c 
	${MKDIR} -p ${OBJECTDIR}/src/drivers/x86/ibmpc
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/drivers/x86/ibmpc/initrd.o src/drivers/x86/ibmpc/initrd.c

${OBJECTDIR}/src/kernel/x86/gdt32.o: src/kernel/x86/gdt32.asm 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	$(AS) $(ASFLAGS) -g -o ${OBJECTDIR}/src/kernel/x86/gdt32.o src/kernel/x86/gdt32.asm

${OBJECTDIR}/src/kernel/x86/timer.o: src/kernel/x86/timer.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/x86/timer.o src/kernel/x86/timer.c

${OBJECTDIR}/src/kernel/x86/mm.o: src/kernel/x86/mm.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/x86/mm.o src/kernel/x86/mm.c

${OBJECTDIR}/src/kernel/x86/idt32.o: src/kernel/x86/idt32.asm 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	$(AS) $(ASFLAGS) -g -o ${OBJECTDIR}/src/kernel/x86/idt32.o src/kernel/x86/idt32.asm

${OBJECTDIR}/src/drivers/x86/ibmpc/floppy.o: src/drivers/x86/ibmpc/floppy.c 
	${MKDIR} -p ${OBJECTDIR}/src/drivers/x86/ibmpc
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/drivers/x86/ibmpc/floppy.o src/drivers/x86/ibmpc/floppy.c

${OBJECTDIR}/src/kernel/x86/irq32.o: src/kernel/x86/irq32.asm 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	$(AS) $(ASFLAGS) -g -o ${OBJECTDIR}/src/kernel/x86/irq32.o src/kernel/x86/irq32.asm

${OBJECTDIR}/src/kernel/all/driver-manager/devfs.o: src/kernel/all/driver-manager/devfs.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/all/driver-manager
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/all/driver-manager/devfs.o src/kernel/all/driver-manager/devfs.c

${OBJECTDIR}/src/loader/x86/startup.o: src/loader/x86/startup.c 
	${MKDIR} -p ${OBJECTDIR}/src/loader/x86
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/loader/x86/startup.o src/loader/x86/startup.c

${OBJECTDIR}/src/kernel/all/driver-manager/dm.o: src/kernel/all/driver-manager/dm.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/all/driver-manager
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/all/driver-manager/dm.o src/kernel/all/driver-manager/dm.c

${OBJECTDIR}/src/kernel/x86/realmode.o: src/kernel/x86/realmode.asm 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	$(AS) $(ASFLAGS) -g -o ${OBJECTDIR}/src/kernel/x86/realmode.o src/kernel/x86/realmode.asm

${OBJECTDIR}/src/drivers/all/console.o: src/drivers/all/console.c 
	${MKDIR} -p ${OBJECTDIR}/src/drivers/all
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/drivers/all/console.o src/drivers/all/console.c

${OBJECTDIR}/src/kernel/x86/gdt.o: src/kernel/x86/gdt.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/x86/gdt.o src/kernel/x86/gdt.c

${OBJECTDIR}/src/kernel/all/driver-manager/classes/io.o: src/kernel/all/driver-manager/classes/io.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/all/driver-manager/classes
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/all/driver-manager/classes/io.o src/kernel/all/driver-manager/classes/io.c

${OBJECTDIR}/src/drivers/x86/ibmpc/screen.o: src/drivers/x86/ibmpc/screen.c 
	${MKDIR} -p ${OBJECTDIR}/src/drivers/x86/ibmpc
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/drivers/x86/ibmpc/screen.o src/drivers/x86/ibmpc/screen.c

${OBJECTDIR}/src/kernel/all/driver-manager/classes/bus.o: src/kernel/all/driver-manager/classes/bus.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/all/driver-manager/classes
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/all/driver-manager/classes/bus.o src/kernel/all/driver-manager/classes/bus.c

${OBJECTDIR}/inc/x86/gdt32.o: inc/x86/gdt32.mac 
	${MKDIR} -p ${OBJECTDIR}/inc/x86
	$(AS) $(ASFLAGS) -g -o ${OBJECTDIR}/inc/x86/gdt32.o inc/x86/gdt32.mac

${OBJECTDIR}/src/kernel/all/driver-manager/classes/storage.o: src/kernel/all/driver-manager/classes/storage.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/all/driver-manager/classes
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/all/driver-manager/classes/storage.o src/kernel/all/driver-manager/classes/storage.c

${OBJECTDIR}/src/kernel/x86/cpuid32.o: src/kernel/x86/cpuid32.asm 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	$(AS) $(ASFLAGS) -g -o ${OBJECTDIR}/src/kernel/x86/cpuid32.o src/kernel/x86/cpuid32.asm

${OBJECTDIR}/src/drivers/all/clock.o: src/drivers/all/clock.c 
	${MKDIR} -p ${OBJECTDIR}/src/drivers/all
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/drivers/all/clock.o src/drivers/all/clock.c

${OBJECTDIR}/src/loader/x86/boot.o: src/loader/x86/boot.c 
	${MKDIR} -p ${OBJECTDIR}/src/loader/x86
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/loader/x86/boot.o src/loader/x86/boot.c

${OBJECTDIR}/src/kernel/x86/idt.o: src/kernel/x86/idt.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/x86/idt.o src/kernel/x86/idt.c

${OBJECTDIR}/src/kernel/x86/cmos.o: src/kernel/x86/cmos.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/x86/cmos.o src/kernel/x86/cmos.c

${OBJECTDIR}/src/kernel/all/vfs/vfs.o: src/kernel/all/vfs/vfs.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/all/vfs
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/all/vfs/vfs.o src/kernel/all/vfs/vfs.c

${OBJECTDIR}/src/drivers/x86/ibmpc/kb.o: src/drivers/x86/ibmpc/kb.c 
	${MKDIR} -p ${OBJECTDIR}/src/drivers/x86/ibmpc
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/drivers/x86/ibmpc/kb.o src/drivers/x86/ibmpc/kb.c

${OBJECTDIR}/src/kernel/x86/syscall32.o: src/kernel/x86/syscall32.asm 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	$(AS) $(ASFLAGS) -g -o ${OBJECTDIR}/src/kernel/x86/syscall32.o src/kernel/x86/syscall32.asm

${OBJECTDIR}/src/kernel/x86/syscall.o: src/kernel/x86/syscall.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/x86/syscall.o src/kernel/x86/syscall.c

${OBJECTDIR}/src/kernel/x86/mt.o: src/kernel/x86/mt.c 
	${MKDIR} -p ${OBJECTDIR}/src/kernel/x86
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/kernel/x86/mt.o src/kernel/x86/mt.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/x86-32
	${RM} dist/x86-32/GNU-Linux-x86/new

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
