.include "asm/include/battle_commands.inc"

.data

_000:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STAT_CHANGE_SPATK, 12, _017
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STAT_CHANGE_SPDEF, 12, _017
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STAT_CHANGE_SPEED, 12, _058

_017:
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MESSAGES_OFF
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF|BATTLE_STATUS_NO_ATTACK_MESSAGE
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_STAT_STAGE_CHANGE_SHOWN
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_PARAM, MOVE_SUBSCRIPT_PTR_SP_ATTACK_UP_1_STAGE
    Call BATTLE_SUBSCRIPT_UPDATE_STAT_STAGE
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_PARAM, MOVE_SUBSCRIPT_PTR_SP_DEFENSE_UP_1_STAGE
    Call BATTLE_SUBSCRIPT_UPDATE_STAT_STAGE
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_PARAM, MOVE_SUBSCRIPT_PTR_SPEED_UP_1_STAGE
    Call BATTLE_SUBSCRIPT_UPDATE_STAT_STAGE
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_UPDATE_STAT_STAGES
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_STAT_STAGE_CHANGE_SHOWN
    End 

_058:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    // {0}’s stats won’t go any higher!
    PrintMessage 768, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK
    End 
