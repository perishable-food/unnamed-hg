#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_TAILWIND
    PlayMoveAnimation BATTLER_CATEGORY_MSG_TEMP
    Wait 
    // It�s raining!
    PrintMessage 1449, TAG_NONE
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_STRONG_WINDS
    End 
