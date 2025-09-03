#include "../include/types.h"
#include "../include/script.h"
#include "../include/repel.h"
#include "../include/constants/file.h"

#define SCRIPT_NEW_CMD_REPEL_USE      0
#define SCRIPT_NEW_CMD_BOTTLE_CAP_USE 1
#define SCRIPT_NEW_CMD_MAX          256

BOOL Script_RunNewCmd(SCRIPTCONTEXT *ctx) {
    u8 sw = ScriptReadByte(ctx);
    u16 UNUSED arg0 = ScriptReadHalfword(ctx);

    switch (sw) {
        case SCRIPT_NEW_CMD_REPEL_USE:;
#ifdef IMPLEMENT_REUSABLE_REPELS
            u16 most_recent_repel = Repel_GetMostRecent();
            SetScriptVar(arg0, most_recent_repel);
            Repel_Use(most_recent_repel, HEAPID_MAIN_HEAP);
#endif
            break;

        case SCRIPT_NEW_CMD_BOTTLE_CAP_USE:;
            FieldSystem *fsys = ctx->fsys;
            struct PartyPokemon *pp;
            struct Party *party = SaveData_GetPlayerPartyPtr(fsys->savedata);
            u8 iv = 31;
            u8 pos = GetScriptVar(0x8008);
            pp = Party_GetMonByIndex (party, pos);
            switch (arg0)
            {
            case 0:SetMonData(pp,MON_DATA_HP_IV, &iv);break;
            case 1:SetMonData(pp,MON_DATA_ATK_IV, &iv);break;
            case 2:SetMonData(pp,MON_DATA_DEF_IV, &iv);break;
            case 3:SetMonData(pp,MON_DATA_SPATK_IV, &iv);break;
            case 4:SetMonData(pp,MON_DATA_SPDEF_IV, &iv);break;
            case 5:SetMonData(pp,MON_DATA_SPEED_IV, &iv);break;
            case 6:SetMonData(pp,MON_DATA_HP_IV, &iv);
            SetMonData(pp,MON_DATA_ATK_IV, &iv);
            SetMonData(pp,MON_DATA_DEF_IV, &iv);
            SetMonData(pp,MON_DATA_SPATK_IV, &iv);
            SetMonData(pp,MON_DATA_SPDEF_IV, &iv);
            SetMonData(pp,MON_DATA_SPEED_IV, &iv);
            break;
            default:break;
            }
            RecalcPartyPokemonStats(pp);
            break;

        default: break;

    }

    return FALSE;
}
