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
local Trainer = ns.node.Trainer

local Path = ns.poi.Path
-------------------------------------------------------------------------------
local map = Map({id = 85, settings = true})
-------------------------------------------------------------------------------

map.nodes[55805205] = Mailbox()
map.nodes[60195101] = Mailbox()
map.nodes[58485962] = Mailbox()
map.nodes[57056522] = Mailbox()
map.nodes[50536489] = Mailbox()
map.nodes[52807580] = Mailbox()
map.nodes[49308097] = Mailbox()
map.nodes[44786840] = Mailbox()
map.nodes[44336682] = Mailbox()
map.nodes[41677157] = Mailbox()
map.nodes[32536330] = Mailbox()
map.nodes[36396511] = Mailbox()
map.nodes[42166017] = Mailbox()
map.nodes[46885342] = Mailbox()
map.nodes[50285233] = Mailbox()
map.nodes[51324814] = Mailbox()
map.nodes[49614181] = Mailbox()
map.nodes[55104783] = Mailbox()
map.nodes[65584976] = Mailbox()
map.nodes[67434980] = Mailbox()
map.nodes[70094830] = Mailbox()
map.nodes[67854471] = Mailbox()
map.nodes[67643913] = Mailbox()
map.nodes[73373673] = Mailbox()
map.nodes[67662992] = Mailbox()
map.nodes[65243122] = Mailbox()
map.nodes[71191184] = Mailbox()
map.nodes[39354876] = Mailbox()
map.nodes[39736480] = Mailbox()

map.nodes[53647877] = Innkeeper({id = 6929})
map.nodes[71284995] = Innkeeper({id = 46642})
map.nodes[38864864] = Innkeeper({id = 46642})
map.nodes[32856486] = Innkeeper({id = 46642})
map.nodes[40957982] = Innkeeper({id = 45563})

map.nodes[48748342] = Banker()
map.nodes[67585256] = Banker()
map.nodes[39874616] = Banker()
map.nodes[33046441] = Banker({id = 44770})

map.nodes[53847347] = Auctioneer()
map.nodes[66713664] = Auctioneer()
map.nodes[41744894] = Auctioneer({id = 44787})
map.nodes[33016521] = Auctioneer()
map.nodes[35857730] = Auctioneer({id = 45659})

map.nodes[40366066] = ns.node.Barber({id = 29143})
map.nodes[57856582] = ns.node.Voidstorage({id = 54472})
map.nodes[58116543] = ns.node.Transmogrifier({id = 54473})
map.nodes[62133528] = ns.node.Stablemaster({id = 31757})
map.nodes[37948715] = ns.node.Stablemaster({id = 133108})
map.nodes[32426475] = ns.node.Stablemaster({id = 9988})
map.nodes[39334925] = ns.node.Stablemaster({id = 44788})
map.nodes[57159128] = ns.node.PortalTrainer({id = 47253})

-------------------------------------------------------------------------------
------------------------------------ VENDORS ----------------------------------
-------------------------------------------------------------------------------

map.nodes[58725586] = Vendor({
    id = 52809,
    rewards = {
        Toy({item = 104323}), Toy({item = 104324}), Toy({item = 54343}),
        Toy({item = 44606}), Toy({item = 45057}), Toy({item = 54437}),
        Toy({item = 54438}), Toy({item = 69895}), Toy({item = 69896}),
        Toy({item = 137663}), Toy({item = 192099}),
        Pet({item = 95621, id = 227}), Pet({item = 54436, id = 254})
    },
    pois = {
        Path({
            58725586, 58545417, 59315200, 59035113, 57335113, 56965190,
            57905390, 58725586, 58865886, 59036129, 58316275
        })
    }
})

map.nodes[33816787] = Vendor({
    id = 8404,
    rewards = {
        Pet({item = 10360, id = 75}), Pet({item = 10361, id = 77}),
        Pet({item = 10392, id = 78})
    },
    pois = {
        Path({
            33816787, 34246668, 34336529, 33806403, 32826327, 32006394,
            31866524, 32436668, 33386774, 33816787
        })
    }
})

map.nodes[48167176] = Vendor({
    id = 58155,
    rewards = {
        Transmog({item = 57913, slot = L['plate']}),
        Transmog({item = 57914, slot = L['plate']}),
        Transmog({item = 57915, slot = L['plate']}),
        Transmog({item = 57916, slot = L['mail']}),
        Transmog({item = 57917, slot = L['mail']}),
        Transmog({item = 57918, slot = L['leather']}),
        Transmog({item = 57919, slot = L['leather']}),
        Transmog({item = 57921, slot = L['cloth']}),
        Transmog({item = 57922, slot = L['cloth']}),
        Transmog({item = 57923, slot = L['offhand']}),
        Transmog({item = 57924, slot = L['offhand']}),
        Transmog({item = 57925, slot = L['shield']}),
        Transmog({item = 57926, slot = L['shield']}),
        Transmog({item = 57927, slot = L['Dagger']}),
        Transmog({item = 57928, slot = L['1h_axe']}),
        Transmog({item = 57929, slot = L['1h_sword']}),
        Transmog({item = 58096, slot = L['plate']}),
        Transmog({item = 58097, slot = L['plate']}),
        Transmog({item = 58098, slot = L['plate']}),
        Transmog({item = 58099, slot = L['plate']}),
        Transmog({item = 58100, slot = L['plate']}),
        Transmog({item = 58101, slot = L['plate']}),
        Transmog({item = 58102, slot = L['plate']}),
        Transmog({item = 58103, slot = L['plate']}),
        Transmog({item = 58104, slot = L['plate']}),
        Transmog({item = 58105, slot = L['plate']}),
        Transmog({item = 58106, slot = L['plate']}),
        Transmog({item = 58107, slot = L['plate']}),
        Transmog({item = 58108, slot = L['plate']}),
        Transmog({item = 58109, slot = L['plate']}),
        Transmog({item = 58110, slot = L['plate']}),
        Transmog({item = 58121, slot = L['mail']}),
        Transmog({item = 58122, slot = L['mail']}),
        Transmog({item = 58123, slot = L['mail']}),
        Transmog({item = 58124, slot = L['mail']}),
        Transmog({item = 58125, slot = L['mail']}),
        Transmog({item = 58126, slot = L['mail']}),
        Transmog({item = 58127, slot = L['mail']}),
        Transmog({item = 58128, slot = L['mail']}),
        Transmog({item = 58129, slot = L['mail']}),
        Transmog({item = 58130, slot = L['mail']}),
        Transmog({item = 58131, slot = L['leather']}),
        Transmog({item = 58132, slot = L['leather']}),
        Transmog({item = 58133, slot = L['leather']}),
        Transmog({item = 58134, slot = L['leather']}),
        Transmog({item = 58138, slot = L['leather']}),
        Transmog({item = 58139, slot = L['leather']}),
        Transmog({item = 58140, slot = L['leather']}),
        Transmog({item = 58150, slot = L['leather']}),
        Transmog({item = 58151, slot = L['leather']}),
        Transmog({item = 58152, slot = L['leather']}),
        Transmog({item = 58153, slot = L['cloth']}),
        Transmog({item = 58154, slot = L['cloth']}),
        Transmog({item = 58155, slot = L['cloth']}),
        Transmog({item = 58157, slot = L['cloth']}),
        Transmog({item = 58158, slot = L['cloth']}),
        Transmog({item = 58159, slot = L['cloth']}),
        Transmog({item = 58160, slot = L['cloth']}),
        Transmog({item = 58161, slot = L['cloth']}),
        Transmog({item = 58162, slot = L['cloth']}),
        Transmog({item = 58163, slot = L['cloth']}),
        Transmog({item = 58190, slot = L['cloak']}),
        Transmog({item = 58191, slot = L['cloak']}),
        Transmog({item = 58192, slot = L['cloak']}),
        Transmog({item = 58193, slot = L['cloak']}),
        Transmog({item = 58194, slot = L['cloak']}),
        Transmog({item = 58195, slot = L['plate']}),
        Transmog({item = 58197, slot = L['plate']}),
        Transmog({item = 58198, slot = L['plate']}),
        Transmog({item = 58199, slot = L['mail']}),
        Transmog({item = 58481, slot = L['mail']}),
        Transmog({item = 58482, slot = L['leather']}),
        Transmog({item = 58484, slot = L['leather']}),
        Transmog({item = 58485, slot = L['cloth']}),
        Transmog({item = 58486, slot = L['cloth']}),
        Transmog({item = 60243, slot = L['cloth']}),
        Transmog({item = 60244, slot = L['cloth']}),
        Transmog({item = 60245, slot = L['cloth']}),
        Transmog({item = 60246, slot = L['cloth']}),
        Transmog({item = 60247, slot = L['cloth']}),
        Transmog({item = 60248, slot = L['cloth']}),
        Transmog({item = 60249, slot = L['cloth']}),
        Transmog({item = 60250, slot = L['cloth']}),
        Transmog({item = 60251, slot = L['cloth']}),
        Transmog({item = 60252, slot = L['cloth']}),
        Transmog({item = 60253, slot = L['cloth']}),
        Transmog({item = 60254, slot = L['cloth']}),
        Transmog({item = 60255, slot = L['cloth']}),
        Transmog({item = 60256, slot = L['cloth']}),
        Transmog({item = 60257, slot = L['cloth']}),
        Transmog({item = 60258, slot = L['cloth']}),
        Transmog({item = 60259, slot = L['cloth']}),
        Transmog({item = 60261, slot = L['cloth']}),
        Transmog({item = 60262, slot = L['cloth']}),
        Transmog({item = 60275, slot = L['cloth']}),
        Transmog({item = 60276, slot = L['leather']}),
        Transmog({item = 60277, slot = L['leather']}),
        Transmog({item = 60278, slot = L['leather']}),
        Transmog({item = 60279, slot = L['leather']}),
        Transmog({item = 60280, slot = L['leather']}),
        Transmog({item = 60281, slot = L['leather']}),
        Transmog({item = 60282, slot = L['leather']}),
        Transmog({item = 60283, slot = L['leather']}),
        Transmog({item = 60284, slot = L['leather']}),
        Transmog({item = 60285, slot = L['leather']}),
        Transmog({item = 60286, slot = L['leather']}),
        Transmog({item = 60287, slot = L['leather']}),
        Transmog({item = 60288, slot = L['leather']}),
        Transmog({item = 60289, slot = L['leather']}),
        Transmog({item = 60290, slot = L['leather']}),
        Transmog({item = 60298, slot = L['leather']}),
        Transmog({item = 60299, slot = L['leather']}),
        Transmog({item = 60300, slot = L['leather']}),
        Transmog({item = 60301, slot = L['leather']}),
        Transmog({item = 60302, slot = L['leather']}),
        Transmog({item = 60303, slot = L['mail']}),
        Transmog({item = 60304, slot = L['mail']}),
        Transmog({item = 60305, slot = L['mail']}),
        Transmog({item = 60306, slot = L['mail']}),
        Transmog({item = 60307, slot = L['mail']}),
        Transmog({item = 60308, slot = L['mail']}),
        Transmog({item = 60309, slot = L['mail']}),
        Transmog({item = 60310, slot = L['mail']}),
        Transmog({item = 60311, slot = L['mail']}),
        Transmog({item = 60312, slot = L['mail']}),
        Transmog({item = 60313, slot = L['mail']}),
        Transmog({item = 60314, slot = L['mail']}),
        Transmog({item = 60315, slot = L['mail']}),
        Transmog({item = 60316, slot = L['mail']}),
        Transmog({item = 60317, slot = L['mail']}),
        Transmog({item = 60318, slot = L['mail']}),
        Transmog({item = 60319, slot = L['mail']}),
        Transmog({item = 60320, slot = L['mail']}),
        Transmog({item = 60321, slot = L['mail']}),
        Transmog({item = 60322, slot = L['mail']}),
        Transmog({item = 60323, slot = L['plate']}),
        Transmog({item = 60324, slot = L['plate']}),
        Transmog({item = 60325, slot = L['plate']}),
        Transmog({item = 60326, slot = L['plate']}),
        Transmog({item = 60327, slot = L['plate']}),
        Transmog({item = 60328, slot = L['plate']}),
        Transmog({item = 60329, slot = L['plate']}),
        Transmog({item = 60330, slot = L['plate']}),
        Transmog({item = 60331, slot = L['plate']}),
        Transmog({item = 60332, slot = L['plate']}),
        Transmog({item = 60339, slot = L['plate']}),
        Transmog({item = 60340, slot = L['plate']}),
        Transmog({item = 60341, slot = L['plate']}),
        Transmog({item = 60342, slot = L['plate']}),
        Transmog({item = 60343, slot = L['plate']}),
        Transmog({item = 60344, slot = L['plate']}),
        Transmog({item = 60345, slot = L['plate']}),
        Transmog({item = 60346, slot = L['plate']}),
        Transmog({item = 60347, slot = L['plate']}),
        Transmog({item = 60348, slot = L['plate']}),
        Transmog({item = 60349, slot = L['plate']}),
        Transmog({item = 60350, slot = L['plate']}),
        Transmog({item = 60351, slot = L['plate']}),
        Transmog({item = 60352, slot = L['plate']}),
        Transmog({item = 60353, slot = L['plate']}),
        Transmog({item = 60354, slot = L['plate']}),
        Transmog({item = 60355, slot = L['plate']}),
        Transmog({item = 60356, slot = L['plate']}),
        Transmog({item = 60357, slot = L['plate']}),
        Transmog({item = 60358, slot = L['plate']}),
        Transmog({item = 60359, slot = L['plate']}),
        Transmog({item = 60360, slot = L['plate']}),
        Transmog({item = 60361, slot = L['plate']}),
        Transmog({item = 60362, slot = L['plate']}),
        Transmog({item = 60363, slot = L['plate']}),
        Transmog({item = 65179, slot = L['plate']}),
        Transmog({item = 65180, slot = L['plate']}),
        Transmog({item = 65181, slot = L['plate']}),
        Transmog({item = 65182, slot = L['plate']}),
        Transmog({item = 65183, slot = L['plate']}),
        Transmog({item = 65184, slot = L['plate']}),
        Transmog({item = 65185, slot = L['plate']}),
        Transmog({item = 65186, slot = L['plate']}),
        Transmog({item = 65187, slot = L['plate']}),
        Transmog({item = 65188, slot = L['plate']}),
        Transmog({item = 65189, slot = L['leather']}),
        Transmog({item = 65190, slot = L['leather']}),
        Transmog({item = 65191, slot = L['leather']}),
        Transmog({item = 65192, slot = L['leather']}),
        Transmog({item = 65193, slot = L['leather']}),
        Transmog({item = 65194, slot = L['leather']}),
        Transmog({item = 65195, slot = L['leather']}),
        Transmog({item = 65196, slot = L['leather']}),
        Transmog({item = 65197, slot = L['leather']}),
        Transmog({item = 65198, slot = L['leather']}),
        Transmog({item = 65199, slot = L['leather']}),
        Transmog({item = 65200, slot = L['leather']}),
        Transmog({item = 65201, slot = L['leather']}),
        Transmog({item = 65202, slot = L['leather']}),
        Transmog({item = 65203, slot = L['leather']}),
        Transmog({item = 65204, slot = L['mail']}),
        Transmog({item = 65205, slot = L['mail']}),
        Transmog({item = 65206, slot = L['mail']}),
        Transmog({item = 65207, slot = L['mail']}),
        Transmog({item = 65208, slot = L['mail']}),
        Transmog({item = 65209, slot = L['cloth']}),
        Transmog({item = 65210, slot = L['cloth']}),
        Transmog({item = 65211, slot = L['cloth']}),
        Transmog({item = 65212, slot = L['cloth']}),
        Transmog({item = 65213, slot = L['cloth']}),
        Transmog({item = 65214, slot = L['plate']}),
        Transmog({item = 65215, slot = L['plate']}),
        Transmog({item = 65216, slot = L['plate']}),
        Transmog({item = 65217, slot = L['plate']}),
        Transmog({item = 65218, slot = L['plate']}),
        Transmog({item = 65219, slot = L['plate']}),
        Transmog({item = 65220, slot = L['plate']}),
        Transmog({item = 65221, slot = L['plate']}),
        Transmog({item = 65222, slot = L['plate']}),
        Transmog({item = 65223, slot = L['plate']}),
        Transmog({item = 65224, slot = L['plate']}),
        Transmog({item = 65225, slot = L['plate']}),
        Transmog({item = 65226, slot = L['plate']}),
        Transmog({item = 65227, slot = L['plate']}),
        Transmog({item = 65228, slot = L['plate']}),
        Transmog({item = 65229, slot = L['cloth']}),
        Transmog({item = 65230, slot = L['cloth']}),
        Transmog({item = 65231, slot = L['cloth']}),
        Transmog({item = 65232, slot = L['cloth']}),
        Transmog({item = 65233, slot = L['cloth']}),
        Transmog({item = 65234, slot = L['cloth']}),
        Transmog({item = 65235, slot = L['cloth']}),
        Transmog({item = 65236, slot = L['cloth']}),
        Transmog({item = 65237, slot = L['cloth']}),
        Transmog({item = 65238, slot = L['cloth']}),
        Transmog({item = 65239, slot = L['leather']}),
        Transmog({item = 65240, slot = L['leather']}),
        Transmog({item = 65241, slot = L['leather']}),
        Transmog({item = 65242, slot = L['leather']}),
        Transmog({item = 65243, slot = L['leather']}),
        Transmog({item = 65244, slot = L['mail']}),
        Transmog({item = 65245, slot = L['mail']}),
        Transmog({item = 65246, slot = L['mail']}),
        Transmog({item = 65247, slot = L['mail']}),
        Transmog({item = 65248, slot = L['mail']}),
        Transmog({item = 65249, slot = L['mail']}),
        Transmog({item = 65250, slot = L['mail']}),
        Transmog({item = 65251, slot = L['mail']}),
        Transmog({item = 65252, slot = L['mail']}),
        Transmog({item = 65253, slot = L['mail']}),
        Transmog({item = 65254, slot = L['mail']}),
        Transmog({item = 65255, slot = L['mail']}),
        Transmog({item = 65256, slot = L['mail']}),
        Transmog({item = 65257, slot = L['mail']}),
        Transmog({item = 65258, slot = L['mail']}),
        Transmog({item = 65259, slot = L['cloth']}),
        Transmog({item = 65260, slot = L['cloth']}),
        Transmog({item = 65261, slot = L['cloth']}),
        Transmog({item = 65262, slot = L['cloth']}),
        Transmog({item = 65263, slot = L['cloth']}),
        Transmog({item = 65264, slot = L['plate']}),
        Transmog({item = 65265, slot = L['plate']}),
        Transmog({item = 65266, slot = L['plate']}),
        Transmog({item = 65267, slot = L['plate']}),
        Transmog({item = 65268, slot = L['plate']}),
        Transmog({item = 65269, slot = L['plate']}),
        Transmog({item = 65270, slot = L['plate']}),
        Transmog({item = 65271, slot = L['plate']}),
        Transmog({item = 65272, slot = L['plate']}),
        Transmog({item = 65273, slot = L['plate']})
    }
})
map.nodes[48437177] = Vendor({id = 46555, rewards = {}}) -- TODO
map.nodes[48697155] = Vendor({id = 46556, rewards = {}}) -- TODO
map.nodes[46447951] = Vendor({id = 5188, rewards = {}}) -- TODO

map.nodes[47138003] = Vendor({id = 46572, rewards = {}}) -- TODO

map.nodes[40896118] = Vendor({
    id = 179897,
    rewards = {
        Transmog({item = 186090, slot = L['cosmetic']}),
        Transmog({item = 187009, slot = L['cosmetic']}),
        Transmog({item = 187010, slot = L['cosmetic']}),
        Transmog({item = 186092, slot = L['cosmetic']}),
        Transmog({item = 186091, slot = L['cosmetic']})
    }
})

map.nodes[68574023] = Vendor({
    id = 69333,
    rewards = {Transmog({item = 83080, slot = L['tabard']})}
})

map.nodes[50115864] = Vendor({
    id = 50323,
    rewards = {
        Transmog({item = 64884, slot = L['tabard']}),
        Transmog({item = 64906, slot = L['cloak']}),
        Transmog({item = 64907, slot = L['cloak']})
    }
})

map.nodes[50385838] = Vendor({
    id = 50488,
    rewards = {
        Transmog({item = 45581, slot = L['tabard']}),
        Transmog({item = 64910, slot = L['cloak']}),
        Transmog({item = 64909, slot = L['cloak']})
    }
})

map.nodes[50045821] = Vendor({
    id = 50477,
    rewards = {
        Transmog({item = 45582, slot = L['tabard']}),
        Transmog({item = 64912, slot = L['cloak']}),
        Transmog({item = 64911, slot = L['cloak']})
    }
})

map.nodes[56899034] = Vendor({
    id = 50304,
    rewards = {
        Transmog({item = 45583, slot = L['tabard']}),
        Transmog({item = 64922, slot = L['cloak']}),
        Transmog({item = 64921, slot = L['cloak']})
    }
})

map.nodes[57078996] = Vendor({id = 6566, rewards = {}})

map.nodes[60973531] = Vendor({
    id = 3362,
    rewards = {
        Mount({item = 1132, id = 14}), Mount({item = 5665, id = 19}),
        Mount({item = 5668, id = 20}), Mount({item = 46099, id = 310}),
        Mount({item = 18796, id = 104}), Mount({item = 18797, id = 105}),
        Mount({item = 18798, id = 106})
    }
})

map.nodes[47975863] = Vendor({
    id = 44918,
    rewards = {
        Mount({item = 25474, id = 133}), Mount({item = 25475, id = 134}),
        Mount({item = 25476, id = 135}), Mount({item = 25531, id = 310}),
        Mount({item = 25533, id = 142}), Mount({item = 25477, id = 136}),
        Mount({item = 25532, id = 141})
    }
})

map.nodes[41817318] = Vendor({id = 73151, rewards = {}}) -- TODO
map.nodes[41747283] = Vendor({id = 12796, rewards = {}}) -- TODO

map.nodes[69844117] = Vendor({id = 66022, rewards = {}}) -- TODO
map.nodes[38067808] = Vendor({id = 48510, rewards = {}}) -- TODO

-------------------------------------------------------------------------------
----------------------------- PROFESSION TRAINERS -----------------------------
-------------------------------------------------------------------------------

map.nodes[44237720] = Trainer.Blacksmithing({id = 37072})
map.nodes[76353709] = Trainer.Blacksmithing({id = 7231})
map.nodes[75913709] = Trainer.Blacksmithing({id = 7230})
map.nodes[76513451] = Trainer.Blacksmithing({id = 3555})
map.nodes[75873360] = Trainer.Blacksmithing({id = 11178})
map.nodes[75353399] = Trainer.Blacksmithing({id = 11177})
map.nodes[44567862] = Trainer.Mining({id = 46357})
map.nodes[72313491] = Trainer.Mining({id = 3357})
map.nodes[72473430] = Trainer.Jewelcrafting({id = 46675})
map.nodes[66454193] = Trainer.Fishing({id = 3332})
map.nodes[53494956] = Trainer.Enchanting({id = 3345})
map.nodes[55035050] = Trainer.Herbalism({id = 46741})
map.nodes[55075588] = Trainer.Inscription({id = 46716})
map.nodes[56845656] = Trainer.Engineering({id = 11017})
map.nodes[60895490] = Trainer.Leatherworking({id = 3365})
map.nodes[61155465] = Trainer.Skinning({id = 7088})
map.nodes[60755912] = Trainer.Tailoring({id = 3363})
map.nodes[56146162] = Trainer.Cooking({id = 46709})
map.nodes[41177939] = Trainer.Cooking({id = 133261})
map.nodes[40468031] = Trainer.Herbalism({id = 133104})
map.nodes[39058552] = Trainer.Mining({id = 133236})
map.nodes[38308714] = Trainer.Tailoring({id = 133239})
map.nodes[37098473] = Trainer.Engineering({id = 45545})
map.nodes[35566953] = Trainer.Inscription({id = 30706})
map.nodes[35176734] = Trainer.Fishing({id = 44975})
map.nodes[32256967] = Trainer.Cooking({id = 3399})
map.nodes[34836284] = Trainer.Herbalism({id = 3404})
map.nodes[40575024] = Trainer.Blacksmithing({id = 44781})
map.nodes[39394971] = Trainer.Skinning({id = 44782})
map.nodes[38845060] = Trainer.Tailoring({id = 44783})
map.nodes[55694574] = Trainer.Alchemy({id = 3347})
map.nodes[49077054] = Trainer.Archaeology({id = 47571})
-- map.nodes[38508640] = Trainer.FirstAid({id = 133109})
