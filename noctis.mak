.AUTODEPEND

.PATH.obj = C:\BIN

#		*Translator Definitions*
CC = bcc +NOCTIS.CFG
TASM = TASM
TLIB = tlib
TLINK = tlink
LIBPATH = C:\BORLANDC\LIB
INCLUDEPATH = C:\BORLANDC\INCLUDE


#		*Implicit Rules*
.c.obj:
  $(CC) -c {$< }

.cpp.obj:
  $(CC) -c {$< }

#		*List Macros*


EXE_dependencies =  \
 c:\bin\noctis-0.obj \
 c:\bin\noctis-1.obj \
 c:\bin\noctis.obj

#		*Explicit Rules*
c:\bin\noctis.exe: noctis.cfg $(EXE_dependencies)
  $(TLINK) /x/i/n/c/P-/A=16/L$(LIBPATH) @&&|
c0l.obj+
c:\bin\noctis-0.obj+
c:\bin\noctis-1.obj+
c:\bin\noctis.obj
c:\bin\noctis
		# no map file
fp87.lib+
mathl.lib+
cl.lib
|


#		*Individual File Dependencies*
c:\bin\noctis-0.obj: noctis.cfg noctis-0.cpp 

c:\bin\noctis-1.obj: noctis.cfg noctis-1.cpp 

c:\bin\noctis.obj: noctis.cfg noctis.cpp 

#		*Compiler Configuration File*
noctis.cfg: noctis.mak
  copy &&|
-ml
-3
-f287
-O
-Oe
-Ob
-Z
-k-
-h
-vi-
-H=NOCTIS.SYM
-wamp
-wuse
-weas
-wpre
-nC:\BIN
-I$(INCLUDEPATH)
-L$(LIBPATH)
| noctis.cfg


