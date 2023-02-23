-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Transmog = ns.reward.Transmog

local Mailbox = ns.node.Mailbox
local Innkeeper = ns.node.Innkeeper
local Banker = ns.node.Banker
local Auctioneer = ns.node.Auctioneer
local Vendor = ns.node.Vendor

local Path = ns.poi.Path
-------------------------------------------------------------------------------
local map = Map({id = 390, settings = true})
-------------------------------------------------------------------------------

map.nodes[60282278] = ns.node.Stablemaster({id = 63986, faction = 'Horde'})


map.nodes[62792338] = Vendor({
    id = 64001,
    rewards = {},
})

map.nodes[63232207] = Vendor({
    id = 59908,
    rewards = {},
})