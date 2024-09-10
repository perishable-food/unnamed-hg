.nds
.thumb

/* 
(formerly) Aurora Crystal specific change
i, rei perishable, lead developer of UGH (Unnamed heartGold Hack), took this file from Drayanos Aurora Crystal repo. thanks dray!

This changes it so that Jasmine's Mineral Badge allows the use of Rock Climb instead of Blue's Earth Badge when used from the Pokémon menu.
Thanks to the pret pokeheartgold decomp for exposing enough to make it possible to find this.
*/

.open "base/arm9.bin", 0x02000000

.org 0x02000000 + 0x683E8
.byte 0x4 // Normally 0xF

.close
