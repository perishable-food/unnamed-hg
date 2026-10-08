#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // {0} foresaw an attack!
    PrintMessage 472, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Call BATTLE_SUBSCRIPT_FUTURE_SIGHT_HIT
    AbilityPopup BATTLER_CATEGORY_ATTACKER
    // The future is now, thanks to {0}'s {1}!
    PrintMessage 1798, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER
    Wait
    WaitButtonABTime 30
    CalcCrit
    CalcDamage
    End
