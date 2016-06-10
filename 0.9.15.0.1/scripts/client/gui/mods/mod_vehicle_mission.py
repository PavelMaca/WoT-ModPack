print "Loading mod: vehicle_missions v2016-04-28 (http://forum.worldoftanks.eu/index.php?/topic/567631-)"
from debug_utils import LOG_NOTE, LOG_WARNING, LOG_CURRENT_EXCEPTION
from gui import SystemMessages
from CurrentVehicle import g_currentVehicle
from PlayerEvents import g_playerEvents
from notification import NotificationMVC
from messenger import MessengerEntry
from messenger.formatters import collections_by_type
from messenger.m_constants import SCH_CLIENT_MSG_TYPE
from notification.decorators import MessageDecorator
from notification.settings import NOTIFICATION_STATE
import time, ResMgr, os, json, sys, BigWorld, codecs

def MYLOGLIVE(message, permanent_log = True, make_red = True):
    if message=="":
        return
    if permanent_log:
        LOG_NOTE(message)
    if make_red:
        message = '<font color="#FF0000">' + message + '</font>'
    try:
        SystemMessages.pushMessage(message, SystemMessages.SM_TYPE.Information)
    except:
        pass

def MYLOG(*args):
    LOG_NOTE("%s" % time.strftime('%Y-%m-%d %H:%M:%S'), *args)
    pass

def MYPPRINT(obj, name = False):
    import inspect, pprint
    if isinstance(obj, dict) or isinstance(obj, list) or isinstance(obj, tuple) or isinstance(obj, set) or isinstance(obj, str):
        if name:
            print(name)
        pprint.pprint(obj, indent=1, width=180)
    elif hasattr(obj, '__call__'):
        pprint.pprint(inspect.getargspec(obj), indent=1, width=180)
    else:
        pprint.pprint(inspect.getmembers(obj), indent=1, width=180)

def _LOG_EXECUTING_TIME(startTime, methodName, deltaTime = 0.1):
    finishTime = time.time()
    if finishTime - startTime > deltaTime:
        MYLOG('Method "%s" takes too much time %s' % (methodName, finishTime - startTime))

d = False
config = {}
conf_file = None
res = ResMgr.openSection('../paths.xml')
sb = res['Paths']
vals = sb.values()[0:2]
for vl in vals:
    path = vl.asString + '/scripts/client/gui/mods/'
    if os.path.isdir(path):
        conf_file = path + 'mod_vehicle_mission.json'
        if os.path.isfile(conf_file):
            with codecs.open(conf_file, 'r', 'utf-8-sig') as data_file:
                try:
                    config = json.load(data_file)
                except:
                    import sys
                    print "Error while loading %s: %s" % (conf_file, sys.exc_info()[0])
                finally:
                    break

d = config.get("debug", False)

def saveConfig():
    with open(conf_file, 'w') as data_file:
        try:
            json.dump(config, data_file, sort_keys=True, indent=4, separators=(',', ': '))
        except:
            print "Error while saving %s: %s" % (conf_file, sys.exc_info()[0])

def pushMsg(message, msgType, isAlert = False):
    model = NotificationMVC.g_instance.getModel()
    auxData = [msgType.name()]
    clientID = 0
    try:
        formatted, settings = collections_by_type.CLIENT_FORMATTERS.get(SCH_CLIENT_MSG_TYPE.SYS_MSG_TYPE).format(message, auxData)
    except:
        LOG_CURRENT_EXCEPTION()
        return

    if formatted:
        clientID = MessengerEntry.g_instance.protos.BW.serviceChannel._ServiceChannelManager__idGenerator.next()
        if not settings.isAlert:
            settings.isAlert = isAlert
        checkForModel(MessageDecorator(clientID, formatted, settings))
    else: #if IS_DEVELOPMENT:
        LOG_WARNING('Not enough data to format. Action data : ', message)
    #return clientID

handlerApplied = False
messagesQueue = []

def checkForModel(md):
    global handlerApplied
    model = NotificationMVC.g_instance.getModel()
    if model:
        MYLOG("checkForModel - got model")
        if not handlerApplied:
            model.onDisplayStateChanged += displayStateChangeHandler
            handlerApplied = True
        model.addNotification(md)
        messagesQueue.append(md)
        #keepMsgOnTheListForSeconds = config.get("keepMsgOnTheListForSeconds", 10)
        #if keepMsgOnTheListForSeconds > 0:
            #BigWorld.callback(keepMsgOnTheListForSeconds, lambda: model.removeNotification(md.getType(), md.getID()))
    else:
        MYLOG("checkForModel - no model, waiting")
        BigWorld.callback(1, lambda: checkForModel(md))

def displayStateChangeHandler(oldState, newState, data):
    if newState == NOTIFICATION_STATE.LIST:
        model = NotificationMVC.g_instance.getModel()
        for md in messagesQueue:
            model.removeNotification(md.getType(), md.getID())
        del messagesQueue[:]
        
from gui.server_events import g_eventsCache

last_intCD = None

def onCurrentVehicle(*args):
    global last_intCD
    if (d): MYLOG("onCurrentVehicle%s" % str(args))
    if last_intCD is None or last_intCD != g_currentVehicle.item.intCD:
        if (d): MYLOG("g_currentVehicle.item.intCD, g_currentVehicle.item.type", g_currentVehicle.item.intCD, g_currentVehicle.item.type)
        last_intCD = g_currentVehicle.item.intCD
        saved_quest_id = config["regular"].get(str(g_currentVehicle.item.intCD), None)
        if saved_quest_id:
            if (d): MYLOG("saved mission for vehicle", saved_quest_id)
            questIDs = []
            for quest in g_eventsCache.potapov.getSelectedQuests().itervalues():
                if quest.getQuestBranch()==PQ_BRANCH.REGULAR:
                    if g_currentVehicle.item.type in quest.getVehicleClasses():
                        if quest.getID()==saved_quest_id:
                            if (d): MYLOG("already selected, quiting")
                            return
                        else:
                            if (d): MYLOG("restoring saved mission")
                            questIDs.append(saved_quest_id)
                    else:
                        questIDs.append(quest.getID())
            BigWorld.player().selectPotapovQuests(questIDs, PQ_BRANCH.REGULAR, lambda code, errStr: notify(code, errStr, saved_quest_id))

def notify(code, errStr, saved_quest_id):
    if code>=0 and config.get("notify", True):
        quest = g_eventsCache.potapov.getQuests()[saved_quest_id]
        msg = quest.getUserMainCondition() + "\n\n" + quest.getUserAddCondition()
        pushMsg(msg, SystemMessages.SM_TYPE.Warning, False)

def myOnAvatarBecomeNonPlayer(*args):
    global handlerApplied
    g_currentVehicle.onChanged += onCurrentVehicle
    handlerApplied = False

def connectionManager_onConnected(*args):
    if (d): MYLOG("connectionManager_onConnected%s" % str(args))
    g_currentVehicle.onChanged += onCurrentVehicle
    g_playerEvents.onAvatarBecomeNonPlayer += myOnAvatarBecomeNonPlayer

from ConnectionManager import connectionManager
connectionManager.onConnected += connectionManager_onConnected

from Account import PlayerAccount
from potapov_quests import PQ_BRANCH

def new_selectPotapovQuests(self, potapovQuestIDs, questType, callback):
    old_selectPotapovQuests(self, potapovQuestIDs, questType, lambda code, errStr: questsUpdated(callback, code, errStr, questType))

def questsUpdated(callback, code, errStr, questType):
    if (d): MYLOG("questsUpdated", questType)
    callback(code, errStr)
    if code>=0 and questType==PQ_BRANCH.REGULAR:
        for quest in g_eventsCache.potapov.getSelectedQuests().itervalues():
            if quest.getQuestBranch()==PQ_BRANCH.REGULAR and g_currentVehicle.item.type in quest.getVehicleClasses():
                config["regular"][str(g_currentVehicle.item.intCD)] = quest.getID()
                saveConfig()
                return

old_selectPotapovQuests = PlayerAccount.selectPotapovQuests
PlayerAccount.selectPotapovQuests = new_selectPotapovQuests