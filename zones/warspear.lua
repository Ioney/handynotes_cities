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

local Mailbox = ns.node.Mailbox
local Innkeeper = ns.node.Innkeeper
local Banker = ns.node.Banker
local Auctioneer = ns.node.Auctioneer
local Vendor = ns.node.Vendor
local Profession = ns.node.Profession

local Path = ns.poi.Path
-------------------------------------------------------------------------------
local map = Map({id = 624, settings = true})
-------------------------------------------------------------------------------

map.nodes[51435596] = Mailbox()
map.nodes[54552971] = Mailbox()
map.nodes[68483971] = Mailbox()
map.nodes[77815094] = Mailbox()
map.nodes[64562519] = Mailbox()

map.nodes[44183389] = ns.node.Flightpoint({id = 86049})

map.nodes[44964319] = Innkeeper({id = 86307})

map.nodes[77445951] = ns.node.Stablemaster({id = 86052})
map.nodes[58605294] = ns.node.Transmogrifier({id = 86395})
map.nodes[59235352] = ns.node.Voidstorage({id = 86396})
map.nodes[59235021] = ns.node.PortalTrainer({id = 88255})
map.nodes[51416159] = Banker()

map.nodes[53465977] = Vendor({
    id = 86037,
    rewards = {
        Mount({item = 116772, id = 635}),
        Transmog({item = 119136, slot = L['tabard']}),
        Pet({item = 119143, id = 1574})
    }
})

map.nodes[54236069] = Vendor({
    id = 88493,
    rewards = {
        Mount({item = 116672, id = 625, note = '+5000 {currency:823}'}),
        Pet({item = 119148, id = 1571}), Pet({item = 119149, id = 1430}),
        Transmog({item = 119137, slot = L['tabard']}),
        ns.reward.Follower({id = 460, note = '{icon:979575}{item:119165}'})
    }
})

map.nodes[53916252] = Vendor({
    id = 86036,
    rewards = {
        Mount({item = 116785, id = 648, note = '+5000 {currency:823}'}),
        Toy({item = 115468}), Pet({item = 119141, id = 1542}),
        ns.reward.Follower({id = 459, note = '{icon:979575}{item:119161}'})
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

map.nodes[66396224] = Vendor({
    id = 92503,
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
})

map.nodes[66706296] = Vendor({
    id = 86378,
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
})

map.nodes[66696431] = Vendor({
    id = 86376,
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
})

map.nodes[66006453] = Vendor({
    id = 86379,
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
})

map.nodes[65606477] = Vendor({
    id = 91322,
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
})

map.nodes[65166427] = Vendor({
    id = 86382,
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
})

map.nodes[42583641] = Vendor({
    id = 85840,
    rewards = {
        Item({item = 109254}), Item({item = 109256}), Item({item = 111929}),
        Item({item = 111968}), Item({item = 111970}), Item({item = 111972}),
        Item({item = 111974}), Item({item = 111976}), Item({item = 111978}),
        Item({item = 111980}), Item({item = 111982}), Item({item = 111986}),
        Item({item = 111988}), Item({item = 111990}), Item({item = 111992}),
        Item({item = 112002}), Item({item = 116185}), Item({item = 116196}),
        Item({item = 116200}), Item({item = 116431})
    }
})

map.nodes[54062532] = Auctioneer({id = 86635})
map.nodes[54912471] = Auctioneer({id = 88128})
map.nodes[55332598] = Auctioneer({id = 88130})

map.nodes[45654479] = ns.node.Cooking({id = 86029})
map.nodes[49482787] = ns.node.Leatherworking({id = 86032})
map.nodes[48683131] = ns.node.Skinning({id = 86028})
map.nodes[60942636] = ns.node.Alchemy({id = 86009})
map.nodes[62663063] = ns.node.Herbalism({id = 86006})
map.nodes[71664025] = ns.node.Engineering({id = 86012})
map.nodes[78755292] = ns.node.Enchanting({id = 86027})
map.nodes[77104747] = ns.node.Inscription({id = 86015})
map.nodes[74063708] = ns.node.Blacksmithing({id = 86048})
map.nodes[78803762] = ns.node.Mining({
    id = 86014,
    pois = {Path({79363524, 78803762, 77113792})}
})
map.nodes[69101655] = ns.node.Fishing({id = 86628})
map.nodes[65405124] = ns.node.FirstAid({id = 86034})
map.nodes[60243989] = ns.node.Jewelcrafting({id = 86010})
map.nodes[59434282] = ns.node.Tailoring({id = 86004})
map.nodes[73613116] = ns.node.Archaeology({id = 86033})
