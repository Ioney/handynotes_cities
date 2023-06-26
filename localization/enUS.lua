local ADDON_NAME, ns = ...
local L = ns.NewLocale('enUS')
if not L then return end

L['trainer_alchemy'] = 'Alchemy Trainer'
L['trainer_blacksmithing'] = 'Blacksmithing Trainer'
L['trainer_enchanting'] = 'Enchanting Trainer'
L['trainer_engineering'] = 'Engineering Trainer'
L['trainer_herbalism'] = 'Herbalism Trainer'
L['trainer_inscription'] = 'Inscription Trainer'
L['trainer_jewelcrafting'] = 'Jewelcraft Trainer'
L['trainer_leatherworking'] = 'Leatherworking Trainer'
L['trainer_mining'] = 'Mining Trainer'
L['trainer_skinning'] = 'Skinning Trainer'
L['trainer_tailoring'] = 'Tailoring Trainer'
L['trainer_archaeology'] = 'Archaeology Trainer'
L['trainer_cooking'] = 'Cooking Trainer'
L['trainer_fishing'] = 'Fishing Trainer'

L['options_icons_mailbox'] = _G.MINIMAP_TRACKING_MAILBOX
L['options_icons_mailbox_desc'] = 'Shows the position of Mailboxes.'
L['options_icons_innkeeper'] = _G.MINIMAP_TRACKING_INNKEEPER
L['options_icons_innkeeper_desc'] = 'Shows the position of Innkeepers.'
L['options_icons_banker'] = _G.MINIMAP_TRACKING_BANKER
L['options_icons_banker_desc'] = 'Shows the position of Bankers or Banks.'
L['options_icons_auctioneer'] = _G.MINIMAP_TRACKING_AUCTIONEER
L['options_icons_auctioneer_desc'] = 'Shows the position of Auctioneers or Auction Houses.'
L['options_icons_barber'] = _G.MINIMAP_TRACKING_BARBER
L['options_icons_barber_desc'] = 'Shows the position of Barbers.'
L['options_icons_voidstorage'] = _G.VOID_STORAGE
L['options_icons_voidstorage_desc'] = 'Shows the position of the Void Storage.'
L['options_icons_transmogrifier'] = _G.MINIMAP_TRACKING_TRANSMOGRIFIER
L['options_icons_transmogrifier_desc'] = 'Shows the position of Transmogrifiers.'
L['options_icons_stablemaster'] = _G.MINIMAP_TRACKING_STABLEMASTER
L['options_icons_stablemaster_desc'] = 'Shows the position of Stablemasters.'
L['options_icons_flightmaster'] = _G.MINIMAP_TRACKING_FLIGHTMASTER
L['options_icons_flightmaster_desc'] = 'Shows the position of Flight Masters.'
L['options_icons_profession'] = _G.MINIMAP_TRACKING_TRAINER_PROFESSION
L['options_icons_profession_desc'] = 'Shows the position of Profession Trainers.'

-------------------------------------------------------------------------------
----------------------------- EXPANSION SPECIFIC ------------------------------
-------------------------------------------------------------------------------

----------------------------- BATTLE FOR AZEROTH ------------------------------

L['olly'] = 'To buy the pets from the vendor you have to complete the mission {mission:2122}. You get the Mission from the item {item:166242} which you get randomly after a PVP Pet Battle.'

-------------------------------- DRAGONFLIGHT ---------------------------------

L['options_icons_rostrum'] = 'Rostrum of Transformation'
L['options_icons_rostrum_desc'] = 'Shows the position of the Rostrum of Transformation.'
L['rostrum_of_transformation'] = 'Rostrum of Transformation'
L['dragon_riding_trainer'] = 'Dragonriding Trainer'
L['dr_passanger_active'] = 'Passengers are  ' .. ns.color.Green('Activated') .. '.'
L['dr_passanger_inactive'] = 'Passengers are ' .. ns.color.Green('Deactivated') .. '.'
