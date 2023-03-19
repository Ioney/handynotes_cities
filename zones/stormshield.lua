-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Toy = ns.reward.Toy
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog
local Mount = ns.reward.Mount
local Item = ns.reward.Item
local GBP = ns.reward.GarrisonBlueprint

local Mailbox = ns.node.Mailbox
local Innkeeper = ns.node.Innkeeper
local Banker = ns.node.Banker
local Auctioneer = ns.node.Auctioneer
local Vendor = ns.node.Vendor
local Trainer = ns.node.Trainer

local Path = ns.poi.Path
-------------------------------------------------------------------------------
local map = Map({id = 622, settings = true})
-------------------------------------------------------------------------------

map.nodes[47644120] = Mailbox()
map.nodes[41673854] = Mailbox()
map.nodes[51714356] = Mailbox()
map.nodes[43056906] = Mailbox()
map.nodes[35457240] = Mailbox()
map.nodes[64012279] = Mailbox()

map.nodes[30594844] = ns.node.Flightmaster({id = 85959})

map.nodes[35727790] = Innkeeper({id = 85956})

map.nodes[33346485] = ns.node.Stablemaster({id = 85963})
map.nodes[63143535] = ns.node.Transmogrifier({id = 85961})
map.nodes[63043601] = ns.node.Voidstorage({id = 85962})
map.nodes[63943579] = ns.node.PortalTrainer({id = 88254})

map.nodes[55624853] = Banker({id = 85957})
map.nodes[55374897] = Banker({id = 88471})
map.nodes[55034947] = Banker({id = 88469})
map.nodes[54604984] = Banker({id = 88468})

map.nodes[53446795] = Auctioneer({id = 88520})
map.nodes[54766771] = Auctioneer({id = 88522})
map.nodes[54146428] = Auctioneer({id = 85964})
map.nodes[53766431] = Auctioneer({id = 56733})

-------------------------------------------------------------------------------
----------------------------------- VENDORS -----------------------------------
-------------------------------------------------------------------------------

map.nodes[29665287] = Vendor({
    id = 85849,
    rewards = {
        GBP({item = 107694, id = 35}), GBP({item = 109062, id = 38}),
        GBP({item = 109254, id = 41}), GBP({item = 109256, id = 123}),
        GBP({item = 111929, id = 119}), GBP({item = 111966, id = 9}),
        GBP({item = 111968, id = 25}), GBP({item = 111970, id = 27}),
        GBP({item = 111972, id = 125}), GBP({item = 111974, id = 113}),
        GBP({item = 111976, id = 140}), GBP({item = 111978, id = 129}),
        GBP({item = 111980, id = 160}), GBP({item = 111982, id = 142}),
        GBP({item = 111984, id = 163}), GBP({item = 111986, id = 144}),
        GBP({item = 111988, id = 121}), GBP({item = 111990, id = 117}),
        GBP({item = 111992, id = 127}), GBP({item = 112002, id = 66})
    }
})

local follower_DawnseekerRukaryx = ns.reward.Follower({
    id = 462,
    note = '{icon:979575}{item:119821}'
})
local mount_MosshideRiverwallow = Mount({
    item = 116768,
    id = 632,
    note = '+5000 {currency:823}'
})

map.nodes[51196177] = Vendor({
    id = 92501,
    rewards = {
        mount_MosshideRiverwallow, Transmog({item = 115378, slot = L['cloth']}),
        Transmog({item = 115379, slot = L['leather']}),
        Transmog({item = 115380, slot = L['mail']}),
        Transmog({item = 115381, slot = L['plate']}),
        Transmog({item = 116935, slot = L['cloth']}),
        Transmog({item = 116936, slot = L['leather']}),
        Transmog({item = 116937, slot = L['Mail']}),
        Transmog({item = 116938, slot = L['plate']}),
        Transmog({item = 116939, slot = L['cloth']}),
        Transmog({item = 116940, slot = L['leather']}),
        Transmog({item = 116941, slot = L['mail']}),
        Transmog({item = 116942, slot = L['plate']}),
        Transmog({item = 122320, slot = L['cloth']}),
        Transmog({item = 122321, slot = L['leather']}),
        Transmog({item = 122322, slot = L['mail']}),
        Transmog({item = 122323, slot = L['plate']}), follower_DawnseekerRukaryx
    }
}) -- Apexis Belt Trader

map.nodes[50786145] = Vendor({
    id = 86391,
    rewards = {
        mount_MosshideRiverwallow, Transmog({item = 115374, slot = L['cloth']}),
        Transmog({item = 115375, slot = L['leather']}),
        Transmog({item = 115376, slot = L['mail']}),
        Transmog({item = 115377, slot = L['plate']}),
        Transmog({item = 116927, slot = L['cloth']}),
        Transmog({item = 116928, slot = L['leather']}),
        Transmog({item = 116929, slot = L['mail']}),
        Transmog({item = 116930, slot = L['plate']}),
        Transmog({item = 116931, slot = L['cloth']}),
        Transmog({item = 116932, slot = L['leather']}),
        Transmog({item = 116933, slot = L['mail']}),
        Transmog({item = 116934, slot = L['plate']}),
        Transmog({item = 122316, slot = L['cloth']}),
        Transmog({item = 122317, slot = L['leather']}),
        Transmog({item = 122318, slot = L['mail']}),
        Transmog({item = 122319, slot = L['plate']}), follower_DawnseekerRukaryx
    }
}) -- Apexis Leggings Trader

map.nodes[49966110] = Vendor({
    id = 86387,
    rewards = {
        mount_MosshideRiverwallow, Transmog({item = 115396, slot = L['cloth']}),
        Transmog({item = 115397, slot = L['leather']}),
        Transmog({item = 115398, slot = L['mail']}),
        Transmog({item = 115399, slot = L['plate']}),
        Transmog({item = 116953, slot = L['cloth']}),
        Transmog({item = 116954, slot = L['leather']}),
        Transmog({item = 116955, slot = L['mail']}),
        Transmog({item = 116956, slot = L['plate']}),
        Transmog({item = 116957, slot = L['cloth']}),
        Transmog({item = 116958, slot = L['leather']}),
        Transmog({item = 116959, slot = L['mail']}),
        Transmog({item = 116960, slot = L['plate']}),
        Transmog({item = 122308, slot = L['cloth']}),
        Transmog({item = 122309, slot = L['leather']}),
        Transmog({item = 122310, slot = L['mail']}),
        Transmog({item = 122311, slot = L['plate']}), follower_DawnseekerRukaryx
    }
}) -- Apexis Helm Trader

map.nodes[49386119] = Vendor({
    id = 86389,
    rewards = {
        mount_MosshideRiverwallow, Transmog({item = 115391, slot = L['cloak']}),
        Transmog({item = 115392, slot = L['cloak']}),
        Transmog({item = 115393, slot = L['cloak']}),
        Transmog({item = 115394, slot = L['cloak']}),
        Transmog({item = 115395, slot = L['cloak']}),
        Transmog({item = 116951, slot = L['cloak']}),
        Transmog({item = 116952, slot = L['cloak']}),
        Transmog({item = 116969, slot = L['cloak']}),
        Transmog({item = 116970, slot = L['cloak']}),
        Transmog({item = 116971, slot = L['cloak']}),
        Transmog({item = 116972, slot = L['cloak']}),
        Transmog({item = 116973, slot = L['cloak']}),
        Transmog({item = 116974, slot = L['cloak']}),
        Transmog({item = 116975, slot = L['cloak']}),
        Transmog({item = 116976, slot = L['cloak']}),
        Transmog({item = 122328, slot = L['cloak']}),
        Transmog({item = 122329, slot = L['cloak']}),
        Transmog({item = 122330, slot = L['cloak']}),
        Transmog({item = 122331, slot = L['cloak']}),
        Transmog({item = 122332, slot = L['cloak']}), follower_DawnseekerRukaryx
    }
}) -- Apexis Cloak Trader

map.nodes[48896156] = Vendor({
    id = 91321,
    rewards = {
        mount_MosshideRiverwallow, Transmog({item = 115400, slot = L['cloth']}),
        Transmog({item = 115401, slot = L['leather']}),
        Transmog({item = 115402, slot = L['mail']}),
        Transmog({item = 115403, slot = L['plate']}),
        Transmog({item = 116961, slot = L['cloth']}),
        Transmog({item = 116962, slot = L['leather']}),
        Transmog({item = 116963, slot = L['mail']}),
        Transmog({item = 116964, slot = L['plate']}),
        Transmog({item = 116965, slot = L['cloth']}),
        Transmog({item = 116966, slot = L['leather']}),
        Transmog({item = 116967, slot = L['mail']}),
        Transmog({item = 116968, slot = L['plate']}),
        Transmog({item = 122312, slot = L['cloth']}),
        Transmog({item = 122313, slot = L['leather']}),
        Transmog({item = 122314, slot = L['mail']}),
        Transmog({item = 122315, slot = L['plate']}), follower_DawnseekerRukaryx
    }
}) -- Apexis Bracer Trader

map.nodes[48476219] = Vendor({
    id = 86390,
    rewards = {
        mount_MosshideRiverwallow, Transmog({item = 115387, slot = L['cloth']}),
        Transmog({item = 115388, slot = L['leather']}),
        Transmog({item = 115389, slot = L['mail']}),
        Transmog({item = 115390, slot = L['plate']}),
        Transmog({item = 116943, slot = L['cloth']}),
        Transmog({item = 116944, slot = L['leather']}),
        Transmog({item = 116945, slot = L['mail']}),
        Transmog({item = 116946, slot = L['plate']}),
        Transmog({item = 116947, slot = L['cloth']}),
        Transmog({item = 116948, slot = L['leather']}),
        Transmog({item = 116949, slot = L['mail']}),
        Transmog({item = 116950, slot = L['plate']}),
        Transmog({item = 122324, slot = L['cloth']}),
        Transmog({item = 122325, slot = L['leather']}),
        Transmog({item = 122326, slot = L['mail']}),
        Transmog({item = 122327, slot = L['plate']}), follower_DawnseekerRukaryx
    }
}) -- Apexis Bracer Trader

map.nodes[44497487] = Vendor({
    id = 85946,
    rewards = {
        Mount({item = 116772, id = 635}),
        Transmog({item = 119136, slot = L['tabard']}),
        Pet({item = 119143, id = 1574})
    }
}) -- Arakkoa Outcasts Quartermaster

map.nodes[42917788] = Vendor({
    id = 88482,
    rewards = {
        Mount({item = 116672, id = 625, note = '+5000 {currency:823}'}),
        Pet({item = 119148, id = 1571}), Pet({item = 119149, id = 1430}),
        Transmog({item = 119137, slot = L['tabard']}),
        ns.reward.Follower({id = 460, note = '{icon:979575}{item:119165}'})
    }
}) -- Wteamwheedle Quartermaster

map.nodes[46627676] = Vendor({
    id = 85932,
    rewards = {
        Transmog({item = 113135, slot = L['tabard']}),
        Mount({item = 116664, id = 617}), Pet({item = 119142, id = 1450}),
        Toy({item = 115472}),
        ns.reward.Follower({id = 462, note = '{icon:979575}{item:119162}'})

    }
}) -- Council of Exarchs Quartermaster

-------------------------------------------------------------------------------
------------------------ PROFESSION TRAINERS & VENDORS ------------------------
-------------------------------------------------------------------------------

map.nodes[37086889] = Trainer.Alchemy({id = 85905})
map.nodes[49023315] = Trainer.Archaeology({id = 85927})
map.nodes[49274644] = Trainer.Blacksmithing({id = 85917})
map.nodes[35147619] = Trainer.Cooking({id = 85925})
map.nodes[48194055] = Trainer.Engineering({id = 85918})
map.nodes[56656537] = Trainer.Enchanting({id = 85914})
map.nodes[55467851] = Trainer.Fishing({id = 85926})
map.nodes[37666948] = Trainer.Herbalism({id = 85921})
map.nodes[63173361] = Trainer.Inscription({id = 85911})
map.nodes[43453389] = Trainer.Jewelcrafting({id = 85916})
map.nodes[52524205] = Trainer.Leatherworking({id = 85920})
map.nodes[47304367] = Trainer.Mining({id = 85919})
map.nodes[52264329] = Trainer.Skinning({id = 85923})
map.nodes[51533708] = Trainer.Tailoring({id = 85910})

map.nodes[51303625] = Vendor({id = 87049, rewards = {}})

map.nodes[44133777] = Vendor({id = 87052, rewards = {}})

map.nodes[47873985] = Vendor({id = 87065, rewards = {}})

map.nodes[48974879] = Vendor({id = 87062, rewards = {}})

map.nodes[52004153] = Vendor({id = 87057, rewards = {}})

map.nodes[56966472] = Vendor({id = 87022, rewards = {}})

map.nodes[36736858] = Vendor({id = 87048, rewards = {}})

map.nodes[61963337] = Vendor({id = 87063, rewards = {}})
