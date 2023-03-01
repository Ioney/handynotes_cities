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
local Trainer = ns.node.Trainer

local Path = ns.poi.Path
-------------------------------------------------------------------------------
local map = Map({id = 84, settings = true})
-------------------------------------------------------------------------------

map.nodes[49638698] = Mailbox()
map.nodes[50598975] = Mailbox()
map.nodes[50927038] = Mailbox()
map.nodes[57417172] = Mailbox()
map.nodes[62527474] = Mailbox()
map.nodes[61657606] = Mailbox()
map.nodes[61957030] = Mailbox()
map.nodes[66626541] = Mailbox()

map.nodes[51749396] = Innkeeper({id = 3628})

map.nodes[61306464] = ns.node.Barber({id = 29142})

map.nodes[0] = Banker()

map.nodes[0] = Auctioneer()

map.nodes[0] = ns.node.Voidstorage({id = 54472})
map.nodes[0] = ns.node.Transmogrifier({id = 54473})
map.nodes[0] = ns.node.Stablemaster({id = 31757})

map.nodes[10101010] = Vendor({
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

map.nodes[15151515] = Vendor({
    id = 179897,
    rewards = {
        Transmog({item = 186090, slot = L['cosmetic']}),
        Transmog({item = 187009, slot = L['cosmetic']}),
        Transmog({item = 187010, slot = L['cosmetic']}),
        Transmog({item = 186092, slot = L['cosmetic']}),
        Transmog({item = 186091, slot = L['cosmetic']})
    }
})

-------------------------------------------------------------------------------
----------------------------- PROFESSION TRAINERS -----------------------------
-------------------------------------------------------------------------------

-- map.nodes[44237720] = Trainer.Alchemy({id = 37072})
-- map.nodes[76353709] = Trainer.Blacksmithing({id = 7231})
-- map.nodes[75913709] = Trainer.Enchanting({id = 7230})
-- map.nodes[76513451] = Trainer.Engineering({id = 3555})
-- map.nodes[75873360] = Trainer.Herbalism({id = 11178})
-- map.nodes[75353399] = Trainer.Inscription({id = 11177})
-- map.nodes[44567862] = Trainer.Jewelcrafting({id = 46357})
-- map.nodes[72313491] = Trainer.Leatherworking({id = 3357})
-- map.nodes[72473430] = Trainer.Mining({id = 46675})
-- map.nodes[66454193] = Trainer.Skinning({id = 3332})
-- map.nodes[53494956] = Trainer.Tailoring({id = 3345})
-- map.nodes[55035050] = Trainer.Archaeology({id = 46741})
-- map.nodes[55075588] = Trainer.Cooking({id = 46716})
-- map.nodes[56845656] = Trainer.Fishing({id = 11017})

-- 171 trainer_alchemy
-- 164 trainer_blacksmithing
-- 333 trainer_enchanting
-- 202 trainer_engineering
-- 182 trainer_herbalism
-- 773 trainer_inscription
-- 755 trainer_jewelcrafting
-- 165 trainer_leatherworking
-- 186 trainer_mining
-- 393 trainer_skinning
-- 197 trainer_tailoring
-- 794 trainer_archaeology
-- 185 trainer_cooking
-- 356 trainer_fishing

-- Alchemy
-- Blacksmithing
-- Enchanting
-- Engineering
-- Herbalism
-- Inscription
-- Jewelcrafting
-- Leatherworking
-- Mining
-- Skinning
-- Tailoring
-- Archaeology
-- Cooking
-- Fishing
