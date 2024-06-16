.include "asm/include/battle_commands.inc"

.data

_000:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_CUSTAP_FLAG, 1, _022
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_QUICK_CLAW_FLAG, 0, _063
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_WAITING_BATTLERS, 1, _039
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    GoTo _039

_022:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_WAITING_BATTLERS, 1, _039
    // {0}’s {1} let it move first!
    PrintMessage 1254, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30

_039:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_QUICK_CLAW_FLAG, 0, _050
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_QUICK_CLAW_FLAG, 0

_050:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_CUSTAP_FLAG, 0, _063
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_CUSTAP_FLAG, 0
    RemoveItem BATTLER_CATEGORY_ATTACKER

_063:
    End 
