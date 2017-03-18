# Specify the compiler to use
CC=c51
# Object files to link
OBJS=BlinkyISR.obj

# The default 'target' (output) is BlinkyISR.hex and 'depends' on
# the object files listed in the 'OBJS' assignment above.
# These object files are linked together to create BlinkyISR.hex.
BlinkyISR.hex: $(OBJS)
	$(CC) $(OBJS)
	@echo Done!

# The object file BlinkyISR.o depends on BlinkyISR.c. BlinkyISR.c is compiled
# to create BlinkyISR.obj.
BlinkyISR.obj: BlinkyISR.c
	$(CC) -c BlinkyISR.c

# Target 'clean' is used to remove all object files and executables
# associated wit this project
clean:
	@del $(OBJS) *.asm *.lkr *.lst *.map *.hex *.map 2> nul

# Target 'FlashLoad' is used to load the hex file to the microcontroller 
# using the flash loader.  If the folder of the flash loader has been
# added to 'PATH' just 'Prog89lp' is needed.  Otherwise, a valid path
# must be provided as shown below.
LoadFlash:
	Pro89lp.exe -p -v BlinkyISR.hex

# Phony targets can be added to show useful files in the file list of
# CrossIDE or execute arbitrary programs:
Dummy: BlinkyISR.hex BlinkyISR.Map
	
explorer:
	explorer .
