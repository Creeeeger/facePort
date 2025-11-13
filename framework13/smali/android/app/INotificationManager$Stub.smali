.class public abstract Landroid/app/INotificationManager$Stub;
.super Landroid/os/Binder;
.source "INotificationManager.java"

# interfaces
.implements Landroid/app/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.INotificationManager"

.field static final greylist-max-o TRANSACTION_addAutomaticZenRule:I = 0x81

.field static final blacklist TRANSACTION_addWearableAppToList:I = 0xb1

.field static final blacklist TRANSACTION_allowAssistantAdjustment:I = 0x18

.field static final greylist-max-o TRANSACTION_applyAdjustmentFromAssistant:I = 0x5e

.field static final greylist-max-o TRANSACTION_applyAdjustmentsFromAssistant:I = 0x5f

.field static final greylist-max-o TRANSACTION_applyEnqueuedAdjustmentFromAssistant:I = 0x5d

.field static final greylist-max-o TRANSACTION_applyRestore:I = 0x88

.field static final blacklist TRANSACTION_areBubblesAllowed:I = 0x1d

.field static final blacklist TRANSACTION_areBubblesEnabled:I = 0x1e

.field static final greylist-max-o TRANSACTION_areChannelsBypassingDnd:I = 0x3a

.field static final greylist-max-o TRANSACTION_areNotificationsEnabled:I = 0x14

.field static final greylist-max-o TRANSACTION_areNotificationsEnabledForPackage:I = 0x13

.field static final blacklist TRANSACTION_bindEdgeLightingService:I = 0x96

.field static final blacklist TRANSACTION_canAppBypassDnd:I = 0xbd

.field static final blacklist TRANSACTION_canNotifyAsPackage:I = 0x8c

.field static final greylist-max-o TRANSACTION_canShowBadge:I = 0xb

.field static final greylist-max-o TRANSACTION_cancelAllNotifications:I = 0x1

.field static final blacklist TRANSACTION_cancelNotificationByEdge:I = 0xa3

.field static final blacklist TRANSACTION_cancelNotificationByGroupKey:I = 0xa4

.field static final greylist-max-o TRANSACTION_cancelNotificationFromListener:I = 0x47

.field static final greylist-max-o TRANSACTION_cancelNotificationWithTag:I = 0x8

.field static final greylist-max-o TRANSACTION_cancelNotificationsFromListener:I = 0x48

.field static final greylist-max-o TRANSACTION_cancelToast:I = 0x5

.field static final blacklist TRANSACTION_cleanUpCallersAfter:I = 0x64

.field static final greylist-max-o TRANSACTION_clearData:I = 0x2

.field static final blacklist TRANSACTION_clearRequestedListenerHints:I = 0x52

.field static final blacklist TRANSACTION_createConversationNotificationChannelForPackage:I = 0x2e

.field static final greylist-max-o TRANSACTION_createNotificationChannelGroups:I = 0x20

.field static final greylist-max-o TRANSACTION_createNotificationChannels:I = 0x21

.field static final greylist-max-o TRANSACTION_createNotificationChannelsForPackage:I = 0x22

.field static final greylist-max-o TRANSACTION_deleteNotificationChannel:I = 0x30

.field static final greylist-max-o TRANSACTION_deleteNotificationChannelGroup:I = 0x36

.field static final blacklist TRANSACTION_deleteNotificationHistoryItem:I = 0x3d

.field static final blacklist TRANSACTION_disable:I = 0xa0

.field static final blacklist TRANSACTION_disableEdgeLightingNotification:I = 0xa1

.field static final blacklist TRANSACTION_disallowAssistantAdjustment:I = 0x19

.field static final blacklist TRANSACTION_dispatchDelayedWakeUpAndBlocked:I = 0xab

.field static final blacklist TRANSACTION_dispatchDelayedWakelockAndBlocked:I = 0xaa

.field static final blacklist TRANSACTION_enqueueEdgeNotification:I = 0xa5

.field static final greylist-max-r TRANSACTION_enqueueNotificationWithTag:I = 0x7

.field static final blacklist TRANSACTION_enqueueTextToast:I = 0x3

.field static final blacklist TRANSACTION_enqueueTextToastForDex:I = 0xc1

.field static final greylist-max-o TRANSACTION_enqueueToast:I = 0x4

.field static final blacklist TRANSACTION_enqueueToastForDex:I = 0xc2

.field static final greylist-max-o TRANSACTION_finishToken:I = 0x6

.field static final greylist-max-o TRANSACTION_getActiveNotifications:I = 0x40

.field static final greylist-max-o TRANSACTION_getActiveNotificationsFromListener:I = 0x50

.field static final blacklist TRANSACTION_getActiveNotificationsWithAttribution:I = 0x41

.field static final blacklist TRANSACTION_getAllowedAssistantAdjustments:I = 0x17

.field static final blacklist TRANSACTION_getAllowedNotificationAssistant:I = 0x70

.field static final blacklist TRANSACTION_getAllowedNotificationAssistantForUser:I = 0x6f

.field static final greylist-max-o TRANSACTION_getAppActiveNotifications:I = 0x89

.field static final blacklist TRANSACTION_getAppsBypassingDndCount:I = 0xbf

.field static final greylist-max-o TRANSACTION_getAutomaticZenRule:I = 0x7f

.field static final greylist-max-o TRANSACTION_getBackupPayload:I = 0x87

.field static final greylist-max-o TRANSACTION_getBlockedAppCount:I = 0xc0

.field static final greylist-max-o TRANSACTION_getBlockedChannelCount:I = 0x35

.field static final blacklist TRANSACTION_getBubblePreferenceForPackage:I = 0x1f

.field static final blacklist TRANSACTION_getConsolidatedNotificationPolicy:I = 0x76

.field static final blacklist TRANSACTION_getConversationNotificationChannel:I = 0x2d

.field static final blacklist TRANSACTION_getConversations:I = 0x23

.field static final blacklist TRANSACTION_getConversationsForPackage:I = 0x24

.field static final blacklist TRANSACTION_getDefaultNotificationAssistant:I = 0x71

.field static final greylist-max-o TRANSACTION_getDeletedChannelCount:I = 0x34

.field static final blacklist TRANSACTION_getEdgeLightingState:I = 0x9e

.field static final greylist-max-o TRANSACTION_getEffectsSuppressor:I = 0x62

.field static final greylist-max-o TRANSACTION_getEnabledNotificationListenerPackages:I = 0x6d

.field static final greylist-max-o TRANSACTION_getEnabledNotificationListeners:I = 0x6e

.field static final greylist-max-o TRANSACTION_getHintsFromListener:I = 0x54

.field static final greylist-max-o TRANSACTION_getHistoricalNotifications:I = 0x42

.field static final blacklist TRANSACTION_getHistoricalNotificationsWithAttribution:I = 0x43

.field static final greylist-max-o TRANSACTION_getInterruptionFilterFromListener:I = 0x56

.field static final blacklist TRANSACTION_getListenerFilter:I = 0x90

.field static final blacklist TRANSACTION_getLockScreenNotificationVisibilityForPackage:I = 0xb9

.field static final blacklist TRANSACTION_getNotificationAlertsEnabledForPackage:I = 0xae

.field static final greylist-max-o TRANSACTION_getNotificationChannel:I = 0x2c

.field static final greylist-max-o TRANSACTION_getNotificationChannelForPackage:I = 0x2f

.field static final greylist-max-o TRANSACTION_getNotificationChannelGroup:I = 0x37

.field static final greylist-max-o TRANSACTION_getNotificationChannelGroupForPackage:I = 0x26

.field static final greylist-max-o TRANSACTION_getNotificationChannelGroups:I = 0x38

.field static final greylist-max-o TRANSACTION_getNotificationChannelGroupsForPackage:I = 0x25

.field static final greylist-max-o TRANSACTION_getNotificationChannelGroupsFromPrivilegedListener:I = 0x5c

.field static final greylist-max-o TRANSACTION_getNotificationChannels:I = 0x31

.field static final blacklist TRANSACTION_getNotificationChannelsBypassingDnd:I = 0x3b

.field static final greylist-max-o TRANSACTION_getNotificationChannelsForPackage:I = 0x32

.field static final greylist-max-o TRANSACTION_getNotificationChannelsFromPrivilegedListener:I = 0x5b

.field static final blacklist TRANSACTION_getNotificationDelegate:I = 0x8b

.field static final blacklist TRANSACTION_getNotificationHistory:I = 0x44

.field static final greylist-max-o TRANSACTION_getNotificationPolicy:I = 0x7a

.field static final greylist-max-o TRANSACTION_getNumNotificationChannelsForPackage:I = 0x33

.field static final greylist-max-o TRANSACTION_getPackageImportance:I = 0x15

.field static final greylist-max-o TRANSACTION_getPopulatedNotificationChannelGroupForPackage:I = 0x27

.field static final blacklist TRANSACTION_getPrivateNotificationsAllowed:I = 0x8e

.field static final greylist-max-o TRANSACTION_getRuleInstanceCount:I = 0x85

.field static final greylist-max-o TRANSACTION_getSnoozedNotificationsFromListener:I = 0x51

.field static final blacklist TRANSACTION_getWearableAppList:I = 0xb3

.field static final greylist-max-o TRANSACTION_getZenMode:I = 0x74

.field static final greylist-max-o TRANSACTION_getZenModeConfig:I = 0x75

.field static final greylist-max-o TRANSACTION_getZenRules:I = 0x80

.field static final blacklist TRANSACTION_hasEnabledNotificationListener:I = 0x73

.field static final blacklist TRANSACTION_hasSentValidBubble:I = 0x10

.field static final blacklist TRANSACTION_hasSentValidMsg:I = 0xc

.field static final blacklist TRANSACTION_hasUserDemotedInvalidMsgApp:I = 0xe

.field static final blacklist TRANSACTION_isAlertsAllowed:I = 0xb5

.field static final blacklist TRANSACTION_isAllowNotificationPopUpForPackage:I = 0xbb

.field static final blacklist TRANSACTION_isEdgeLightingAllowed:I = 0xa7

.field static final blacklist TRANSACTION_isEdgeLightingNotificationAllowed:I = 0x9f

.field static final blacklist TRANSACTION_isImportanceLocked:I = 0x16

.field static final blacklist TRANSACTION_isInCall:I = 0x9

.field static final blacklist TRANSACTION_isInInvalidMsgState:I = 0xd

.field static final greylist-max-o TRANSACTION_isNotificationAssistantAccessGranted:I = 0x68

.field static final greylist-max-o TRANSACTION_isNotificationListenerAccessGranted:I = 0x66

.field static final greylist-max-o TRANSACTION_isNotificationListenerAccessGrantedForUser:I = 0x67

.field static final greylist-max-o TRANSACTION_isNotificationPolicyAccessGranted:I = 0x79

.field static final greylist-max-o TRANSACTION_isNotificationPolicyAccessGrantedForPackage:I = 0x7c

.field static final blacklist TRANSACTION_isPackageEnabled:I = 0xa2

.field static final blacklist TRANSACTION_isPackagePaused:I = 0x3c

.field static final blacklist TRANSACTION_isPermissionFixed:I = 0x3e

.field static final blacklist TRANSACTION_isReminderEnabled:I = 0xb6

.field static final blacklist TRANSACTION_isSubDisplayNotificationAllowed:I = 0xac

.field static final greylist-max-o TRANSACTION_isSystemConditionProviderEnabled:I = 0x65

.field static final greylist-max-o TRANSACTION_matchesCallFilter:I = 0x63

.field static final blacklist TRANSACTION_migrateNotificationFilter:I = 0x92

.field static final greylist-max-o TRANSACTION_notifyConditions:I = 0x78

.field static final greylist-max-o TRANSACTION_onlyHasDefaultChannel:I = 0x39

.field static final blacklist TRANSACTION_pullStats:I = 0x8f

.field static final blacklist TRANSACTION_registerEdgeLightingListener:I = 0x9a

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x45

.field static final blacklist TRANSACTION_registerNotificationListener:I = 0x94

.field static final greylist-max-o TRANSACTION_removeAutomaticZenRule:I = 0x83

.field static final greylist-max-o TRANSACTION_removeAutomaticZenRules:I = 0x84

.field static final blacklist TRANSACTION_removeEdgeNotification:I = 0xa6

.field static final blacklist TRANSACTION_removeWearableAppFromList:I = 0xb2

.field static final greylist-max-o TRANSACTION_requestBindListener:I = 0x4b

.field static final greylist-max-o TRANSACTION_requestBindProvider:I = 0x4d

.field static final greylist-max-o TRANSACTION_requestHintsFromListener:I = 0x53

.field static final greylist-max-o TRANSACTION_requestInterruptionFilterFromListener:I = 0x55

.field static final blacklist TRANSACTION_requestListenerHintsForWearable:I = 0xb4

.field static final greylist-max-o TRANSACTION_requestUnbindListener:I = 0x4c

.field static final greylist-max-o TRANSACTION_requestUnbindProvider:I = 0x4e

.field static final blacklist TRANSACTION_resetDefaultAllowEdgeLighting:I = 0xa9

.field static final blacklist TRANSACTION_setAllowEdgeLighting:I = 0xa8

.field static final blacklist TRANSACTION_setAllowNotificationPopUpForPackage:I = 0xbc

.field static final blacklist TRANSACTION_setAllowSubDisplayNotification:I = 0xad

.field static final blacklist TRANSACTION_setAppBypassDnd:I = 0xbe

.field static final blacklist TRANSACTION_setAutomaticZenRuleState:I = 0x86

.field static final blacklist TRANSACTION_setBubblesAllowed:I = 0x1c

.field static final blacklist TRANSACTION_setHideSilentStatusIcons:I = 0x1b

.field static final greylist-max-o TRANSACTION_setInterruptionFilter:I = 0x58

.field static final blacklist TRANSACTION_setInvalidMsgAppDemoted:I = 0xf

.field static final blacklist TRANSACTION_setListenerFilter:I = 0x91

.field static final blacklist TRANSACTION_setLockScreenNotificationVisibilityForPackage:I = 0xba

.field static final blacklist TRANSACTION_setNASMigrationDoneAndResetDefault:I = 0x72

.field static final blacklist TRANSACTION_setNotificationAlertsEnabledForPackage:I = 0xaf

.field static final greylist-max-o TRANSACTION_setNotificationAssistantAccessGranted:I = 0x6a

.field static final greylist-max-o TRANSACTION_setNotificationAssistantAccessGrantedForUser:I = 0x6c

.field static final blacklist TRANSACTION_setNotificationDelegate:I = 0x8a

.field static final greylist-max-o TRANSACTION_setNotificationListenerAccessGranted:I = 0x69

.field static final greylist-max-o TRANSACTION_setNotificationListenerAccessGrantedForUser:I = 0x6b

.field static final greylist-max-o TRANSACTION_setNotificationPolicy:I = 0x7b

.field static final greylist-max-o TRANSACTION_setNotificationPolicyAccessGranted:I = 0x7d

.field static final greylist-max-o TRANSACTION_setNotificationPolicyAccessGrantedForUser:I = 0x7e

.field static final greylist-max-o TRANSACTION_setNotificationsEnabledForPackage:I = 0x11

.field static final greylist-max-o TRANSACTION_setNotificationsEnabledWithImportanceLockForPackage:I = 0x12

.field static final greylist-max-o TRANSACTION_setNotificationsShownFromListener:I = 0x4f

.field static final greylist-max-o TRANSACTION_setOnNotificationPostedTrimFromListener:I = 0x57

.field static final blacklist TRANSACTION_setPrivateNotificationsAllowed:I = 0x8d

.field static final blacklist TRANSACTION_setReminderEnabled:I = 0xb8

.field static final blacklist TRANSACTION_setReminderEnabledForPackage:I = 0xb7

.field static final greylist-max-o TRANSACTION_setShowBadge:I = 0xa

.field static final blacklist TRANSACTION_setToastRateLimitingEnabled:I = 0x93

.field static final blacklist TRANSACTION_setWearableAppList:I = 0xb0

.field static final greylist-max-o TRANSACTION_setZenMode:I = 0x77

.field static final blacklist TRANSACTION_shouldHideSilentStatusIcons:I = 0x1a

.field static final blacklist TRANSACTION_silenceNotificationSound:I = 0x3f

.field static final greylist-max-o TRANSACTION_snoozeNotificationUntilContextFromListener:I = 0x49

.field static final greylist-max-o TRANSACTION_snoozeNotificationUntilFromListener:I = 0x4a

.field static final blacklist TRANSACTION_startEdgeLighting:I = 0x9c

.field static final blacklist TRANSACTION_stopEdgeLighting:I = 0x9d

.field static final blacklist TRANSACTION_unbindEdgeLightingService:I = 0x97

.field static final blacklist TRANSACTION_unlockAllNotificationChannels:I = 0x2b

.field static final blacklist TRANSACTION_unlockNotificationChannel:I = 0x2a

.field static final blacklist TRANSACTION_unregisterEdgeLightingListener:I = 0x9b

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x46

.field static final greylist-max-o TRANSACTION_unsnoozeNotificationFromAssistant:I = 0x60

.field static final blacklist TRANSACTION_unsnoozeNotificationFromSystemListener:I = 0x61

.field static final greylist-max-o TRANSACTION_updateAutomaticZenRule:I = 0x82

.field static final blacklist TRANSACTION_updateEdgeLightingPackageList:I = 0x98

.field static final blacklist TRANSACTION_updateEdgeLightingPolicy:I = 0x99

.field static final greylist-max-o TRANSACTION_updateNotificationChannelForPackage:I = 0x29

.field static final greylist-max-o TRANSACTION_updateNotificationChannelFromPrivilegedListener:I = 0x5a

.field static final greylist-max-o TRANSACTION_updateNotificationChannelGroupForPackage:I = 0x28

.field static final greylist-max-o TRANSACTION_updateNotificationChannelGroupFromPrivilegedListener:I = 0x59

.field static final blacklist TRANSACTION_updateNotificationChannels:I = 0x95


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 742
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 743
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/INotificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 744
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 751
    if-nez p0, :cond_0

    .line 752
    const/4 v0, 0x0

    return-object v0

    .line 754
    :cond_0
    const-string v0, "android.app.INotificationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 755
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/INotificationManager;

    if-eqz v1, :cond_1

    .line 756
    move-object v1, v0

    check-cast v1, Landroid/app/INotificationManager;

    return-object v1

    .line 758
    :cond_1
    new-instance v1, Landroid/app/INotificationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/INotificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 767
    packed-switch p0, :pswitch_data_0

    .line 1547
    const/4 v0, 0x0

    return-object v0

    .line 1543
    :pswitch_0
    const-string v0, "enqueueToastForDex"

    return-object v0

    .line 1539
    :pswitch_1
    const-string v0, "enqueueTextToastForDex"

    return-object v0

    .line 1535
    :pswitch_2
    const-string v0, "getBlockedAppCount"

    return-object v0

    .line 1531
    :pswitch_3
    const-string v0, "getAppsBypassingDndCount"

    return-object v0

    .line 1527
    :pswitch_4
    const-string/jumbo v0, "setAppBypassDnd"

    return-object v0

    .line 1523
    :pswitch_5
    const-string v0, "canAppBypassDnd"

    return-object v0

    .line 1519
    :pswitch_6
    const-string/jumbo v0, "setAllowNotificationPopUpForPackage"

    return-object v0

    .line 1515
    :pswitch_7
    const-string v0, "isAllowNotificationPopUpForPackage"

    return-object v0

    .line 1511
    :pswitch_8
    const-string/jumbo v0, "setLockScreenNotificationVisibilityForPackage"

    return-object v0

    .line 1507
    :pswitch_9
    const-string v0, "getLockScreenNotificationVisibilityForPackage"

    return-object v0

    .line 1503
    :pswitch_a
    const-string/jumbo v0, "setReminderEnabled"

    return-object v0

    .line 1499
    :pswitch_b
    const-string/jumbo v0, "setReminderEnabledForPackage"

    return-object v0

    .line 1495
    :pswitch_c
    const-string v0, "isReminderEnabled"

    return-object v0

    .line 1491
    :pswitch_d
    const-string v0, "isAlertsAllowed"

    return-object v0

    .line 1487
    :pswitch_e
    const-string/jumbo v0, "requestListenerHintsForWearable"

    return-object v0

    .line 1483
    :pswitch_f
    const-string v0, "getWearableAppList"

    return-object v0

    .line 1479
    :pswitch_10
    const-string/jumbo v0, "removeWearableAppFromList"

    return-object v0

    .line 1475
    :pswitch_11
    const-string v0, "addWearableAppToList"

    return-object v0

    .line 1471
    :pswitch_12
    const-string/jumbo v0, "setWearableAppList"

    return-object v0

    .line 1467
    :pswitch_13
    const-string/jumbo v0, "setNotificationAlertsEnabledForPackage"

    return-object v0

    .line 1463
    :pswitch_14
    const-string v0, "getNotificationAlertsEnabledForPackage"

    return-object v0

    .line 1459
    :pswitch_15
    const-string/jumbo v0, "setAllowSubDisplayNotification"

    return-object v0

    .line 1455
    :pswitch_16
    const-string v0, "isSubDisplayNotificationAllowed"

    return-object v0

    .line 1451
    :pswitch_17
    const-string v0, "dispatchDelayedWakeUpAndBlocked"

    return-object v0

    .line 1447
    :pswitch_18
    const-string v0, "dispatchDelayedWakelockAndBlocked"

    return-object v0

    .line 1443
    :pswitch_19
    const-string/jumbo v0, "resetDefaultAllowEdgeLighting"

    return-object v0

    .line 1439
    :pswitch_1a
    const-string/jumbo v0, "setAllowEdgeLighting"

    return-object v0

    .line 1435
    :pswitch_1b
    const-string v0, "isEdgeLightingAllowed"

    return-object v0

    .line 1431
    :pswitch_1c
    const-string/jumbo v0, "removeEdgeNotification"

    return-object v0

    .line 1427
    :pswitch_1d
    const-string v0, "enqueueEdgeNotification"

    return-object v0

    .line 1423
    :pswitch_1e
    const-string v0, "cancelNotificationByGroupKey"

    return-object v0

    .line 1419
    :pswitch_1f
    const-string v0, "cancelNotificationByEdge"

    return-object v0

    .line 1415
    :pswitch_20
    const-string v0, "isPackageEnabled"

    return-object v0

    .line 1411
    :pswitch_21
    const-string v0, "disableEdgeLightingNotification"

    return-object v0

    .line 1407
    :pswitch_22
    const-string v0, "disable"

    return-object v0

    .line 1403
    :pswitch_23
    const-string v0, "isEdgeLightingNotificationAllowed"

    return-object v0

    .line 1399
    :pswitch_24
    const-string v0, "getEdgeLightingState"

    return-object v0

    .line 1395
    :pswitch_25
    const-string/jumbo v0, "stopEdgeLighting"

    return-object v0

    .line 1391
    :pswitch_26
    const-string/jumbo v0, "startEdgeLighting"

    return-object v0

    .line 1387
    :pswitch_27
    const-string/jumbo v0, "unregisterEdgeLightingListener"

    return-object v0

    .line 1383
    :pswitch_28
    const-string/jumbo v0, "registerEdgeLightingListener"

    return-object v0

    .line 1379
    :pswitch_29
    const-string/jumbo v0, "updateEdgeLightingPolicy"

    return-object v0

    .line 1375
    :pswitch_2a
    const-string/jumbo v0, "updateEdgeLightingPackageList"

    return-object v0

    .line 1371
    :pswitch_2b
    const-string/jumbo v0, "unbindEdgeLightingService"

    return-object v0

    .line 1367
    :pswitch_2c
    const-string v0, "bindEdgeLightingService"

    return-object v0

    .line 1363
    :pswitch_2d
    const-string/jumbo v0, "updateNotificationChannels"

    return-object v0

    .line 1359
    :pswitch_2e
    const-string/jumbo v0, "registerNotificationListener"

    return-object v0

    .line 1355
    :pswitch_2f
    const-string/jumbo v0, "setToastRateLimitingEnabled"

    return-object v0

    .line 1351
    :pswitch_30
    const-string/jumbo v0, "migrateNotificationFilter"

    return-object v0

    .line 1347
    :pswitch_31
    const-string/jumbo v0, "setListenerFilter"

    return-object v0

    .line 1343
    :pswitch_32
    const-string v0, "getListenerFilter"

    return-object v0

    .line 1339
    :pswitch_33
    const-string/jumbo v0, "pullStats"

    return-object v0

    .line 1335
    :pswitch_34
    const-string v0, "getPrivateNotificationsAllowed"

    return-object v0

    .line 1331
    :pswitch_35
    const-string/jumbo v0, "setPrivateNotificationsAllowed"

    return-object v0

    .line 1327
    :pswitch_36
    const-string v0, "canNotifyAsPackage"

    return-object v0

    .line 1323
    :pswitch_37
    const-string v0, "getNotificationDelegate"

    return-object v0

    .line 1319
    :pswitch_38
    const-string/jumbo v0, "setNotificationDelegate"

    return-object v0

    .line 1315
    :pswitch_39
    const-string v0, "getAppActiveNotifications"

    return-object v0

    .line 1311
    :pswitch_3a
    const-string v0, "applyRestore"

    return-object v0

    .line 1307
    :pswitch_3b
    const-string v0, "getBackupPayload"

    return-object v0

    .line 1303
    :pswitch_3c
    const-string/jumbo v0, "setAutomaticZenRuleState"

    return-object v0

    .line 1299
    :pswitch_3d
    const-string v0, "getRuleInstanceCount"

    return-object v0

    .line 1295
    :pswitch_3e
    const-string/jumbo v0, "removeAutomaticZenRules"

    return-object v0

    .line 1291
    :pswitch_3f
    const-string/jumbo v0, "removeAutomaticZenRule"

    return-object v0

    .line 1287
    :pswitch_40
    const-string/jumbo v0, "updateAutomaticZenRule"

    return-object v0

    .line 1283
    :pswitch_41
    const-string v0, "addAutomaticZenRule"

    return-object v0

    .line 1279
    :pswitch_42
    const-string v0, "getZenRules"

    return-object v0

    .line 1275
    :pswitch_43
    const-string v0, "getAutomaticZenRule"

    return-object v0

    .line 1271
    :pswitch_44
    const-string/jumbo v0, "setNotificationPolicyAccessGrantedForUser"

    return-object v0

    .line 1267
    :pswitch_45
    const-string/jumbo v0, "setNotificationPolicyAccessGranted"

    return-object v0

    .line 1263
    :pswitch_46
    const-string v0, "isNotificationPolicyAccessGrantedForPackage"

    return-object v0

    .line 1259
    :pswitch_47
    const-string/jumbo v0, "setNotificationPolicy"

    return-object v0

    .line 1255
    :pswitch_48
    const-string v0, "getNotificationPolicy"

    return-object v0

    .line 1251
    :pswitch_49
    const-string v0, "isNotificationPolicyAccessGranted"

    return-object v0

    .line 1247
    :pswitch_4a
    const-string/jumbo v0, "notifyConditions"

    return-object v0

    .line 1243
    :pswitch_4b
    const-string/jumbo v0, "setZenMode"

    return-object v0

    .line 1239
    :pswitch_4c
    const-string v0, "getConsolidatedNotificationPolicy"

    return-object v0

    .line 1235
    :pswitch_4d
    const-string v0, "getZenModeConfig"

    return-object v0

    .line 1231
    :pswitch_4e
    const-string v0, "getZenMode"

    return-object v0

    .line 1227
    :pswitch_4f
    const-string v0, "hasEnabledNotificationListener"

    return-object v0

    .line 1223
    :pswitch_50
    const-string/jumbo v0, "setNASMigrationDoneAndResetDefault"

    return-object v0

    .line 1219
    :pswitch_51
    const-string v0, "getDefaultNotificationAssistant"

    return-object v0

    .line 1215
    :pswitch_52
    const-string v0, "getAllowedNotificationAssistant"

    return-object v0

    .line 1211
    :pswitch_53
    const-string v0, "getAllowedNotificationAssistantForUser"

    return-object v0

    .line 1207
    :pswitch_54
    const-string v0, "getEnabledNotificationListeners"

    return-object v0

    .line 1203
    :pswitch_55
    const-string v0, "getEnabledNotificationListenerPackages"

    return-object v0

    .line 1199
    :pswitch_56
    const-string/jumbo v0, "setNotificationAssistantAccessGrantedForUser"

    return-object v0

    .line 1195
    :pswitch_57
    const-string/jumbo v0, "setNotificationListenerAccessGrantedForUser"

    return-object v0

    .line 1191
    :pswitch_58
    const-string/jumbo v0, "setNotificationAssistantAccessGranted"

    return-object v0

    .line 1187
    :pswitch_59
    const-string/jumbo v0, "setNotificationListenerAccessGranted"

    return-object v0

    .line 1183
    :pswitch_5a
    const-string v0, "isNotificationAssistantAccessGranted"

    return-object v0

    .line 1179
    :pswitch_5b
    const-string v0, "isNotificationListenerAccessGrantedForUser"

    return-object v0

    .line 1175
    :pswitch_5c
    const-string v0, "isNotificationListenerAccessGranted"

    return-object v0

    .line 1171
    :pswitch_5d
    const-string v0, "isSystemConditionProviderEnabled"

    return-object v0

    .line 1167
    :pswitch_5e
    const-string v0, "cleanUpCallersAfter"

    return-object v0

    .line 1163
    :pswitch_5f
    const-string/jumbo v0, "matchesCallFilter"

    return-object v0

    .line 1159
    :pswitch_60
    const-string v0, "getEffectsSuppressor"

    return-object v0

    .line 1155
    :pswitch_61
    const-string/jumbo v0, "unsnoozeNotificationFromSystemListener"

    return-object v0

    .line 1151
    :pswitch_62
    const-string/jumbo v0, "unsnoozeNotificationFromAssistant"

    return-object v0

    .line 1147
    :pswitch_63
    const-string v0, "applyAdjustmentsFromAssistant"

    return-object v0

    .line 1143
    :pswitch_64
    const-string v0, "applyAdjustmentFromAssistant"

    return-object v0

    .line 1139
    :pswitch_65
    const-string v0, "applyEnqueuedAdjustmentFromAssistant"

    return-object v0

    .line 1135
    :pswitch_66
    const-string v0, "getNotificationChannelGroupsFromPrivilegedListener"

    return-object v0

    .line 1131
    :pswitch_67
    const-string v0, "getNotificationChannelsFromPrivilegedListener"

    return-object v0

    .line 1127
    :pswitch_68
    const-string/jumbo v0, "updateNotificationChannelFromPrivilegedListener"

    return-object v0

    .line 1123
    :pswitch_69
    const-string/jumbo v0, "updateNotificationChannelGroupFromPrivilegedListener"

    return-object v0

    .line 1119
    :pswitch_6a
    const-string/jumbo v0, "setInterruptionFilter"

    return-object v0

    .line 1115
    :pswitch_6b
    const-string/jumbo v0, "setOnNotificationPostedTrimFromListener"

    return-object v0

    .line 1111
    :pswitch_6c
    const-string v0, "getInterruptionFilterFromListener"

    return-object v0

    .line 1107
    :pswitch_6d
    const-string/jumbo v0, "requestInterruptionFilterFromListener"

    return-object v0

    .line 1103
    :pswitch_6e
    const-string v0, "getHintsFromListener"

    return-object v0

    .line 1099
    :pswitch_6f
    const-string/jumbo v0, "requestHintsFromListener"

    return-object v0

    .line 1095
    :pswitch_70
    const-string v0, "clearRequestedListenerHints"

    return-object v0

    .line 1091
    :pswitch_71
    const-string v0, "getSnoozedNotificationsFromListener"

    return-object v0

    .line 1087
    :pswitch_72
    const-string v0, "getActiveNotificationsFromListener"

    return-object v0

    .line 1083
    :pswitch_73
    const-string/jumbo v0, "setNotificationsShownFromListener"

    return-object v0

    .line 1079
    :pswitch_74
    const-string/jumbo v0, "requestUnbindProvider"

    return-object v0

    .line 1075
    :pswitch_75
    const-string/jumbo v0, "requestBindProvider"

    return-object v0

    .line 1071
    :pswitch_76
    const-string/jumbo v0, "requestUnbindListener"

    return-object v0

    .line 1067
    :pswitch_77
    const-string/jumbo v0, "requestBindListener"

    return-object v0

    .line 1063
    :pswitch_78
    const-string/jumbo v0, "snoozeNotificationUntilFromListener"

    return-object v0

    .line 1059
    :pswitch_79
    const-string/jumbo v0, "snoozeNotificationUntilContextFromListener"

    return-object v0

    .line 1055
    :pswitch_7a
    const-string v0, "cancelNotificationsFromListener"

    return-object v0

    .line 1051
    :pswitch_7b
    const-string v0, "cancelNotificationFromListener"

    return-object v0

    .line 1047
    :pswitch_7c
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 1043
    :pswitch_7d
    const-string/jumbo v0, "registerListener"

    return-object v0

    .line 1039
    :pswitch_7e
    const-string v0, "getNotificationHistory"

    return-object v0

    .line 1035
    :pswitch_7f
    const-string v0, "getHistoricalNotificationsWithAttribution"

    return-object v0

    .line 1031
    :pswitch_80
    const-string v0, "getHistoricalNotifications"

    return-object v0

    .line 1027
    :pswitch_81
    const-string v0, "getActiveNotificationsWithAttribution"

    return-object v0

    .line 1023
    :pswitch_82
    const-string v0, "getActiveNotifications"

    return-object v0

    .line 1019
    :pswitch_83
    const-string/jumbo v0, "silenceNotificationSound"

    return-object v0

    .line 1015
    :pswitch_84
    const-string v0, "isPermissionFixed"

    return-object v0

    .line 1011
    :pswitch_85
    const-string v0, "deleteNotificationHistoryItem"

    return-object v0

    .line 1007
    :pswitch_86
    const-string v0, "isPackagePaused"

    return-object v0

    .line 1003
    :pswitch_87
    const-string v0, "getNotificationChannelsBypassingDnd"

    return-object v0

    .line 999
    :pswitch_88
    const-string v0, "areChannelsBypassingDnd"

    return-object v0

    .line 995
    :pswitch_89
    const-string/jumbo v0, "onlyHasDefaultChannel"

    return-object v0

    .line 991
    :pswitch_8a
    const-string v0, "getNotificationChannelGroups"

    return-object v0

    .line 987
    :pswitch_8b
    const-string v0, "getNotificationChannelGroup"

    return-object v0

    .line 983
    :pswitch_8c
    const-string v0, "deleteNotificationChannelGroup"

    return-object v0

    .line 979
    :pswitch_8d
    const-string v0, "getBlockedChannelCount"

    return-object v0

    .line 975
    :pswitch_8e
    const-string v0, "getDeletedChannelCount"

    return-object v0

    .line 971
    :pswitch_8f
    const-string v0, "getNumNotificationChannelsForPackage"

    return-object v0

    .line 967
    :pswitch_90
    const-string v0, "getNotificationChannelsForPackage"

    return-object v0

    .line 963
    :pswitch_91
    const-string v0, "getNotificationChannels"

    return-object v0

    .line 959
    :pswitch_92
    const-string v0, "deleteNotificationChannel"

    return-object v0

    .line 955
    :pswitch_93
    const-string v0, "getNotificationChannelForPackage"

    return-object v0

    .line 951
    :pswitch_94
    const-string v0, "createConversationNotificationChannelForPackage"

    return-object v0

    .line 947
    :pswitch_95
    const-string v0, "getConversationNotificationChannel"

    return-object v0

    .line 943
    :pswitch_96
    const-string v0, "getNotificationChannel"

    return-object v0

    .line 939
    :pswitch_97
    const-string/jumbo v0, "unlockAllNotificationChannels"

    return-object v0

    .line 935
    :pswitch_98
    const-string/jumbo v0, "unlockNotificationChannel"

    return-object v0

    .line 931
    :pswitch_99
    const-string/jumbo v0, "updateNotificationChannelForPackage"

    return-object v0

    .line 927
    :pswitch_9a
    const-string/jumbo v0, "updateNotificationChannelGroupForPackage"

    return-object v0

    .line 923
    :pswitch_9b
    const-string v0, "getPopulatedNotificationChannelGroupForPackage"

    return-object v0

    .line 919
    :pswitch_9c
    const-string v0, "getNotificationChannelGroupForPackage"

    return-object v0

    .line 915
    :pswitch_9d
    const-string v0, "getNotificationChannelGroupsForPackage"

    return-object v0

    .line 911
    :pswitch_9e
    const-string v0, "getConversationsForPackage"

    return-object v0

    .line 907
    :pswitch_9f
    const-string v0, "getConversations"

    return-object v0

    .line 903
    :pswitch_a0
    const-string v0, "createNotificationChannelsForPackage"

    return-object v0

    .line 899
    :pswitch_a1
    const-string v0, "createNotificationChannels"

    return-object v0

    .line 895
    :pswitch_a2
    const-string v0, "createNotificationChannelGroups"

    return-object v0

    .line 891
    :pswitch_a3
    const-string v0, "getBubblePreferenceForPackage"

    return-object v0

    .line 887
    :pswitch_a4
    const-string v0, "areBubblesEnabled"

    return-object v0

    .line 883
    :pswitch_a5
    const-string v0, "areBubblesAllowed"

    return-object v0

    .line 879
    :pswitch_a6
    const-string/jumbo v0, "setBubblesAllowed"

    return-object v0

    .line 875
    :pswitch_a7
    const-string/jumbo v0, "setHideSilentStatusIcons"

    return-object v0

    .line 871
    :pswitch_a8
    const-string/jumbo v0, "shouldHideSilentStatusIcons"

    return-object v0

    .line 867
    :pswitch_a9
    const-string v0, "disallowAssistantAdjustment"

    return-object v0

    .line 863
    :pswitch_aa
    const-string v0, "allowAssistantAdjustment"

    return-object v0

    .line 859
    :pswitch_ab
    const-string v0, "getAllowedAssistantAdjustments"

    return-object v0

    .line 855
    :pswitch_ac
    const-string v0, "isImportanceLocked"

    return-object v0

    .line 851
    :pswitch_ad
    const-string v0, "getPackageImportance"

    return-object v0

    .line 847
    :pswitch_ae
    const-string v0, "areNotificationsEnabled"

    return-object v0

    .line 843
    :pswitch_af
    const-string v0, "areNotificationsEnabledForPackage"

    return-object v0

    .line 839
    :pswitch_b0
    const-string/jumbo v0, "setNotificationsEnabledWithImportanceLockForPackage"

    return-object v0

    .line 835
    :pswitch_b1
    const-string/jumbo v0, "setNotificationsEnabledForPackage"

    return-object v0

    .line 831
    :pswitch_b2
    const-string v0, "hasSentValidBubble"

    return-object v0

    .line 827
    :pswitch_b3
    const-string/jumbo v0, "setInvalidMsgAppDemoted"

    return-object v0

    .line 823
    :pswitch_b4
    const-string v0, "hasUserDemotedInvalidMsgApp"

    return-object v0

    .line 819
    :pswitch_b5
    const-string v0, "isInInvalidMsgState"

    return-object v0

    .line 815
    :pswitch_b6
    const-string v0, "hasSentValidMsg"

    return-object v0

    .line 811
    :pswitch_b7
    const-string v0, "canShowBadge"

    return-object v0

    .line 807
    :pswitch_b8
    const-string/jumbo v0, "setShowBadge"

    return-object v0

    .line 803
    :pswitch_b9
    const-string v0, "isInCall"

    return-object v0

    .line 799
    :pswitch_ba
    const-string v0, "cancelNotificationWithTag"

    return-object v0

    .line 795
    :pswitch_bb
    const-string v0, "enqueueNotificationWithTag"

    return-object v0

    .line 791
    :pswitch_bc
    const-string v0, "finishToken"

    return-object v0

    .line 787
    :pswitch_bd
    const-string v0, "cancelToast"

    return-object v0

    .line 783
    :pswitch_be
    const-string v0, "enqueueToast"

    return-object v0

    .line 779
    :pswitch_bf
    const-string v0, "enqueueTextToast"

    return-object v0

    .line 775
    :pswitch_c0
    const-string v0, "clearData"

    return-object v0

    .line 771
    :pswitch_c1
    const-string v0, "cancelAllNotifications"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 762
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 7572
    const/16 v0, 0xc1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 1554
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1558
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.app.INotificationManager"

    .line 1559
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 1560
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1562
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 1570
    packed-switch v10, :pswitch_data_1

    .line 3869
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1566
    :pswitch_0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1567
    return v14

    .line 3849
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3851
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 3853
    .local v15, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v16

    .line 3855
    .local v16, "_arg2":Landroid/app/ITransientNotification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3857
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 3859
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 3861
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 3862
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3863
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v15

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/INotificationManager$Stub;->enqueueToastForDex(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IILjava/lang/String;I)V

    .line 3864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3865
    goto/16 :goto_0

    .line 3826
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Landroid/os/IBinder;
    .end local v16    # "_arg2":Landroid/app/ITransientNotification;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3828
    .local v15, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 3830
    .local v16, "_arg1":Landroid/os/IBinder;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/CharSequence;

    .line 3832
    .local v17, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 3834
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 3836
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotificationCallback;

    move-result-object v20

    .line 3838
    .local v20, "_arg5":Landroid/app/ITransientNotificationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 3840
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 3841
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3842
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/app/INotificationManager$Stub;->enqueueTextToastForDex(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IILandroid/app/ITransientNotificationCallback;Ljava/lang/String;I)V

    .line 3843
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3844
    goto/16 :goto_0

    .line 3816
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Landroid/os/IBinder;
    .end local v17    # "_arg2":Ljava/lang/CharSequence;
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":Landroid/app/ITransientNotificationCallback;
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3817
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3818
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getBlockedAppCount(I)I

    move-result v1

    .line 3819
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3820
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3821
    goto/16 :goto_0

    .line 3806
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3807
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3808
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getAppsBypassingDndCount(I)I

    move-result v1

    .line 3809
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3810
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3811
    goto/16 :goto_0

    .line 3793
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3795
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3797
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3798
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3799
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setAppBypassDnd(Ljava/lang/String;IZ)V

    .line 3800
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3801
    goto/16 :goto_0

    .line 3781
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3783
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3784
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3785
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->canAppBypassDnd(Ljava/lang/String;I)Z

    move-result v2

    .line 3786
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3787
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3788
    goto/16 :goto_0

    .line 3768
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3770
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3772
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3773
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3774
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setAllowNotificationPopUpForPackage(Ljava/lang/String;IZ)V

    .line 3775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3776
    goto/16 :goto_0

    .line 3756
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3758
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3759
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3760
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->isAllowNotificationPopUpForPackage(Ljava/lang/String;I)Z

    move-result v2

    .line 3761
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3762
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3763
    goto/16 :goto_0

    .line 3743
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3745
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3747
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3748
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3749
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setLockScreenNotificationVisibilityForPackage(Ljava/lang/String;II)V

    .line 3750
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3751
    goto/16 :goto_0

    .line 3731
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3733
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3734
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3735
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    move-result v2

    .line 3736
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3737
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3738
    goto/16 :goto_0

    .line 3718
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3720
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3722
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3723
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3724
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setReminderEnabled(IZLjava/util/List;)V

    .line 3725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3726
    goto/16 :goto_0

    .line 3705
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3707
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3709
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3710
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3711
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setReminderEnabledForPackage(Ljava/lang/String;IZ)V

    .line 3712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3713
    goto/16 :goto_0

    .line 3693
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3695
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3696
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3697
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->isReminderEnabled(Ljava/lang/String;I)Z

    move-result v2

    .line 3698
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3699
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3700
    goto/16 :goto_0

    .line 3677
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3679
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3681
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3683
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3684
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3685
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->isAlertsAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v4

    .line 3686
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3687
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3688
    goto/16 :goto_0

    .line 3667
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3668
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3669
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->requestListenerHintsForWearable(I)Z

    move-result v1

    .line 3670
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3671
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3672
    goto/16 :goto_0

    .line 3657
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3658
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3659
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getWearableAppList(I)Ljava/util/List;

    move-result-object v1

    .line 3660
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3661
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3662
    goto/16 :goto_0

    .line 3645
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3647
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3648
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3649
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->removeWearableAppFromList(ILjava/lang/String;)Z

    move-result v2

    .line 3650
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3651
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3652
    goto/16 :goto_0

    .line 3633
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3635
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3636
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3637
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->addWearableAppToList(ILjava/lang/String;)Z

    move-result v2

    .line 3638
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3639
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3640
    goto/16 :goto_0

    .line 3621
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3623
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3624
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3625
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->setWearableAppList(ILjava/util/List;)Z

    move-result v2

    .line 3626
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3627
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3628
    goto/16 :goto_0

    .line 3608
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_result":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3610
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3612
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3613
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3614
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationAlertsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 3615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3616
    goto/16 :goto_0

    .line 3596
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3598
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3599
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3600
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v2

    .line 3601
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3602
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3603
    goto/16 :goto_0

    .line 3583
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3585
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3587
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3588
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3589
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setAllowSubDisplayNotification(Ljava/lang/String;IZ)V

    .line 3590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3591
    goto/16 :goto_0

    .line 3571
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3573
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3574
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3575
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->isSubDisplayNotificationAllowed(Ljava/lang/String;I)Z

    move-result v2

    .line 3576
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3577
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3578
    goto/16 :goto_0

    .line 3557
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3559
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3561
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3562
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3563
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->dispatchDelayedWakeUpAndBlocked(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 3564
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3565
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3566
    goto/16 :goto_0

    .line 3541
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3543
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3545
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3547
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3548
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3549
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->dispatchDelayedWakelockAndBlocked(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 3550
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3551
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3552
    goto/16 :goto_0

    .line 3534
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->resetDefaultAllowEdgeLighting()V

    .line 3535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3536
    goto/16 :goto_0

    .line 3522
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3524
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3526
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3527
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3528
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setAllowEdgeLighting(Ljava/lang/String;IZ)V

    .line 3529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3530
    goto/16 :goto_0

    .line 3510
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3512
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3513
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3514
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->isEdgeLightingAllowed(Ljava/lang/String;I)Z

    move-result v2

    .line 3515
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3516
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3517
    goto/16 :goto_0

    .line 3495
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3497
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3499
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 3501
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3502
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3503
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->removeEdgeNotification(Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 3504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3505
    goto/16 :goto_0

    .line 3478
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3480
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3482
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3484
    .local v8, "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/Bundle;

    .line 3486
    .local v15, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3487
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3488
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->enqueueEdgeNotification(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 3489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3490
    goto/16 :goto_0

    .line 3459
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3461
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3463
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3465
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3467
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 3469
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3470
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3471
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/INotificationManager$Stub;->cancelNotificationByGroupKey(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3473
    goto/16 :goto_0

    .line 3442
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3444
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3446
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3448
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3450
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3451
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3452
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->cancelNotificationByEdge(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 3453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3454
    goto/16 :goto_0

    .line 3430
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3432
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3433
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3434
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->isPackageEnabled(Ljava/lang/String;I)Z

    move-result v2

    .line 3435
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3436
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3437
    goto/16 :goto_0

    .line 3419
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3421
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3422
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3423
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->disableEdgeLightingNotification(Ljava/lang/String;Z)V

    .line 3424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3425
    goto/16 :goto_0

    .line 3406
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3408
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3410
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3411
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3412
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->disable(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 3413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3414
    goto/16 :goto_0

    .line 3396
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3397
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3398
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->isEdgeLightingNotificationAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 3399
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3400
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3401
    goto/16 :goto_0

    .line 3388
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getEdgeLightingState()I

    move-result v0

    .line 3389
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3390
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3391
    goto/16 :goto_0

    .line 3378
    .end local v0    # "_result":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3380
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3381
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3382
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3384
    goto/16 :goto_0

    .line 3365
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3367
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/edge/SemEdgeLightingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 3369
    .local v1, "_arg1":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3370
    .restart local v2    # "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3371
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V

    .line 3372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3373
    goto/16 :goto_0

    .line 3354
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3356
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3357
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3358
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->unregisterEdgeLightingListener(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3360
    goto/16 :goto_0

    .line 3343
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3345
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3346
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3347
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->registerEdgeLightingListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 3348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3349
    goto/16 :goto_0

    .line 3332
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3334
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/edge/EdgeLightingPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/edge/EdgeLightingPolicy;

    .line 3335
    .local v1, "_arg1":Lcom/samsung/android/edge/EdgeLightingPolicy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3336
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->updateEdgeLightingPolicy(Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicy;)V

    .line 3337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3338
    goto/16 :goto_0

    .line 3321
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/edge/EdgeLightingPolicy;
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3323
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3324
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3325
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V

    .line 3326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3327
    goto/16 :goto_0

    .line 3310
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3312
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3313
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3314
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->unbindEdgeLightingService(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3316
    goto/16 :goto_0

    .line 3297
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3299
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3301
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3302
    .local v2, "_arg2":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3303
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->bindEdgeLightingService(Landroid/os/IBinder;ILandroid/content/ComponentName;)V

    .line 3304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3305
    goto/16 :goto_0

    .line 3286
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3288
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 3289
    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3290
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->updateNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 3291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3292
    goto/16 :goto_0

    .line 3273
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :pswitch_2f
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3275
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3277
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3278
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3279
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->registerNotificationListener(Landroid/content/ComponentName;IZ)V

    .line 3280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3281
    goto/16 :goto_0

    .line 3264
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3265
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3266
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->setToastRateLimitingEnabled(Z)V

    .line 3267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3268
    goto/16 :goto_0

    .line 3251
    .end local v0    # "_arg0":Z
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 3253
    .local v0, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3255
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3256
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3257
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->migrateNotificationFilter(Landroid/service/notification/INotificationListener;ILjava/util/List;)V

    .line 3258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3259
    goto/16 :goto_0

    .line 3238
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_32
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3240
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3242
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/service/notification/NotificationListenerFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationListenerFilter;

    .line 3243
    .local v2, "_arg2":Landroid/service/notification/NotificationListenerFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3244
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setListenerFilter(Landroid/content/ComponentName;ILandroid/service/notification/NotificationListenerFilter;)V

    .line 3245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3246
    goto/16 :goto_0

    .line 3226
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/service/notification/NotificationListenerFilter;
    :pswitch_33
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3228
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3229
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3230
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;

    move-result-object v2

    .line 3231
    .local v2, "_result":Landroid/service/notification/NotificationListenerFilter;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3232
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3233
    goto/16 :goto_0

    .line 3209
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/service/notification/NotificationListenerFilter;
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 3211
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3213
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 3215
    .local v15, "_arg2":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 3216
    .local v5, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3217
    move-object/from16 v0, p0

    move-wide v1, v6

    move v3, v8

    move v4, v15

    move-object/from16 v16, v5

    .end local v5    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .local v16, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->pullStats(JIZLjava/util/List;)J

    move-result-wide v0

    .line 3218
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3219
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3220
    move-object/from16 v2, v16

    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .local v2, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3221
    goto/16 :goto_0

    .line 3201
    .end local v0    # "_result":J
    .end local v2    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":Z
    :pswitch_35
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getPrivateNotificationsAllowed()Z

    move-result v0

    .line 3202
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3203
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3204
    goto/16 :goto_0

    .line 3193
    .end local v0    # "_result":Z
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3194
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3195
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->setPrivateNotificationsAllowed(Z)V

    .line 3196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3197
    goto/16 :goto_0

    .line 3179
    .end local v0    # "_arg0":Z
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3181
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3183
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3184
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3185
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 3186
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3187
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3188
    goto/16 :goto_0

    .line 3169
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3170
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3171
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getNotificationDelegate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3172
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3173
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3174
    goto/16 :goto_0

    .line 3158
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3160
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3161
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3162
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->setNotificationDelegate(Ljava/lang/String;Ljava/lang/String;)V

    .line 3163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3164
    goto/16 :goto_0

    .line 3146
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3148
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3149
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3150
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 3151
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3152
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3153
    goto/16 :goto_0

    .line 3135
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 3137
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3138
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3139
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->applyRestore([BI)V

    .line 3140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3141
    goto/16 :goto_0

    .line 3125
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3126
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3127
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getBackupPayload(I)[B

    move-result-object v1

    .line 3128
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3129
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3130
    goto/16 :goto_0

    .line 3114
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[B
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3116
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/Condition;

    .line 3117
    .local v1, "_arg1":Landroid/service/notification/Condition;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3118
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    .line 3119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3120
    goto/16 :goto_0

    .line 3104
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/service/notification/Condition;
    :pswitch_3e
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3105
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3106
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getRuleInstanceCount(Landroid/content/ComponentName;)I

    move-result v1

    .line 3107
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3108
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3109
    goto/16 :goto_0

    .line 3094
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":I
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3095
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3096
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->removeAutomaticZenRules(Ljava/lang/String;)Z

    move-result v1

    .line 3097
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3098
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3099
    goto/16 :goto_0

    .line 3084
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3085
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3086
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->removeAutomaticZenRule(Ljava/lang/String;)Z

    move-result v1

    .line 3087
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3088
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3089
    goto/16 :goto_0

    .line 3072
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3074
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule;

    .line 3075
    .local v1, "_arg1":Landroid/app/AutomaticZenRule;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3076
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result v2

    .line 3077
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3078
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3079
    goto/16 :goto_0

    .line 3060
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/app/AutomaticZenRule;
    .end local v2    # "_result":Z
    :pswitch_42
    sget-object v0, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AutomaticZenRule;

    .line 3062
    .local v0, "_arg0":Landroid/app/AutomaticZenRule;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3063
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3064
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3065
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3066
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3067
    goto/16 :goto_0

    .line 3052
    .end local v0    # "_arg0":Landroid/app/AutomaticZenRule;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_43
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenRules()Ljava/util/List;

    move-result-object v0

    .line 3053
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3054
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3055
    goto/16 :goto_0

    .line 3043
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3044
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3045
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v1

    .line 3046
    .local v1, "_result":Landroid/app/AutomaticZenRule;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3047
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3048
    goto/16 :goto_0

    .line 3030
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/app/AutomaticZenRule;
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3032
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3034
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3035
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3036
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 3037
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3038
    goto/16 :goto_0

    .line 3019
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3021
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3022
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3023
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 3024
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3025
    goto/16 :goto_0

    .line 3009
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3010
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3011
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v1

    .line 3012
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3013
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3014
    goto/16 :goto_0

    .line 2998
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3000
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager$Policy;

    .line 3001
    .local v1, "_arg1":Landroid/app/NotificationManager$Policy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3002
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V

    .line 3003
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3004
    goto/16 :goto_0

    .line 2988
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/app/NotificationManager$Policy;
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2989
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2990
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 2991
    .local v1, "_result":Landroid/app/NotificationManager$Policy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2992
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2993
    goto/16 :goto_0

    .line 2978
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/app/NotificationManager$Policy;
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2979
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2980
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z

    move-result v1

    .line 2981
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2982
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2983
    goto/16 :goto_0

    .line 2966
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2968
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 2970
    .local v1, "_arg1":Landroid/service/notification/IConditionProvider;
    sget-object v2, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/service/notification/Condition;

    .line 2971
    .local v2, "_arg2":[Landroid/service/notification/Condition;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2972
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V

    .line 2973
    goto/16 :goto_0

    .line 2954
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/service/notification/IConditionProvider;
    .end local v2    # "_arg2":[Landroid/service/notification/Condition;
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2956
    .local v0, "_arg0":I
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 2958
    .local v1, "_arg1":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2959
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2960
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 2961
    goto/16 :goto_0

    .line 2946
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_4d
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 2947
    .local v0, "_result":Landroid/app/NotificationManager$Policy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2948
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2949
    goto/16 :goto_0

    .line 2939
    .end local v0    # "_result":Landroid/app/NotificationManager$Policy;
    :pswitch_4e
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 2940
    .local v0, "_result":Landroid/service/notification/ZenModeConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2941
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2942
    goto/16 :goto_0

    .line 2932
    .end local v0    # "_result":Landroid/service/notification/ZenModeConfig;
    :pswitch_4f
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenMode()I

    move-result v0

    .line 2933
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2934
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2935
    goto/16 :goto_0

    .line 2921
    .end local v0    # "_result":I
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2923
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2924
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2925
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->hasEnabledNotificationListener(Ljava/lang/String;I)Z

    move-result v2

    .line 2926
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2927
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2928
    goto/16 :goto_0

    .line 2910
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2912
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2913
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2914
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->setNASMigrationDoneAndResetDefault(IZ)V

    .line 2915
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2916
    goto/16 :goto_0

    .line 2902
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_52
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getDefaultNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v0

    .line 2903
    .local v0, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2904
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2905
    goto/16 :goto_0

    .line 2895
    .end local v0    # "_result":Landroid/content/ComponentName;
    :pswitch_53
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v0

    .line 2896
    .restart local v0    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2897
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2898
    goto/16 :goto_0

    .line 2886
    .end local v0    # "_result":Landroid/content/ComponentName;
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2887
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2888
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getAllowedNotificationAssistantForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 2889
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2890
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2891
    goto/16 :goto_0

    .line 2876
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2877
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2878
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v1

    .line 2879
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2880
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2881
    goto/16 :goto_0

    .line 2868
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_56
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v0

    .line 2869
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2870
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2871
    goto/16 :goto_0

    .line 2856
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_57
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2858
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2860
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2861
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2862
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 2863
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2864
    goto/16 :goto_0

    .line 2841
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_58
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2843
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2845
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2847
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2848
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2849
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    .line 2850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2851
    goto/16 :goto_0

    .line 2830
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Z
    :pswitch_59
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2832
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2833
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2834
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    .line 2835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2836
    goto/16 :goto_0

    .line 2817
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Z
    :pswitch_5a
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2819
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2821
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2822
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2823
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V

    .line 2824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2825
    goto/16 :goto_0

    .line 2807
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :pswitch_5b
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2808
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2809
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2810
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2811
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2812
    goto/16 :goto_0

    .line 2795
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":Z
    :pswitch_5c
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2797
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2798
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2799
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 2800
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2801
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2802
    goto/16 :goto_0

    .line 2785
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_5d
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2786
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2787
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2788
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2789
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2790
    goto/16 :goto_0

    .line 2775
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":Z
    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2776
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2777
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 2778
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2779
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2780
    goto/16 :goto_0

    .line 2766
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 2767
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2768
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->cleanUpCallersAfter(J)V

    .line 2769
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2770
    goto/16 :goto_0

    .line 2756
    .end local v0    # "_arg0":J
    :pswitch_60
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 2757
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2758
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result v1

    .line 2759
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2760
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2761
    goto/16 :goto_0

    .line 2748
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Z
    :pswitch_61
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 2749
    .local v0, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2750
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2751
    goto/16 :goto_0

    .line 2738
    .end local v0    # "_result":Landroid/content/ComponentName;
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2740
    .local v0, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2741
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2742
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->unsnoozeNotificationFromSystemListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V

    .line 2743
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2744
    goto/16 :goto_0

    .line 2727
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2729
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2730
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2731
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V

    .line 2732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2733
    goto/16 :goto_0

    .line 2716
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2718
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    sget-object v1, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2719
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2720
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V

    .line 2721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2722
    goto/16 :goto_0

    .line 2705
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2707
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    sget-object v1, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/Adjustment;

    .line 2708
    .local v1, "_arg1":Landroid/service/notification/Adjustment;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2709
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 2710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2711
    goto/16 :goto_0

    .line 2694
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Landroid/service/notification/Adjustment;
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2696
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    sget-object v1, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/Adjustment;

    .line 2697
    .restart local v1    # "_arg1":Landroid/service/notification/Adjustment;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2698
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 2699
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2700
    goto/16 :goto_0

    .line 2680
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Landroid/service/notification/Adjustment;
    :pswitch_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2682
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2684
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 2685
    .local v2, "_arg2":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2686
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2687
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2688
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2689
    goto/16 :goto_0

    .line 2666
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2668
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2670
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 2671
    .restart local v2    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2672
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2673
    .restart local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2674
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2675
    goto/16 :goto_0

    .line 2651
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2653
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2655
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 2657
    .restart local v2    # "_arg2":Landroid/os/UserHandle;
    sget-object v3, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 2658
    .local v3, "_arg3":Landroid/app/NotificationChannel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2659
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V

    .line 2660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2661
    goto/16 :goto_0

    .line 2636
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    .end local v3    # "_arg3":Landroid/app/NotificationChannel;
    :pswitch_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2638
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2640
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 2642
    .restart local v2    # "_arg2":Landroid/os/UserHandle;
    sget-object v3, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 2643
    .local v3, "_arg3":Landroid/app/NotificationChannelGroup;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2644
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelGroupFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;)V

    .line 2645
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2646
    goto/16 :goto_0

    .line 2625
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    .end local v3    # "_arg3":Landroid/app/NotificationChannelGroup;
    :pswitch_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2627
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2628
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2629
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->setInterruptionFilter(Ljava/lang/String;I)V

    .line 2630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2631
    goto/16 :goto_0

    .line 2614
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2616
    .local v0, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2617
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2618
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 2619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2620
    goto/16 :goto_0

    .line 2604
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":I
    :pswitch_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2605
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2606
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v1

    .line 2607
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2608
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2609
    goto/16 :goto_0

    .line 2593
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_result":I
    :pswitch_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2595
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2596
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2597
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 2598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2599
    goto/16 :goto_0

    .line 2583
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":I
    :pswitch_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2584
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2585
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v1

    .line 2586
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2587
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2588
    goto/16 :goto_0

    .line 2572
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_result":I
    :pswitch_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2574
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2575
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2576
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 2577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2578
    goto/16 :goto_0

    .line 2563
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":I
    :pswitch_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2564
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2565
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->clearRequestedListenerHints(Landroid/service/notification/INotificationListener;)V

    .line 2566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2567
    goto/16 :goto_0

    .line 2551
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    :pswitch_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2553
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2554
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2555
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 2556
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2557
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2558
    goto/16 :goto_0

    .line 2537
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2539
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 2541
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2542
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2543
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2544
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2545
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2546
    goto/16 :goto_0

    .line 2526
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2528
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 2529
    .restart local v1    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2530
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 2531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2532
    goto/16 :goto_0

    .line 2517
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    .line 2518
    .local v0, "_arg0":Landroid/service/notification/IConditionProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2519
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V

    .line 2520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2521
    goto/16 :goto_0

    .line 2508
    .end local v0    # "_arg0":Landroid/service/notification/IConditionProvider;
    :pswitch_76
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2509
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2510
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->requestBindProvider(Landroid/content/ComponentName;)V

    .line 2511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2512
    goto/16 :goto_0

    .line 2499
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2500
    .local v0, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2501
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->requestUnbindListener(Landroid/service/notification/INotificationListener;)V

    .line 2502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2503
    goto/16 :goto_0

    .line 2490
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    :pswitch_78
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2491
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2492
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->requestBindListener(Landroid/content/ComponentName;)V

    .line 2493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2494
    goto/16 :goto_0

    .line 2477
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2479
    .local v0, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2481
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2482
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2483
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V

    .line 2484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2485
    goto/16 :goto_0

    .line 2464
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    :pswitch_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2466
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2468
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2469
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2470
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2472
    goto/16 :goto_0

    .line 2453
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2455
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 2456
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2457
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 2458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2459
    goto/16 :goto_0

    .line 2438
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2440
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2442
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2444
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2445
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2446
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2448
    goto/16 :goto_0

    .line 2427
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2429
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2430
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2431
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    .line 2432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2433
    goto/16 :goto_0

    .line 2414
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":I
    :pswitch_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    .line 2416
    .restart local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2418
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2419
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2420
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    .line 2421
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2422
    goto/16 :goto_0

    .line 2402
    .end local v0    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":I
    :pswitch_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2404
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2405
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2406
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->getNotificationHistory(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;

    move-result-object v2

    .line 2407
    .local v2, "_result":Landroid/app/NotificationHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2408
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2409
    goto/16 :goto_0

    .line 2386
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/app/NotificationHistory;
    :pswitch_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2388
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2390
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2392
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2393
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2394
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getHistoricalNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 2395
    .local v4, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2396
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2397
    goto/16 :goto_0

    .line 2372
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    .end local v4    # "_result":[Landroid/service/notification/StatusBarNotification;
    :pswitch_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2374
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2376
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2377
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2378
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->getHistoricalNotifications(Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 2379
    .local v3, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2380
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2381
    goto/16 :goto_0

    .line 2360
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":[Landroid/service/notification/StatusBarNotification;
    :pswitch_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2362
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2363
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2364
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->getActiveNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 2365
    .local v2, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2366
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2367
    goto/16 :goto_0

    .line 2350
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":[Landroid/service/notification/StatusBarNotification;
    :pswitch_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2351
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2352
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 2353
    .local v1, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2354
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2355
    goto/16 :goto_0

    .line 2343
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[Landroid/service/notification/StatusBarNotification;
    :pswitch_84
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->silenceNotificationSound()V

    .line 2344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2345
    goto/16 :goto_0

    .line 2332
    :pswitch_85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2334
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2335
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2336
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v2

    .line 2337
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2338
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2339
    goto/16 :goto_0

    .line 2319
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2321
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2323
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2324
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2325
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->deleteNotificationHistoryItem(Ljava/lang/String;IJ)V

    .line 2326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2327
    goto/16 :goto_0

    .line 2309
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :pswitch_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2310
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2311
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->isPackagePaused(Ljava/lang/String;)Z

    move-result v1

    .line 2312
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2313
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2314
    goto/16 :goto_0

    .line 2297
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2299
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2300
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2301
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 2302
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2303
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2304
    goto/16 :goto_0

    .line 2289
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_89
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->areChannelsBypassingDnd()Z

    move-result v0

    .line 2290
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2291
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2292
    goto/16 :goto_0

    .line 2278
    .end local v0    # "_result":Z
    :pswitch_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2280
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2281
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2282
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v2

    .line 2283
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2284
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2285
    goto/16 :goto_0

    .line 2268
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2269
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2270
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 2271
    .local v1, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2272
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2273
    goto/16 :goto_0

    .line 2256
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2258
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2259
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2260
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v2

    .line 2261
    .local v2, "_result":Landroid/app/NotificationChannelGroup;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2262
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2263
    goto/16 :goto_0

    .line 2245
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/app/NotificationChannelGroup;
    :pswitch_8d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2247
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2248
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2249
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2251
    goto/16 :goto_0

    .line 2233
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_8e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2235
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2236
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2237
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result v2

    .line 2238
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2239
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2240
    goto/16 :goto_0

    .line 2221
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2223
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2224
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2225
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result v2

    .line 2226
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2227
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2228
    goto/16 :goto_0

    .line 2207
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2209
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2211
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2212
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2213
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v3

    .line 2214
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2215
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2216
    goto/16 :goto_0

    .line 2193
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":I
    :pswitch_91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2195
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2197
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2198
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2199
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2200
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2201
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2202
    goto/16 :goto_0

    .line 2179
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2181
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2183
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2184
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2185
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2186
    .restart local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2187
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2188
    goto/16 :goto_0

    .line 2168
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2170
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2171
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2172
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2174
    goto/16 :goto_0

    .line 2150
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2152
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2154
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2156
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2158
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 2159
    .local v16, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2160
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 2161
    .local v0, "_result":Landroid/app/NotificationChannel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2162
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2163
    goto/16 :goto_0

    .line 2135
    .end local v0    # "_result":Landroid/app/NotificationChannel;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Z
    :pswitch_95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2137
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2139
    .local v1, "_arg1":I
    sget-object v2, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 2141
    .local v2, "_arg2":Landroid/app/NotificationChannel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2142
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2143
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->createConversationNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 2144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2145
    goto/16 :goto_0

    .line 2115
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/app/NotificationChannel;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2117
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2119
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2121
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2123
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 2125
    .local v17, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2126
    .restart local v18    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2127
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/INotificationManager$Stub;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 2128
    .local v0, "_result":Landroid/app/NotificationChannel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2129
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2130
    goto/16 :goto_0

    .line 2099
    .end local v0    # "_result":Landroid/app/NotificationChannel;
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2101
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2103
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2105
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2106
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2107
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v4

    .line 2108
    .local v4, "_result":Landroid/app/NotificationChannel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2109
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2110
    goto/16 :goto_0

    .line 2092
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Landroid/app/NotificationChannel;
    :pswitch_98
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->unlockAllNotificationChannels()V

    .line 2093
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2094
    goto/16 :goto_0

    .line 2080
    :pswitch_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2082
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2084
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2085
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2086
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->unlockNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V

    .line 2087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2088
    goto/16 :goto_0

    .line 2067
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2069
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2071
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 2072
    .local v2, "_arg2":Landroid/app/NotificationChannel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2073
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 2074
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2075
    goto/16 :goto_0

    .line 2054
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/app/NotificationChannel;
    :pswitch_9b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2056
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2058
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    .line 2059
    .local v2, "_arg2":Landroid/app/NotificationChannelGroup;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2060
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    .line 2061
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2062
    goto/16 :goto_0

    .line 2038
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/app/NotificationChannelGroup;
    :pswitch_9c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2040
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2042
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2044
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2045
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2046
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getPopulatedNotificationChannelGroupForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;

    move-result-object v4

    .line 2047
    .local v4, "_result":Landroid/app/NotificationChannelGroup;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2048
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2049
    goto/16 :goto_0

    .line 2024
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Z
    .end local v4    # "_result":Landroid/app/NotificationChannelGroup;
    :pswitch_9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2026
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2028
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2029
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2030
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v3

    .line 2031
    .local v3, "_result":Landroid/app/NotificationChannelGroup;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2032
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2033
    goto/16 :goto_0

    .line 2010
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/app/NotificationChannelGroup;
    :pswitch_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2012
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2014
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2015
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2016
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2017
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2018
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2019
    goto/16 :goto_0

    .line 1998
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_9f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2000
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2001
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2002
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->getConversationsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 2003
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2004
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2005
    goto/16 :goto_0

    .line 1988
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1989
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1990
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1991
    .local v1, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1992
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1993
    goto/16 :goto_0

    .line 1975
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1977
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1979
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 1980
    .local v2, "_arg2":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1981
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    .line 1982
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1983
    goto/16 :goto_0

    .line 1964
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/pm/ParceledListSlice;
    :pswitch_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1966
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 1967
    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1968
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 1969
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1970
    goto/16 :goto_0

    .line 1953
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :pswitch_a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1955
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 1956
    .restart local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1957
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 1958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1959
    goto/16 :goto_0

    .line 1941
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :pswitch_a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1943
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1944
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1945
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result v2

    .line 1946
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1947
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1948
    goto/16 :goto_0

    .line 1931
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_a5
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 1932
    .local v0, "_arg0":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1933
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->areBubblesEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    .line 1934
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1935
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1936
    goto/16 :goto_0

    .line 1921
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    .end local v1    # "_result":Z
    :pswitch_a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1922
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1923
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->areBubblesAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 1924
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1925
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1926
    goto/16 :goto_0

    .line 1908
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1910
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1912
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1913
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1914
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 1915
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1916
    goto/16 :goto_0

    .line 1899
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1900
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1901
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->setHideSilentStatusIcons(Z)V

    .line 1902
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1903
    goto/16 :goto_0

    .line 1889
    .end local v0    # "_arg0":Z
    :pswitch_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1890
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1891
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->shouldHideSilentStatusIcons(Ljava/lang/String;)Z

    move-result v1

    .line 1892
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1893
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1894
    goto/16 :goto_0

    .line 1880
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1881
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1882
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->disallowAssistantAdjustment(Ljava/lang/String;)V

    .line 1883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1884
    goto/16 :goto_0

    .line 1871
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1872
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1873
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->allowAssistantAdjustment(Ljava/lang/String;)V

    .line 1874
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1875
    goto/16 :goto_0

    .line 1861
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1862
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1863
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getAllowedAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1864
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1865
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1866
    goto/16 :goto_0

    .line 1849
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1851
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1852
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1853
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->isImportanceLocked(Ljava/lang/String;I)Z

    move-result v2

    .line 1854
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1855
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1856
    goto/16 :goto_0

    .line 1839
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1840
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1841
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->getPackageImportance(Ljava/lang/String;)I

    move-result v1

    .line 1842
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1843
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1844
    goto/16 :goto_0

    .line 1829
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1830
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1831
    invoke-virtual {v9, v0}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 1832
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1833
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1834
    goto/16 :goto_0

    .line 1817
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1819
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1820
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1821
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v2

    .line 1822
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1823
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1824
    goto/16 :goto_0

    .line 1804
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1806
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1808
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1809
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1810
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V

    .line 1811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1812
    goto/16 :goto_0

    .line 1791
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1793
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1795
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1796
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1797
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 1798
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1799
    goto/16 :goto_0

    .line 1779
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1781
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1782
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1783
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->hasSentValidBubble(Ljava/lang/String;I)Z

    move-result v2

    .line 1784
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1785
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1786
    goto/16 :goto_0

    .line 1766
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1768
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1770
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1771
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1772
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V

    .line 1773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    goto/16 :goto_0

    .line 1754
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1756
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1757
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1758
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z

    move-result v2

    .line 1759
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1760
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1761
    goto/16 :goto_0

    .line 1742
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1744
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1745
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1746
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result v2

    .line 1747
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1749
    goto/16 :goto_0

    .line 1730
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1732
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1733
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1734
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->hasSentValidMsg(Ljava/lang/String;I)Z

    move-result v2

    .line 1735
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1736
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1737
    goto/16 :goto_0

    .line 1718
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1720
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1721
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1722
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->canShowBadge(Ljava/lang/String;I)Z

    move-result v2

    .line 1723
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1724
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1725
    goto/16 :goto_0

    .line 1705
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1707
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1709
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1710
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1711
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setShowBadge(Ljava/lang/String;IZ)V

    .line 1712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1713
    goto/16 :goto_0

    .line 1693
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1695
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1696
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1697
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->isInCall(Ljava/lang/String;I)Z

    move-result v2

    .line 1698
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1699
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1700
    goto/16 :goto_0

    .line 1676
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1678
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1680
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1682
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1684
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1685
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1686
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1687
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1688
    goto/16 :goto_0

    .line 1657
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1659
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1661
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1663
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1665
    .local v16, "_arg3":I
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/Notification;

    .line 1667
    .local v17, "_arg4":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1668
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1669
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/INotificationManager$Stub;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 1670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1671
    goto/16 :goto_0

    .line 1646
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Landroid/app/Notification;
    .end local v18    # "_arg5":I
    :pswitch_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1648
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1649
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1650
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->finishToken(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1651
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1652
    goto/16 :goto_0

    .line 1635
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1637
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1638
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1639
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1641
    goto/16 :goto_0

    .line 1618
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_bf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1620
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1622
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v8

    .line 1624
    .local v8, "_arg2":Landroid/app/ITransientNotification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1626
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1627
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1628
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;II)V

    .line 1629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1630
    goto :goto_0

    .line 1599
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":Landroid/app/ITransientNotification;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1601
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 1603
    .local v8, "_arg1":Landroid/os/IBinder;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/CharSequence;

    .line 1605
    .local v15, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1607
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1609
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotificationCallback;

    move-result-object v18

    .line 1610
    .local v18, "_arg5":Landroid/app/ITransientNotificationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1611
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/INotificationManager$Stub;->enqueueTextToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IILandroid/app/ITransientNotificationCallback;)V

    .line 1612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1613
    goto :goto_0

    .line 1586
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/os/IBinder;
    .end local v15    # "_arg2":Ljava/lang/CharSequence;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/app/ITransientNotificationCallback;
    :pswitch_c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1588
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1590
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1591
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1592
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/INotificationManager$Stub;->clearData(Ljava/lang/String;IZ)V

    .line 1593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1594
    goto :goto_0

    .line 1575
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1577
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1578
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1579
    invoke-virtual {v9, v0, v1}, Landroid/app/INotificationManager$Stub;->cancelAllNotifications(Ljava/lang/String;I)V

    .line 1580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    nop

    .line 3872
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :goto_0
    return v14

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
