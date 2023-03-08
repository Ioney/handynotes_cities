-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map
local P = ns.PROFESSION

local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Recipe = ns.reward.Recipe
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Auctioneer = ns.node.Auctioneer
local Banker = ns.node.Banker
local Innkeeper = ns.node.Innkeeper
local Mailbox = ns.node.Mailbox
local Trainer = ns.node.Trainer
local Vendor = ns.node.Vendor

-------------------------------------------------------------------------------
local map = Map({id = 125, settings = true})
local udb = Map({id = 126, settings = true})
-------------------------------------------------------------------------------

map.nodes[49883677] = Mailbox()
map.nodes[46213865] = Mailbox()
map.nodes[52452712] = Mailbox()
map.nodes[49112521] = Mailbox()
map.nodes[40483251] = Mailbox()
map.nodes[38774805] = Mailbox()
map.nodes[44815889] = Mailbox()
map.nodes[44686782] = Mailbox()
map.nodes[51275858] = Mailbox()
map.nodes[59464855] = Mailbox()
map.nodes[65614583] = Mailbox()
map.nodes[63103137] = Mailbox()
map.nodes[37226007] = Mailbox()
udb.nodes[33715623] = Mailbox()

map.nodes[50253952] = Innkeeper({id = 28687})
map.nodes[65643216] = Innkeeper({id = 31557})
map.nodes[44656332] = Innkeeper({id = 32413})
udb.nodes[35475756] = Innkeeper({id = 29532})

map.nodes[59633742] = ns.node.Stablemaster({id = 28690})

map.nodes[43177962] = Banker()
map.nodes[53581525] = Banker()
udb.nodes[32115543] = Banker({id = 29530})

map.nodes[38522511] = Auctioneer({id = 35607})
map.nodes[65522347] = Auctioneer({id = 35607})
map.nodes[37075479] = Auctioneer({id = 35594})

map.nodes[52283155] = ns.node.Barber({id = 28708})

-- PROFESSIONS

map.nodes[42683205] = Trainer.Alchemy({id = 28703})
map.nodes[48363820] = Trainer.Archaeology({id = 47579})
map.nodes[45312768] = Trainer.Blacksmithing({id = 28694})
map.nodes[69983899] = Trainer.Cooking({id = 29631})
map.nodes[40256610] = Trainer.Cooking({id = 28705})
map.nodes[39053981] = Trainer.Enchanting({id = 28693})
map.nodes[38492584] = Trainer.Engineering({id = 28697})
map.nodes[53066495] = Trainer.Fishing({id = 28742})
map.nodes[42923410] = Trainer.Herbalism({id = 28704})
map.nodes[41603719] = Trainer.Inscription({id = 28702})
map.nodes[40683534] = Trainer.Jewelcrafting({id = 28701})
map.nodes[34692875] = Trainer.Leatherworking({id = 28700})
map.nodes[41472567] = Trainer.Mining({id = 28698})
map.nodes[34812806] = Trainer.Skinning({id = 28696})
map.nodes[36153355] = Trainer.Tailoring({id = 28699})
-- map.nodes[36573733] = Trainer.FirstAid({prof = 0, id = 0})

map.nodes[58124207] = Vendor({
    id = 32216,
    rewards = {
        Mount({item = 44234, id = 280, faction = 'Horde'}),
        Mount({item = 44235, id = 282, faction = 'Alliance'}),
        Mount({item = 44231, id = 257, faction = 'Horde'}),
        Mount({item = 44230, id = 256, faction = 'Alliance'}),
        Mount({item = 44226, id = 270, faction = 'Horde'}),
        Mount({item = 44225, id = 269, faction = 'Alliance'}),
        Mount({item = 44690, id = 277, faction = 'Horde'}),
        Mount({item = 44689, id = 276, faction = 'Alliance'}),
        Mount({item = 25533, id = 142, faction = 'Horde'}),
        Mount({item = 25532, id = 141, faction = 'Horde'}),
        Mount({item = 25531, id = 140, faction = 'Horde'}),
        Mount({item = 25529, id = 139, faction = 'Alliance'}),
        Mount({item = 25528, id = 138, faction = 'Alliance'}),
        Mount({item = 25527, id = 137, faction = 'Alliance'}),
        Mount({item = 25477, id = 136, faction = 'Horde'}),
        Mount({item = 25476, id = 135, faction = 'Horde'}),
        Mount({item = 25475, id = 134, faction = 'Horde'}),
        Mount({item = 25474, id = 133, faction = 'Horde'}),
        Mount({item = 25473, id = 132, faction = 'Alliance'}),
        Mount({item = 25472, id = 131, faction = 'Alliance'}),
        Mount({item = 25471, id = 130, faction = 'Alliance'}),
        Mount({item = 25470, id = 129, faction = 'Alliance'})
    }
})

map.nodes[58833898] = Vendor({
    id = 28951,
    rewards = {
        -- Toy({item = 44820}),
        Pet({item = 46398, id = 224}), Pet({item = 44822, id = 74}),
        Pet({item = 48120, id = 236}), Pet({item = 129826, id = 1727})
    }
})

map.nodes[38394105] = Vendor({
    id = 32514,
    rewards = {
        Recipe({item = 44471, profession = P.ENCHANTING}),
        Recipe({item = 44472, profession = P.ENCHANTING}),
        Recipe({item = 44484, profession = P.ENCHANTING}),
        Recipe({item = 37347, profession = P.ENCHANTING}),
        Recipe({item = 44485, profession = P.ENCHANTING}),
        Recipe({item = 37349, profession = P.ENCHANTING}),
        Recipe({item = 44488, profession = P.ENCHANTING}),
        Recipe({item = 37340, profession = P.ENCHANTING}),
        Recipe({item = 44489, profession = P.ENCHANTING}),
        Recipe({item = 44490, profession = P.ENCHANTING}),
        Recipe({item = 44491, profession = P.ENCHANTING}),
        Recipe({item = 44498, profession = P.ENCHANTING}),
        Recipe({item = 37344, profession = P.ENCHANTING}),
        Recipe({item = 44473, profession = P.ENCHANTING}),
        Recipe({item = 37339, profession = P.ENCHANTING}),
        Recipe({item = 44483, profession = P.ENCHANTING}),
        Recipe({item = 44486, profession = P.ENCHANTING}),
        Recipe({item = 44487, profession = P.ENCHANTING}),
        Recipe({item = 44492, profession = P.ENCHANTING}),
        Recipe({item = 44494, profession = P.ENCHANTING}),
        Recipe({item = 44496, profession = P.ENCHANTING}),
        Recipe({item = 44495, profession = P.ENCHANTING}),
        Recipe({item = 45059, profession = P.ENCHANTING}),
        Recipe({item = 44944, profession = P.ENCHANTING})
    }
})

map.nodes[38394105] = Vendor({
    id = 32514,
    rewards = {
        Recipe({item = 20758, profession = P.ENCHANTING}),
        Recipe({item = 20752, profession = P.ENCHANTING}),
        Recipe({item = 20753, profession = P.ENCHANTING}),
        Recipe({item = 22307, profession = P.TAILORING})
    }
})

map.nodes[49237386] = Vendor({
    id = 28994,
    rewards = {
        Transmog({item = 47658, slot = L['wand']}),
        Transmog({item = 40018, slot = L['wand']}),
        Transmog({item = 40019, slot = L['wand']}),
        Transmog({item = 40020, slot = L['wand']}),
        Transmog({item = 40021, slot = L['wand']})
    }
})

map.nodes[49807255] = Vendor({
    id = 29494,
    repair = true,
    rewards = {Transmog({item = 44655, slot = L['staff']})}
})

map.nodes[51307322] = Vendor({
    id = 29523,
    rewards = {
        Transmog({item = 47658, slot = L['wand']}),
        Transmog({item = 40018, slot = L['wand']}),
        Transmog({item = 40019, slot = L['wand']}),
        Transmog({item = 40020, slot = L['wand']}),
        Transmog({item = 40021, slot = L['wand']})
    }
})

map.nodes[51307322] = Vendor({
    id = 29523,
    repair = true,
    rewards = {
        Transmog({item = 39578, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 39579, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 39580, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 39581, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 39582, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 39583, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39588, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39589, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39590, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39591, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39592, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39593, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39594, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39595, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39596, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39597, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39601, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39602, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39603, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39604, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40503, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 40504, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 40505, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 40506, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 40507, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 40508, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40509, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40510, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40512, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40513, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40514, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40515, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40516, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40517, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40518, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40520, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40521, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40522, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40523, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40524, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40692, slot = L['mail']}),
        Transmog({item = 40693, slot = L['mail']}),
        Transmog({item = 40736, slot = L['mail']}),
        Transmog({item = 40737, slot = L['mail']}),
        Transmog({item = 40746, slot = L['mail']}),
        Transmog({item = 40747, slot = L['mail']}),
        Transmog({item = 45360, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 45361, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 45362, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 45363, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 45364, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 45401, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45402, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45403, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45404, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45405, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45406, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45408, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45409, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45410, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45411, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45412, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45413, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45414, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45415, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45416, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45827, slot = L['mail']}),
        Transmog({item = 45828, slot = L['mail']}),
        Transmog({item = 45836, slot = L['mail']}),
        Transmog({item = 45837, slot = L['mail']}),
        Transmog({item = 45844, slot = L['mail']}),
        Transmog({item = 45845, slot = L['mail']}),
        Transmog({item = 46141, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 46142, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 46143, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 46144, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 46145, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 46198, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46199, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46200, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46201, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46202, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46203, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46204, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46205, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46206, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46207, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46208, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46209, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46210, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46211, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46212, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50970, slot = L['mail']}),
        Transmog({item = 50971, slot = L['mail']}),
        Transmog({item = 50979, slot = L['mail']}),
        Transmog({item = 50980, slot = L['mail']}),
        Transmog({item = 50992, slot = L['mail']}),
        Transmog({item = 50993, slot = L['mail']})
    }
})

map.nodes[52197266] = Vendor({
    id = 35500,
    repair = true,
    rewards = {
        Transmog({item = 48250, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48251, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48252, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48253, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48254, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48275, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48276, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48277, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48278, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48279, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48280, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48281, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48282, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48283, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48284, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48295, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48296, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48297, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48298, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48299, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48310, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48312, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48313, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48314, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48315, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48336, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48337, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48338, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48339, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48340, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48341, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48342, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48343, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48344, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48345, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48366, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48367, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48368, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48369, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48370, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50114, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 50115, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 50116, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 50117, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 50118, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 50830, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50831, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50832, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50833, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50834, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50835, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50836, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50837, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50838, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50839, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50841, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50842, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50843, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50844, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50845, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51150, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51151, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51152, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51153, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51154, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51190, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51191, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51192, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51193, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51194, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51195, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51196, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51197, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51198, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51199, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51200, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51201, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51202, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51203, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51204, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51235, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51236, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51237, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51238, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51239, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51240, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51241, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51242, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51243, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51244, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51245, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51246, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51247, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51248, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51249, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51285, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51286, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51287, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51288, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51289, slot = L['mail'], class = 'HUNTER'})
    }
})

map.nodes[52197266] = Vendor({
    id = 35500,
    repair = true,
    rewards = {
        Transmog({item = 48250, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48251, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48252, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48253, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48254, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48275, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48276, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48277, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48278, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48279, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 48280, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48281, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48282, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48283, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48284, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48295, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48296, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48297, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48298, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48299, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48310, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48312, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48313, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48314, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48315, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48336, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48337, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48338, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48339, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48340, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48341, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48342, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48343, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48344, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48345, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48366, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48367, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48368, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48369, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 48370, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50114, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 50115, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 50116, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 50117, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 50118, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 50830, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50831, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50832, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50833, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50834, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50835, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50836, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50837, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50838, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50839, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50841, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50842, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50843, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50844, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50845, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51150, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51151, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51152, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51153, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51154, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51190, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51191, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51192, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51193, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51194, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51195, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51196, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51197, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51198, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51199, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51200, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51201, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51202, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51203, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51204, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51235, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51236, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51237, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51238, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51239, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51240, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51241, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51242, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51243, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51244, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51245, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51246, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51247, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51248, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51249, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 51285, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51286, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51287, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51288, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 51289, slot = L['mail'], class = 'HUNTER'})
    }
})

map.nodes[51987207] = Vendor({
    id = 28992,
    repair = true,
    rewards = {
        Transmog({item = 39531, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39538, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39539, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39542, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39543, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39544, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39545, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39546, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39547, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39548, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39553, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39554, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39555, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39556, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39557, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39558, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 39560, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 39561, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 39564, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 39565, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 40460, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40461, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40462, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40463, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40465, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40466, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40467, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40468, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40469, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40470, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40471, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40472, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40473, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40493, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40494, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40495, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 40496, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 40499, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 40500, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 40502, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 40694, slot = L['leather']}),
        Transmog({item = 40695, slot = L['leather']}),
        Transmog({item = 40738, slot = L['leather']}),
        Transmog({item = 40739, slot = L['leather']}),
        Transmog({item = 40748, slot = L['leather']}),
        Transmog({item = 40749, slot = L['leather']}),
        Transmog({item = 45345, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45346, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45347, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45348, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45349, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45351, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45352, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45353, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45354, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45355, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45356, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45357, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45358, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45359, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45396, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 45397, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 45398, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 45399, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 45400, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 45829, slot = L['leather']}),
        Transmog({item = 45830, slot = L['leather']}),
        Transmog({item = 45838, slot = L['leather']}),
        Transmog({item = 45839, slot = L['leather']}),
        Transmog({item = 45846, slot = L['leather']}),
        Transmog({item = 45847, slot = L['leather']}),
        Transmog({item = 46123, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 46124, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 46125, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 46126, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 46127, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 46157, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46158, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46159, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46160, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46161, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46183, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46184, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46185, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46186, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46187, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46189, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46191, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46192, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46194, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46196, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46313, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 50972, slot = L['leather']}),
        Transmog({item = 50973, slot = L['leather']}),
        Transmog({item = 50981, slot = L['leather']}),
        Transmog({item = 50982, slot = L['leather']}),
        Transmog({item = 50994, slot = L['leather']}),
        Transmog({item = 50995, slot = L['leather']})
    }
})

map.nodes[51607123] = Vendor({
    id = 35497,
    repair = true,
    rewards = {
        Transmog({item = 48102, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48129, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48130, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48131, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48132, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48153, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48154, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48155, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48156, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48157, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48158, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48159, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48160, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48161, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48162, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48183, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48184, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48185, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48186, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48187, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48188, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48189, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48190, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48191, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48192, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48213, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48214, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48215, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48216, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48217, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 48218, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 48219, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 48220, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 48221, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 48222, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 48243, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 48244, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 48245, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 48246, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 48247, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 50087, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 50088, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 50089, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 50090, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 50105, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 50106, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 50107, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 50108, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 50109, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 50113, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 50819, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 50820, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 50821, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 50822, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 50823, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 50824, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 50825, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 50826, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 50827, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 50828, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51135, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51136, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51137, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51138, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51139, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51140, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51141, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51142, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51143, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51144, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51145, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51146, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51147, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51148, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51149, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51185, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 51186, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 51187, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 51188, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 51189, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 51250, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 51251, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 51252, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 51253, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 51254, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 51290, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51291, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51292, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51293, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51294, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51295, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51296, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51297, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51298, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51299, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51300, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51301, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51302, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51303, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 51304, slot = L['leather'], class = 'DRUID'})
    }
})

map.nodes[52295553] = Vendor({
    id = 29527,
    rewards = {
        Transmog({item = 40698, slot = L['offhand']}),
        Transmog({item = 40699, slot = L['offhand']})
    }
})

-------------------------------------------------------------------------------
------------------------------------ MISC -------------------------------------
-------------------------------------------------------------------------------

local to_underbelly = ns.node.Node({
    icon = 'door_down',
    label = _G.DUNGEON_FLOOR_DALARAN2,
    scale = 2,
    OnClick = function() WorldMapFrame:SetMapID(udb.id) end,
    clabel = L['change_map']
})

local to_dalaran = ns.node.Node({
    icon = 'door_down',
    label = _G.DUNGEON_FLOOR_DALARAN1,
    scale = 2,
    OnClick = function() WorldMapFrame:SetMapID(map.id) end,
    clabel = L['change_map']
})

map.nodes[60754827] = to_underbelly
map.nodes[34894537] = to_underbelly

udb.nodes[65464702] = to_dalaran
udb.nodes[25934283] = to_dalaran
