.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Star Stream

.create "build/move/battle_sub_seq/1_365", 0

a001_365:
    waitmessage
    printmessage 1454, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // Stardust began to swirl\naround the battlefield!
    waitmessage
    wait 0x1E
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, FIELD_CONDITION_WEATHER
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, WEATHER_STARSTORM
    endscript

.close
