To run this mod, in this folder need to be at least clanMod.lang and clanMod.cfg.
Both files are json format so check them after editing in http://jsonlint.com/

This mod automaticaly get user language and check if it exists in clanMod.lang. If not use 'en'.
Also mod automaticaly check player server to get info about clanwars. You can turn off clanwars
in clanMod.cfg "clanwars" : "enabled": "false".

Mod author are BONNe1704 who inspired from S0meone.
Under GNU GPL 3

For now, mod use 3 macros for ClanWars message only:
    {{map}} - map name 
    {{time}} - battle time
    {{type}} - battle type (for province, encounter or landing)   
    
clanMod.cfg description:
//  "icon" - link to image location. Start from res_mods/0.9.0/.
    "icon": "gui/maps/icons/tankmen/crew/retrainCrew.png",
    
//  "save_button" - on button press you will export online player list to file
    "save_button": "F12",
    
//  "update_button" - on button press you will update ClanWar list manualy
    "update_button": "F11",
    
//  "list_seperator" - simbol which will seperate member names
    "list_seperator": ",",
    
//  "save_path" - folder where online members will be saved.
//  Start folder are res_mods/0.9.0/configs/clanMod/ so to get back to wot folder
//  use path like this '../../../../'
    "save_path": "online/",
    
//  "member_autoexport" will export member list as soon as you press on notification
//  list and first of following condition works
    "member_autoexport": {
        // To enable autoexport use "enabled": "true",
        // but to turn off, any othere value
        "enabled": "true",
        // To enable use value "true"
        // This will export 5 min over full hour (x:05)
        // as soon as you press notification list
        "per_hour": "true",
        // To enable use value "true"
        // This will export 5 min over full hour (x:05) 
        // and 35 min over full hour (x:35)
        // as soon as you press notification list
        "2_per_hour": "false",
        // To enable use value "true"
        // This will export 5 min over full hour (x:05) 
        // and 20 min over full hour (x:20)
        // and 35 min over full hour (x:35)
        // and 50 min over full hour (x:50)
        // as soon as you press notification list
        "4_per_hour": "false",
        // To enable all others must be turned off.
        // Use number in minutes.
        // This will export after every x min as soon as you press notification list
        "on_timer": 60,
        // To enable use "true"
        // Show message on autoexport
        "show_messages": "false"
    },
//  "clanwar_update" will update comming clanwars and update as soon as you press 
//  on notification list and first of following condition works
    "clanwar_update": {
        // "true" to enable. Will enable ClanWars button and update clanwars
        "enabled": "true",
        // To enable use value "true"
        // This will update 5 min over full hour (x:05)
        // as soon as you press notification list
        "per_hour": "false",
        // To enable use value "true"
        // This will update 5 min over full hour (x:05) 
        // and 35 min over full hour (x:35)
        // as soon as you press notification list
        "2_per_hour": "false",
        // To enable use value "true"
        // This will update 5 min over full hour (x:05) 
        // and 20 min over full hour (x:20)
        // and 35 min over full hour (x:35)
        // and 50 min over full hour (x:50)
        // as soon as you press notification list
        "4_per_hour": "true",
        // To enable all others must be turned off.
        // Use number in minutes.
        // This will update after every x min as soon as you press notification list
        "on_timer": 60,
        // To enable use "true"
        // Show message on Clan Wars update
        "show_messages": "true"
    }
