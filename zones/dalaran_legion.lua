-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

-------------------------------------------------------------------------------
local map = Map({id = 627, settings = true})
-------------------------------------------------------------------------------

map.nodes[50835884] = ns.node.Mailbox()
map.nodes[62503162] = ns.node.Mailbox()
map.nodes[59243762] = ns.node.Stablemaster()
map.nodes[51853164] = ns.node.Barber()
-- map.nodes[45202909] = ns.node.Profession({profession = 'Blacksmithing'})
-- map.nodes[65403221] = ns.node.Innkeeper({faction = 'Horde'})
map.nodes[53031659] = ns.node.Banker()
-- map.nodes[46552681] = ns.node.Repair()

