#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_CRITICAL_BOOSTS, 1
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_ATTACKER, BMON_DATA_SPECIES, SPECIES_OGERPON, _fairy // any other species
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 9, _grass // mega eternapon

_fairy:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_FAIRY
    GoTo _continue

_grass:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_GRASS
    GoTo _continue

_continue:
    CalcCrit 
    CalcDamage 
    End 
