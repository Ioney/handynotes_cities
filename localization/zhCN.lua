local ADDON_NAME, ns = ...
local L = ns.NewLocale('zhCN')
if not L then return end

L['trainer_alchemy'] = '炼金术训练师'
L['trainer_blacksmithing'] = '锻造训练师'
L['trainer_enchanting'] = '附魔训练师'
L['trainer_engineering'] = '工程学训练师'
L['trainer_herbalism'] = '草药学训练师'
L['trainer_inscription'] = '铭文训练师'
L['trainer_jewelcrafting'] = '珠宝加工训练师'
L['trainer_leatherworking'] = '制皮训练师'
L['trainer_mining'] = '采矿训练师'
L['trainer_skinning'] = '剥皮训练师'
L['trainer_tailoring'] = '裁缝训练师'
L['trainer_archaeology'] = '考古学训练师'
L['trainer_cooking'] = '烹饪训练师'
L['trainer_fishing'] = '钓鱼训练师'

L['options_icons_mailbox'] = _G.MINIMAP_TRACKING_MAILBOX
L['options_icons_mailbox_desc'] = '显示邮箱的位置。'
L['options_icons_innkeeper'] = _G.MINIMAP_TRACKING_INNKEEPER
L['options_icons_innkeeper_desc'] = '显示旅店老板的位置。'
L['options_icons_banker'] = _G.MINIMAP_TRACKING_BANKER
L['options_icons_banker_desc'] = '显示银行职员或银行的位置。'
L['options_icons_auctioneer'] = _G.MINIMAP_TRACKING_AUCTIONEER
L['options_icons_auctioneer_desc'] = '显示拍卖师或拍卖行的位置。'
L['options_icons_barber'] = _G.MINIMAP_TRACKING_BARBER
L['options_icons_barber_desc'] = '显示理发师的位置。'
L['options_icons_voidstorage'] = _G.VOID_STORAGE
L['options_icons_voidstorage_desc'] = '显示虚空仓库的位置。'
L['options_icons_transmogrifier'] = _G.MINIMAP_TRACKING_TRANSMOGRIFIER
L['options_icons_transmogrifier_desc'] = '显示幻化师的位置。'
L['options_icons_stablemaster'] = _G.MINIMAP_TRACKING_STABLEMASTER
L['options_icons_stablemaster_desc'] = '显示兽栏管理员的位置。'
L['options_icons_flightmaster'] = _G.MINIMAP_TRACKING_FLIGHTMASTER
L['options_icons_flightmaster_desc'] = '显示飞行管理员的位置。'
L['options_icons_profession'] = _G.MINIMAP_TRACKING_TRAINER_PROFESSION
L['options_icons_profession_desc'] = '显示专业技能训练师的位置。'

-------------------------------------------------------------------------------
----------------------------- EXPANSION SPECIFIC ------------------------------
-------------------------------------------------------------------------------

----------------------------- BATTLE FOR AZEROTH ------------------------------

L['olly'] = '要从供应商那里购买宠物，必须完成任务 {mission:2122}。从 {item:166242} 物品中获得任务，该项目在 PvP 宠物对战后随机获得。'

-------------------------------- DRAGONFLIGHT ---------------------------------

L['options_icons_rostrum'] = '幻形讲坛'
L['options_icons_rostrum_desc'] = '显示幻形讲坛的位置。'
L['rostrum_of_transformation'] = '幻形讲坛'
L['dragon_riding_trainer'] = '驭龙术训练师'
L['dr_passanger_active'] = '乘客 ' .. ns.color.Green('已激活') .. '。'
L['dr_passanger_inactive'] = '乘客 ' .. ns.color.Green('未激活') .. '。'
