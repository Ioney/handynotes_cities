local ADDON_NAME, ns = ...
local L = ns.NewLocale('deDE')
if not L then return end

L['trainer_alchemy'] = 'Alchemielehrer'
L['trainer_blacksmithing'] = 'Schmiedekunstlehrer'
L['trainer_enchanting'] = 'Verzauberkunstlehrer'
L['trainer_engineering'] = 'Ingenieurslehrer'
L['trainer_herbalism'] = 'Kräuterkundelehrer'
L['trainer_inscription'] = 'Inschriftenkundelehrer'
L['trainer_jewelcrafting'] = 'Juwelenschmiedlehrer'
L['trainer_leatherworking'] = 'Lederverarbeitungslehrer'
L['trainer_mining'] = 'Bergbaulehrer'
L['trainer_skinning'] = 'Kürschnereilehrer'
L['trainer_tailoring'] = 'Schneidereilehrer'
L['trainer_archaeology'] = 'Archäologielehrer'
L['trainer_cooking'] = 'Kochkunstlehrer'
L['trainer_fishing'] = 'Angellehrer'

L['options_icons_mailbox'] = _G.MINIMAP_TRACKING_MAILBOX
L['options_icons_mailbox_desc'] = 'Zeigt die Position von Briefkästen an.'
L['options_icons_innkeeper'] = _G.MINIMAP_TRACKING_INNKEEPER
L['options_icons_innkeeper_desc'] = 'Zeigt die Position von Gastwirten an.'
L['options_icons_banker'] = _G.MINIMAP_TRACKING_BANKER
L['options_icons_banker_desc'] = 'Zeigt die Position von Bankieren oder Banken an.'
L['options_icons_auctioneer'] = _G.MINIMAP_TRACKING_AUCTIONEER
L['options_icons_auctioneer_desc'] = 'Zeigt die Position von Auktionatoren oder Auktionshäusern an.'
L['options_icons_barbershop'] = _G.MINIMAP_TRACKING_BARBER
L['options_icons_barbershop_desc'] = 'Zeigt die Position von Barbieren an.'
L['options_icons_voidstorage'] = _G.VOID_STORAGE
L['options_icons_voidstorage_desc'] = 'Zeigt die Position vom Leerenlager an.'
L['options_icons_transmogrifier'] = _G.MINIMAP_TRACKING_TRANSMOGRIFIER
L['options_icons_transmogrifier_desc'] = 'Zeigt die Position vom Transmogrifizierer an.'
L['options_icons_stablemaster'] = _G.MINIMAP_TRACKING_STABLEMASTER
L['options_icons_stablemaster_desc'] = 'Zeigt die Position vom Stallmeister an.'
L['options_icons_flightmaster'] = _G.MINIMAP_TRACKING_FLIGHTMASTER
L['options_icons_flightmaster_desc'] = 'Zeigt die Position vom Flugmeistern an.'
L['options_icons_profession'] = _G.MINIMAP_TRACKING_TRAINER_PROFESSION
L['options_icons_profession_desc'] = 'Zeigt die Position der Berufstrainer an.'

-------------------------------------------------------------------------------
----------------------------- EXPANSION SPECIFIC ------------------------------
-------------------------------------------------------------------------------

----------------------------- BATTLE FOR AZEROTH ------------------------------

L['olly'] = 'Um die Haustiere vom Händler kaufen zu können musst du die Mission {mission:2122} abschließen. Die Mission wird durch das Item {item:166242} freigeschalten welches du zufällig nach einem PVP Haustierkampf erhältst.'

-------------------------------- DRAGONFLIGHT ---------------------------------

L['options_icons_rostrum'] = 'Podium der Transformation'
L['options_icons_rostrum_desc'] = 'Zeigt die Position des Podium der Transformation an.'
L['rostrum_of_transformation'] = 'Podium der Transformation'
L['dragon_riding_trainer'] = 'Drachenreitlehrer'
L['dr_passanger_active'] = 'Passagiere sind ' .. ns.color.Green('Aktiviert') .. '.'
L['dr_passanger_inactive'] = 'Passagiere sind ' .. ns.color.Green('Deativiert') .. '.'
