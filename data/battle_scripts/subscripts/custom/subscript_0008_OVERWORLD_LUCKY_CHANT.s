#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_LUCKY_CHANT
    PlayMoveAnimation BATTLER_CATEGORY_MSG_TEMP
    Wait 
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_EFFECT_CHANCE, 0
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    // The Lucky Chant shielded your team from critical hits! (LYING)
    PrintMessage 1242, TAG_NONE_SIDE, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    //UpdateVar OPCODE_SET, BSCRIPT_VAR_CALC_TEMP, 0x00005000
    //UpdateVarFromVar OPCODE_FLAG_ON, BSCRIPT_VAR_SIDE_CONDITION_ATTACKER, BSCRIPT_VAR_CALC_TEMP
    End 
