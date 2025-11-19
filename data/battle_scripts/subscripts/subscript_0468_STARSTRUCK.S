.include "asm/include/battle_commands.inc"

.data

_000:
    SetParentalBondFlag // i am PRAYING i can just use this flag again I dont see why it wouldnt let me
    SetMultiHit 5, MULTIHIT_MULTI_HIT_MOVE
    UpdateVar OPCODE_SET, BSCRIPT_VAR_AFTER_MOVE_MESSAGE_TYPE, AFTER_MOVE_MESSAGE_MULTI_HIT
    End 
