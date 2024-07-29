.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} absorbed electricity!
    BufferMessage 1420, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoToEffectScript 
