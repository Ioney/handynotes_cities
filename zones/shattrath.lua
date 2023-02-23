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

local Mailbox = ns.node.Mailbox
local Innkeeper = ns.node.Innkeeper
local Banker = ns.node.Banker
local Auctioneer = ns.node.Auctioneer
local Vendor = ns.node.Vendor
local Profession = ns.node.Profession

local Path = ns.poi.Path
-------------------------------------------------------------------------------
local map = Map({id = 111, settings = true})
-------------------------------------------------------------------------------

map.nodes[60086505] = Mailbox()
map.nodes[47972466] = Mailbox()
map.nodes[28064742] = Mailbox()
map.nodes[55388051] = Mailbox()
map.nodes[74754858] = Mailbox()
map.nodes[73703448] = Mailbox()

map.nodes[56328154] = Innkeeper({id = 19232, note = L['scryers']})
map.nodes[28284936] = Innkeeper({id = 19046, note = L['aldor']})

map.nodes[55978002] = ns.node.Stablemaster({id = 21517, note = L['scryers']})
map.nodes[28594774] = ns.node.Stablemaster({id = 21518, note = L['aldor']})

map.nodes[60206040] = Banker({note = L['scryers']})
map.nodes[47952939] = Banker({note = L['aldor']})

map.nodes[56866275] = Auctioneer({note = L['scryers']})
map.nodes[51242691] = Auctioneer({note = L['aldor']})

map.nodes[48134292] = Vendor({
    id = 27667,
    rewards = {
        Transmog({item = 34917, slot = L['cloth']}),
        Transmog({item = 34918, slot = L['cloth']}),
        Transmog({item = 34919, slot = L['cloth']}),
        Transmog({item = 34924, slot = L['cloth']}),
        Transmog({item = 34925, slot = L['cloth']}),
        Transmog({item = 34926, slot = L['cloth']}),
        Transmog({item = 34936, slot = L['cloth']}),
        Transmog({item = 34937, slot = L['cloth']}),
        Transmog({item = 34938, slot = L['cloth']}),
        Transmog({item = 34892, slot = L['crossbow']}),
        Transmog({item = 34894, slot = L['dagger']}),
        Transmog({item = 34895, slot = L['dagger']}),
        Transmog({item = 34949, slot = L['dagger']}),
        Transmog({item = 34952, slot = L['dagger']}),
        Transmog({item = 34893, slot = L['fist']}),
        Transmog({item = 34950, slot = L['fist']}),
        Transmog({item = 34951, slot = L['fist']}),
        Transmog({item = 34900, slot = L['leather']}),
        Transmog({item = 34901, slot = L['leather']}),
        Transmog({item = 34902, slot = L['leather']}),
        Transmog({item = 34903, slot = L['leather']}),
        Transmog({item = 34904, slot = L['leather']}),
        Transmog({item = 34905, slot = L['leather']}),
        Transmog({item = 34906, slot = L['leather']}),
        Transmog({item = 34910, slot = L['leather']}),
        Transmog({item = 34911, slot = L['leather']}),
        Transmog({item = 34927, slot = L['leather']}),
        Transmog({item = 34928, slot = L['leather']}),
        Transmog({item = 34929, slot = L['leather']}),
        Transmog({item = 34912, slot = L['mail']}),
        Transmog({item = 34914, slot = L['mail']}),
        Transmog({item = 34916, slot = L['mail']}),
        Transmog({item = 34930, slot = L['mail']}),
        Transmog({item = 34931, slot = L['mail']}),
        Transmog({item = 34932, slot = L['mail']}),
        Transmog({item = 34933, slot = L['mail']}),
        Transmog({item = 34934, slot = L['mail']}),
        Transmog({item = 34935, slot = L['mail']}),
        Transmog({item = 34896, slot = L['1h_mace']}),
        Transmog({item = 34921, slot = L['plate']}),
        Transmog({item = 34922, slot = L['plate']}),
        Transmog({item = 34923, slot = L['plate']}),
        Transmog({item = 34939, slot = L['plate']}),
        Transmog({item = 34940, slot = L['plate']}),
        Transmog({item = 34941, slot = L['plate']}),
        Transmog({item = 34942, slot = L['plate']}),
        Transmog({item = 34943, slot = L['plate']}),
        Transmog({item = 34944, slot = L['plate']}),
        Transmog({item = 34945, slot = L['plate']}),
        Transmog({item = 34946, slot = L['plate']}),
        Transmog({item = 34947, slot = L['plate']}),
        Transmog({item = 34898, slot = L['staff']}),
        Transmog({item = 34891, slot = L['2h_axe']})
    }
})

map.nodes[51004174] = Vendor({
    id = 21432,
    rewards = {
        Transmog({item = 31781, slot = L['tabard']}),
        Transmog({item = 29176, slot = L['shield']}),
        Transmog({item = 35404, slot = L['plate']}),
        Transmog({item = 35407, slot = L['plate']}),
        Transmog({item = 35416, slot = L['plate']}),
        Transmog({item = 29175, slot = L['1h_mace']}),
        Transmog({item = 29180, slot = L['mail']}),
        Transmog({item = 35380, slot = L['mail']}),
        Transmog({item = 35381, slot = L['mail']}),
        Transmog({item = 35388, slot = L['mail']}),
        Transmog({item = 35395, slot = L['mail']}),
        Transmog({item = 35359, slot = L['leather']}),
        Transmog({item = 35362, slot = L['leather']}),
        Transmog({item = 35368, slot = L['leather']}),
        Transmog({item = 35375, slot = L['leather']}),
        Transmog({item = 35330, slot = L['cloth']}),
        Transmog({item = 35333, slot = L['cloth']}),
        Transmog({item = 35341, slot = L['cloth']}),
        Transmog({item = 35345, slot = L['cloth']})
    }
})

map.nodes[50844225] = Vendor({
    id = 18525,
    rewards = {
        Transmog({item = 29369, slot = L['cloak']}),
        Transmog({item = 29375, slot = L['cloak']}),
        Transmog({item = 29382, slot = L['cloak']}),
        Transmog({item = 29385, slot = L['cloak']}),
        Transmog({item = 33304, slot = L['cloak']}),
        Transmog({item = 33333, slot = L['cloak']}),
        Transmog({item = 33484, slot = L['cloak']}),
        Transmog({item = 33593, slot = L['cloak']}),
        Transmog({item = 35321, slot = L['cloak']}),
        Transmog({item = 35324, slot = L['cloak']}),
        Transmog({item = 30761, slot = L['cloth']}),
        Transmog({item = 30762, slot = L['cloth']}),
        Transmog({item = 30763, slot = L['cloth']}),
        Transmog({item = 30764, slot = L['cloth']}),
        Transmog({item = 32089, slot = L['cloth']}),
        Transmog({item = 32090, slot = L['cloth']}),
        Transmog({item = 33291, slot = L['cloth']}),
        Transmog({item = 33584, slot = L['cloth']}),
        Transmog({item = 33585, slot = L['cloth']}),
        Transmog({item = 33586, slot = L['cloth']}),
        Transmog({item = 33587, slot = L['cloth']}),
        Transmog({item = 33588, slot = L['cloth']}),
        Transmog({item = 33589, slot = L['cloth']}),
        Transmog({item = 29275, slot = L['dagger']}),
        Transmog({item = 30776, slot = L['leather']}),
        Transmog({item = 30778, slot = L['leather']}),
        Transmog({item = 30779, slot = L['leather']}),
        Transmog({item = 30780, slot = L['leather']}),
        Transmog({item = 32087, slot = L['leather']}),
        Transmog({item = 32088, slot = L['leather']}),
        Transmog({item = 33222, slot = L['leather']}),
        Transmog({item = 33287, slot = L['leather']}),
        Transmog({item = 33538, slot = L['leather']}),
        Transmog({item = 33539, slot = L['leather']}),
        Transmog({item = 33540, slot = L['leather']}),
        Transmog({item = 33552, slot = L['leather']}),
        Transmog({item = 33557, slot = L['leather']}),
        Transmog({item = 33559, slot = L['leather']}),
        Transmog({item = 33566, slot = L['leather']}),
        Transmog({item = 33577, slot = L['leather']}),
        Transmog({item = 33578, slot = L['leather']}),
        Transmog({item = 33579, slot = L['leather']}),
        Transmog({item = 33580, slot = L['leather']}),
        Transmog({item = 33582, slot = L['leather']}),
        Transmog({item = 33583, slot = L['leather']}),
        Transmog({item = 33972, slot = L['leather']}),
        Transmog({item = 33973, slot = L['leather']}),
        Transmog({item = 33974, slot = L['leather']}),
        Transmog({item = 30770, slot = L['mail']}),
        Transmog({item = 30772, slot = L['mail']}),
        Transmog({item = 30773, slot = L['mail']}),
        Transmog({item = 30774, slot = L['mail']}),
        Transmog({item = 32085, slot = L['mail']}),
        Transmog({item = 32086, slot = L['mail']}),
        Transmog({item = 33280, slot = L['mail']}),
        Transmog({item = 33324, slot = L['mail']}),
        Transmog({item = 33386, slot = L['mail']}),
        Transmog({item = 33527, slot = L['mail']}),
        Transmog({item = 33528, slot = L['mail']}),
        Transmog({item = 33529, slot = L['mail']}),
        Transmog({item = 33530, slot = L['mail']}),
        Transmog({item = 33531, slot = L['mail']}),
        Transmog({item = 33532, slot = L['mail']}),
        Transmog({item = 33534, slot = L['mail']}),
        Transmog({item = 33535, slot = L['mail']}),
        Transmog({item = 33536, slot = L['mail']}),
        Transmog({item = 33537, slot = L['mail']}),
        Transmog({item = 33965, slot = L['mail']}),
        Transmog({item = 33970, slot = L['mail']}),
        Transmog({item = 29269, slot = L['offhand']}),
        Transmog({item = 29270, slot = L['offhand']}),
        Transmog({item = 29271, slot = L['offhand']}),
        Transmog({item = 29272, slot = L['offhand']}),
        Transmog({item = 29273, slot = L['offhand']}),
        Transmog({item = 29274, slot = L['offhand']}),
        Transmog({item = 33325, slot = L['offhand']}),
        Transmog({item = 33334, slot = L['offhand']}),
        Transmog({item = 30766, slot = L['plate']}),
        Transmog({item = 30767, slot = L['plate']}),
        Transmog({item = 30768, slot = L['plate']}),
        Transmog({item = 30769, slot = L['plate']}),
        Transmog({item = 32083, slot = L['plate']}),
        Transmog({item = 32084, slot = L['plate']}),
        Transmog({item = 33207, slot = L['plate']}),
        Transmog({item = 33279, slot = L['plate']}),
        Transmog({item = 33331, slot = L['plate']}),
        Transmog({item = 33501, slot = L['plate']}),
        Transmog({item = 33512, slot = L['plate']}),
        Transmog({item = 33513, slot = L['plate']}),
        Transmog({item = 33514, slot = L['plate']}),
        Transmog({item = 33515, slot = L['plate']}),
        Transmog({item = 33516, slot = L['plate']}),
        Transmog({item = 33517, slot = L['plate']}),
        Transmog({item = 33518, slot = L['plate']}),
        Transmog({item = 33519, slot = L['plate']}),
        Transmog({item = 33520, slot = L['plate']}),
        Transmog({item = 33522, slot = L['plate']}),
        Transmog({item = 33523, slot = L['plate']}),
        Transmog({item = 33524, slot = L['plate']}),
        Transmog({item = 33810, slot = L['plate']}),
        Transmog({item = 29266, slot = L['shield']}),
        Transmog({item = 29267, slot = L['shield']}),
        Transmog({item = 29268, slot = L['shield']}),
        Transmog({item = 33192, slot = L['wand']})
    }
})

local artifacts = {
    Transmog({item = 28963, slot = L['cloth']}),
    Transmog({item = 28964, slot = L['cloth']}),
    Transmog({item = 28966, slot = L['cloth']}),
    Transmog({item = 28967, slot = L['cloth']}),
    Transmog({item = 28968, slot = L['cloth']}),
    Transmog({item = 29011, slot = L['plate']}),
    Transmog({item = 29012, slot = L['plate']}),
    Transmog({item = 29015, slot = L['plate']}),
    Transmog({item = 29016, slot = L['plate']}),
    Transmog({item = 29017, slot = L['plate']}),
    Transmog({item = 29019, slot = L['plate']}),
    Transmog({item = 29020, slot = L['plate']}),
    Transmog({item = 29021, slot = L['plate']}),
    Transmog({item = 29022, slot = L['plate']}),
    Transmog({item = 29023, slot = L['plate']}),
    Transmog({item = 29028, slot = L['mail']}),
    Transmog({item = 29029, slot = L['mail']}),
    Transmog({item = 29030, slot = L['mail']}),
    Transmog({item = 29031, slot = L['mail']}),
    Transmog({item = 29032, slot = L['mail']}),
    Transmog({item = 29033, slot = L['mail']}),
    Transmog({item = 29034, slot = L['mail']}),
    Transmog({item = 29035, slot = L['mail']}),
    Transmog({item = 29036, slot = L['mail']}),
    Transmog({item = 29037, slot = L['mail']}),
    Transmog({item = 29038, slot = L['mail']}),
    Transmog({item = 29039, slot = L['mail']}),
    Transmog({item = 29040, slot = L['mail']}),
    Transmog({item = 29042, slot = L['mail']}),
    Transmog({item = 29043, slot = L['mail']}),
    Transmog({item = 29044, slot = L['leather']}),
    Transmog({item = 29045, slot = L['leather']}),
    Transmog({item = 29046, slot = L['leather']}),
    Transmog({item = 29047, slot = L['leather']}),
    Transmog({item = 29048, slot = L['leather']}),
    Transmog({item = 29049, slot = L['cloth']}),
    Transmog({item = 29050, slot = L['cloth']}),
    Transmog({item = 29053, slot = L['cloth']}),
    Transmog({item = 29054, slot = L['cloth']}),
    Transmog({item = 29055, slot = L['cloth']}),
    Transmog({item = 29056, slot = L['cloth']}),
    Transmog({item = 29057, slot = L['cloth']}),
    Transmog({item = 29058, slot = L['cloth']}),
    Transmog({item = 29059, slot = L['cloth']}),
    Transmog({item = 29060, slot = L['cloth']}),
    Transmog({item = 29061, slot = L['plate']}),
    Transmog({item = 29062, slot = L['plate']}),
    Transmog({item = 29063, slot = L['plate']}),
    Transmog({item = 29064, slot = L['plate']}),
    Transmog({item = 29065, slot = L['plate']}),
    Transmog({item = 29066, slot = L['plate']}),
    Transmog({item = 29067, slot = L['plate']}),
    Transmog({item = 29068, slot = L['plate']}),
    Transmog({item = 29069, slot = L['plate']}),
    Transmog({item = 29070, slot = L['plate']}),
    Transmog({item = 29071, slot = L['plate']}),
    Transmog({item = 29072, slot = L['plate']}),
    Transmog({item = 29073, slot = L['plate']}),
    Transmog({item = 29074, slot = L['plate']}),
    Transmog({item = 29075, slot = L['plate']}),
    Transmog({item = 29076, slot = L['cloth']}),
    Transmog({item = 29077, slot = L['cloth']}),
    Transmog({item = 29078, slot = L['cloth']}),
    Transmog({item = 29079, slot = L['cloth']}),
    Transmog({item = 29080, slot = L['cloth']}),
    Transmog({item = 29081, slot = L['mail']}),
    Transmog({item = 29082, slot = L['mail']}),
    Transmog({item = 29083, slot = L['mail']}),
    Transmog({item = 29084, slot = L['mail']}),
    Transmog({item = 29085, slot = L['mail']}),
    Transmog({item = 29086, slot = L['leather']}),
    Transmog({item = 29087, slot = L['leather']}),
    Transmog({item = 29088, slot = L['leather']}),
    Transmog({item = 29089, slot = L['leather']}),
    Transmog({item = 29090, slot = L['leather']}),
    Transmog({item = 29091, slot = L['leather']}),
    Transmog({item = 29092, slot = L['leather']}),
    Transmog({item = 29093, slot = L['leather']}),
    Transmog({item = 29094, slot = L['leather']}),
    Transmog({item = 29095, slot = L['leather']}),
    Transmog({item = 29096, slot = L['leather']}),
    Transmog({item = 29097, slot = L['leather']}),
    Transmog({item = 29098, slot = L['leather']}),
    Transmog({item = 29099, slot = L['leather']}),
    Transmog({item = 29100, slot = L['leather']})
}

local heirlooms = {
    Transmog({item = 30113, slot = L['plate']}),
    Transmog({item = 30114, slot = L['plate']}),
    Transmog({item = 30115, slot = L['plate']}),
    Transmog({item = 30116, slot = L['plate']}),
    Transmog({item = 30117, slot = L['plate']}),
    Transmog({item = 30118, slot = L['plate']}),
    Transmog({item = 30119, slot = L['plate']}),
    Transmog({item = 30120, slot = L['plate']}),
    Transmog({item = 30121, slot = L['plate']}),
    Transmog({item = 30122, slot = L['plate']}),
    Transmog({item = 30123, slot = L['plate']}),
    Transmog({item = 30124, slot = L['plate']}),
    Transmog({item = 30125, slot = L['plate']}),
    Transmog({item = 30126, slot = L['plate']}),
    Transmog({item = 30127, slot = L['plate']}),
    Transmog({item = 30129, slot = L['plate']}),
    Transmog({item = 30130, slot = L['plate']}),
    Transmog({item = 30131, slot = L['plate']}),
    Transmog({item = 30132, slot = L['plate']}),
    Transmog({item = 30133, slot = L['plate']}),
    Transmog({item = 30134, slot = L['plate']}),
    Transmog({item = 30135, slot = L['plate']}),
    Transmog({item = 30136, slot = L['plate']}),
    Transmog({item = 30137, slot = L['plate']}),
    Transmog({item = 30138, slot = L['plate']}),
    Transmog({item = 30139, slot = L['mail']}),
    Transmog({item = 30140, slot = L['mail']}),
    Transmog({item = 30141, slot = L['mail']}),
    Transmog({item = 30142, slot = L['mail']}),
    Transmog({item = 30143, slot = L['mail']}),
    Transmog({item = 30144, slot = L['leather']}),
    Transmog({item = 30145, slot = L['leather']}),
    Transmog({item = 30146, slot = L['leather']}),
    Transmog({item = 30148, slot = L['leather']}),
    Transmog({item = 30149, slot = L['leather']}),
    Transmog({item = 30150, slot = L['cloth']}),
    Transmog({item = 30151, slot = L['cloth']}),
    Transmog({item = 30152, slot = L['cloth']}),
    Transmog({item = 30153, slot = L['cloth']}),
    Transmog({item = 30154, slot = L['cloth']}),
    Transmog({item = 30159, slot = L['cloth']}),
    Transmog({item = 30160, slot = L['cloth']}),
    Transmog({item = 30161, slot = L['cloth']}),
    Transmog({item = 30162, slot = L['cloth']}),
    Transmog({item = 30163, slot = L['cloth']}),
    Transmog({item = 30164, slot = L['mail']}),
    Transmog({item = 30165, slot = L['mail']}),
    Transmog({item = 30166, slot = L['mail']}),
    Transmog({item = 30167, slot = L['mail']}),
    Transmog({item = 30168, slot = L['mail']}),
    Transmog({item = 30169, slot = L['mail']}),
    Transmog({item = 30170, slot = L['mail']}),
    Transmog({item = 30171, slot = L['mail']}),
    Transmog({item = 30172, slot = L['mail']}),
    Transmog({item = 30173, slot = L['mail']}),
    Transmog({item = 30185, slot = L['mail']}),
    Transmog({item = 30189, slot = L['mail']}),
    Transmog({item = 30190, slot = L['mail']}),
    Transmog({item = 30192, slot = L['mail']}),
    Transmog({item = 30194, slot = L['mail']}),
    Transmog({item = 30196, slot = L['cloth']}),
    Transmog({item = 30205, slot = L['cloth']}),
    Transmog({item = 30206, slot = L['cloth']}),
    Transmog({item = 30207, slot = L['cloth']}),
    Transmog({item = 30210, slot = L['cloth']}),
    Transmog({item = 30211, slot = L['cloth']}),
    Transmog({item = 30212, slot = L['cloth']}),
    Transmog({item = 30213, slot = L['cloth']}),
    Transmog({item = 30214, slot = L['cloth']}),
    Transmog({item = 30215, slot = L['cloth']}),
    Transmog({item = 30216, slot = L['leather']}),
    Transmog({item = 30217, slot = L['leather']}),
    Transmog({item = 30219, slot = L['leather']}),
    Transmog({item = 30220, slot = L['leather']}),
    Transmog({item = 30221, slot = L['leather']}),
    Transmog({item = 30222, slot = L['leather']}),
    Transmog({item = 30223, slot = L['leather']}),
    Transmog({item = 30228, slot = L['leather']}),
    Transmog({item = 30229, slot = L['leather']}),
    Transmog({item = 30230, slot = L['leather']}),
    Transmog({item = 30231, slot = L['leather']}),
    Transmog({item = 30232, slot = L['leather']}),
    Transmog({item = 30233, slot = L['leather']}),
    Transmog({item = 30234, slot = L['leather']}),
    Transmog({item = 30235, slot = L['leather']})
}

map.nodes[42419042] = Vendor({
    id = 20613,
    sublabel = L['scryers'],
    rewards = artifacts
})
map.nodes[23643284] = Vendor({
    id = 20616,
    sublabel = L['aldor'],
    rewards = artifacts
})

map.nodes[44959168] = Vendor({
    id = 21905,
    sublabel = L['scryers'],
    rewards = heirlooms
})
map.nodes[24882688] = Vendor({
    id = 21906,
    sublabel = L['aldor'],
    rewards = heirlooms
})

map.nodes[75453052] = Vendor({
    id = 18756,
    rewards = {Toy({item = 134004}), Toy({item = 134007})}
})

map.nodes[61986884] = Vendor({
    id = 21655,
    rewards = {
        Transmog({item = 30835, slot = L['mail']}),
        Transmog({item = 30836, slot = L['cloth']}),
        Transmog({item = 35331, slot = L['cloth']}),
        Transmog({item = 35335, slot = L['cloth']}),
        Transmog({item = 35340, slot = L['cloth']}),
        Transmog({item = 35344, slot = L['cloth']}),
        Transmog({item = 35357, slot = L['leather']}),
        Transmog({item = 35361, slot = L['leather']}),
        Transmog({item = 35370, slot = L['leather']}),
        Transmog({item = 35373, slot = L['leather']}),
        Transmog({item = 35378, slot = L['mail']}),
        Transmog({item = 35382, slot = L['mail']}),
        Transmog({item = 35389, slot = L['mail']}),
        Transmog({item = 35391, slot = L['mail']}),
        Transmog({item = 35405, slot = L['plate']}),
        Transmog({item = 35411, slot = L['plate']}),
        Transmog({item = 35412, slot = L['plate']}),
        Transmog({item = 30830, slot = L['polearm']}),
        Transmog({item = 30832, slot = L['1h_mace']}),
        Transmog({item = 31778, slot = L['tabard']})
    }
})

-- PROFESSIONS

map.nodes[36012073] = ns.node.Jewelcrafting({id = 19063, sublabel = L['aldor']})
map.nodes[38243026] = ns.node.Herbalism({id = 33687, sublabel = L['aldor']})
map.nodes[38733019] = ns.node.Alchemy({id = 33674, sublabel = L['aldor']})
map.nodes[37553138] = ns.node.Blacksmithing({id = 33675, sublabel = L['aldor']})
map.nodes[37753181] = ns.node.Engineering({id = 33677, sublabel = L['aldor']})
map.nodes[37522767] = ns.node
                          .Leatherworking({id = 33681, sublabel = L['aldor']})
map.nodes[37692698] = ns.node.Tailoring({id = 33684, sublabel = L['aldor']})
map.nodes[37202701] = ns.node.Skinning({id = 33683, sublabel = L['aldor']})

map.nodes[38297097] = ns.node.Alchemy({id = 33630, sublabel = L['scryers']})
map.nodes[38457116] = ns.node.Herbalism({id = 33639, sublabel = L['scryers']})
map.nodes[44079069] = ns.node.Alchemy({id = 33608, sublabel = L['scryers']})
map.nodes[43879059] = ns.node.Blacksmithing({
    id = 33609,
    sublabel = L['scryers']
})
map.nodes[43689049] = ns.node.Enchanting({id = 33610, sublabel = L['scryers']})
map.nodes[43509039] = ns.node.Engineering({id = 33611, sublabel = L['scryers']})
map.nodes[43449056] = ns.node.Inscription({id = 33615, sublabel = L['scryers']})
map.nodes[43649068] = ns.node.Jewelcrafting({
    id = 33614,
    sublabel = L['scryers']
})
map.nodes[43849077] = ns.node.Leatherworking({
    id = 33612,
    sublabel = L['scryers']
})
map.nodes[44029092] = ns.node.Tailoring({id = 33613, sublabel = L['scryers']})
map.nodes[43799119] = ns.node.Herbalism({id = 33616, sublabel = L['scryers']})
map.nodes[43599110] = ns.node.Mining({id = 33617, sublabel = L['scryers']})
map.nodes[43409096] = ns.node.Skinning({id = 33618, sublabel = L['scryers']})
map.nodes[43359111] = ns.node.Cooking({id = 33619, sublabel = L['scryers']})
map.nodes[43539126] = ns.node.Fishing({id = 33623, sublabel = L['scryers']})
map.nodes[43739139] = ns.node.FirstAid({id = 33621, sublabel = L['scryers']})
map.nodes[43269227] = ns.node.Enchanting({id = 19251, sublabel = L['scryers']})
map.nodes[43459240] = ns.node.Enchanting({id = 19525, sublabel = L['scryers']})
map.nodes[55907432] = ns.node.Inscription({id = 33638, sublabel = L['scryers']})
map.nodes[55557467] = ns.node.Enchanting({id = 33633, sublabel = L['scryers']})
map.nodes[58297511] = ns.node.Jewelcrafting({
    id = 33637,
    sublabel = L['scryers']
})
map.nodes[58787511] = ns.node.Mining({id = 33640, sublabel = L['scryers']})

map.nodes[62667031] = ns.node.Archaeology({id = 47575})
map.nodes[62656814] = ns.node.Cooking({id = 19185})
map.nodes[67256739] = ns.node.Leatherworking({id = 19187})
map.nodes[69284292] = ns.node.Blacksmithing({id = 20124})
map.nodes[69814200] = ns.node.Blacksmithing({id = 20125})
map.nodes[76813426] = ns.node.Cooking({id = 19186})
map.nodes[45622148] = ns.node.Alchemy({id = 19052})

