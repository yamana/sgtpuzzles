# -*- makefile -*-

DOMINOSA_EXTRA = laydomino

dominosa : [X] GTK COMMON dominosa DOMINOSA_EXTRA dominosa-icon|no-icon

dominosa : [G] WINDOWS COMMON dominosa DOMINOSA_EXTRA dominosa.res|noicon.res

ALL += dominosa[COMBINED] DOMINOSA_EXTRA

!begin gtk
GAMES += dominosa
!end

!begin >list.c
    A(dominosa) \
!end

!begin >wingames.lst
dominosa.exe:Dominosa
!end
