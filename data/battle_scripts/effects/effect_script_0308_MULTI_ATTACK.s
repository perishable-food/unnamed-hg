.include "asm/include/battle_commands.inc"

.data

_000:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 1, _086
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 2, _092
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 3, _098
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 4, _104
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 5, _110
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 6, _116
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 7, _122
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 8, _128
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 9, _134
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 10, _140
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 11, _146
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 12, _152
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 13, _158
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 14, _164
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 15, _170
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 16, _176
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 17, _182
    GoTo _186

_086:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_FIGHTING
    GoTo _186

_092:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_FLYING
    GoTo _186

_098:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_POISON
    GoTo _186

_104:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_GROUND
    GoTo _186

_110:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_ROCK
    GoTo _186

_116:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_BUG
    GoTo _186

_122:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_GHOST
    GoTo _186

_128:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_STEEL
    GoTo _186

_134:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_MYSTERY
    GoTo _186

_140:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_FIRE
    GoTo _186

_146:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_WATER
    GoTo _186

_152:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_GRASS
    GoTo _186

_158:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_ELECTRIC
    GoTo _186

_164:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_PSYCHIC
    GoTo _186

_170:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_ICE
    GoTo _186

_176:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_DRAGON
    GoTo _186

_182:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_DARK

_186:
    CalcCrit 
    CalcDamage 
    End 
