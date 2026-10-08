// Test: Eternabeam does not cool down when Meteor Shower is active
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .weather = FIELD_CONDITION_METEOR_SHOWER,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,
    .playerParty = {
        {
            .species = SPECIES_ETERNATUS,
            .level = 50,
            .form = 0,
            .ability = ABILITY_PRESSURE,
            .item = ITEM_NONE,
            .moves = { MOVE_ETERNABEAM, MOVE_NONE, MOVE_NONE, MOVE_NONE },
            .hp = FULL_HP,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE }
    },
    .enemyParty = { {
                        .species = SPECIES_CELESTEELA,
                        .level = 50,
                        .form = 0,
                        .ability = ABILITY_PRESSURE,
                        .item = ITEM_NONE,
                        .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                        .hp = FULL_HP,
                        .status = 0,
                        .condition2 = 0,
                        .moveEffectFlags = 0,
                    },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE } },
    .playerScript = { {
                          { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
                          { ACTION_NONE, 0 },
                          { ACTION_NONE, 0 },
                          { ACTION_NONE, 0 },
                          { ACTION_NONE, 0 },
                          { ACTION_NONE, 0 },
                          { ACTION_NONE, 0 },
                          { ACTION_NONE, 0 },
                      },
        {
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
        } },
    .enemyScript = { {
                         { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                         { ACTION_NONE, 0 },
                         { ACTION_NONE, 0 },
                         { ACTION_NONE, 0 },
                         { ACTION_NONE, 0 },
                         { ACTION_NONE, 0 },
                         { ACTION_NONE, 0 },
                         { ACTION_NONE, 0 },
                     },
        {
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
        } },
    .expectations = {
    }


}
END_TEST
