-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local Map = ns.Map
-------------------------------------------------------------------------------
local guild_h = Map({id = 503, settings = true})
local guild_a = nil
-------------------------------------------------------------------------------

local Brawler = Class('Brawler', ns.node.NPC, {
    icon = 'skull_w',
    scale = 1.5
})

--------------------------------- Rank 1 --------------------------------------
guild_h.nodes[10002000] = Brawler({
    id = 67262,
    note = 'Fight 1\n\nHe periodically casts {spell:135342}, just move away from his mouth.'
}) -- Bruce

guild_h.nodes[13332000] = Brawler({
    id = 149717,
    note = 'Fight 2'
}) -- Thog Hammerspace

guild_h.nodes[16662000] = Brawler({
    id = 70689,
    note = 'Fight 3\n\nAvoid {npc:70693} and {npc:70735}. {npc:70735} will Jump around.\n{npc:70692} will heal you.'
}) -- Grandpa GrumpleflootBrawler

guild_h.nodes[20002000] = Brawler({
    id = 116855,
    note = 'Fight 4\n\n{npc:116855} will send out critters, avoid them, they deal massive damage.'
}) -- Ash'katzuum
--------------------------------- Rank 2 --------------------------------------
guild_h.nodes[10002500] = Brawler({
    id = 67595,
    note = 'Fight 5\n\n{npc:67595} will spawn copies of himself, focus your damage on the original.'
}) -- Blat

guild_h.nodes[13332500] = Brawler({
    id = 144688,
    note = 'Fight 6\n\n{npc:67595} will teleport behind you and use {spell:281914}, quickly turn around. At 40% he will turn into a human, interrupt {spell:281949} or he will silence you.'
}) -- Phillip Carter Tracey

guild_h.nodes[16662500] = Brawler({
    id = 115058,
    note = 'Fight 7\n\nWhen {npc:115058} uses {spell:229127} (Red Arrow on the Floor) make sure his Pet {npc:54288} is between you and him. This will kill the pet and {npc:115058} will revive {npc:54288}'
}) -- Johnny Awesome

guild_h.nodes[20002500] = Brawler({
    id = 145594,
    note = 'Fight 8\n\n{npc:145594} will cast {spell:283188} which drops a pile of hot grain on the floor, stay in it to avoid damage form the waves.'
}) -- Mama Stormstout
--------------------------------- Rank 3 --------------------------------------
guild_h.nodes[10003000] = Brawler({
    id = 117753,
    note = 'Fight 9\n\nAvoid {spell:234489}.'
}) -- Oso

guild_h.nodes[13333000] = Brawler({
    id = 119150,
    note = 'Fight 10\n\nHe will constantly cast {spell:236875}, which will slowly pull you towards him. If you\'re in his melee range when his cast ends, he will kill you. '
}) -- Klunk

guild_h.nodes[16663000] = Brawler({
    id = 144670,
    note = 'Fight 11\n\nAvoid the tornados which will spawn after he casts {spell:282420}. When a tornado hits a {npc:144828} either {spell:282429} (Physical damage done increased by 10%.) or {spell:291275} (Damage taken increased by 10%.) will grow.'
}) -- Farmer Xiang-Su

guild_h.nodes[20003000] = Brawler({
    id = 70068,
    note = 'Fight 12'
}) -- Ahoo'ru