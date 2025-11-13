.class public abstract Landroid/app/IActivityManager$Stub;
.super Landroid/os/Binder;
.source "IActivityManager.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityManager"

.field static final greylist-max-o TRANSACTION_addInstrumentationResults:I = 0x26

.field static final blacklist TRANSACTION_addLongLiveApp:I = 0xea

.field static final blacklist TRANSACTION_addPackageData:I = 0x108

.field static final greylist-max-o TRANSACTION_addPackageDependency:I = 0x59

.field static final blacklist TRANSACTION_appNotResponding:I = 0xd3

.field static final greylist-max-o TRANSACTION_appNotRespondingViaProvider:I = 0xa1

.field static final greylist-max-o TRANSACTION_attachApplication:I = 0x13

.field static final blacklist TRANSACTION_backgroundAllowlistUid:I = 0xcc

.field static final greylist-max-o TRANSACTION_backupAgentCreated:I = 0x56

.field static final greylist-max-o TRANSACTION_bindBackupAgent:I = 0x55

.field static final greylist-max-o TRANSACTION_bindService:I = 0x1d

.field static final blacklist TRANSACTION_bindServiceInstance:I = 0x1e

.field static final greylist-max-o TRANSACTION_bootAnimationComplete:I = 0xaa

.field static final greylist-max-o TRANSACTION_broadcastIntent:I = 0xf

.field static final blacklist TRANSACTION_broadcastIntentWithFeature:I = 0x10

.field static final blacklist TRANSACTION_canRestrict:I = 0xfb

.field static final greylist-max-o TRANSACTION_cancelIntentSender:I = 0x39

.field static final greylist-max-o TRANSACTION_cancelTaskWindowTransition:I = 0xc8

.field static final greylist-max-o TRANSACTION_checkPermission:I = 0x6

.field static final blacklist TRANSACTION_checkProfileForADCP:I = 0xf8

.field static final greylist-max-o TRANSACTION_checkUriPermission:I = 0x2e

.field static final blacklist TRANSACTION_checkUriPermissions:I = 0x2f

.field static final greylist-max-o TRANSACTION_clearApplicationUserData:I = 0x48

.field static final blacklist TRANSACTION_clearLongLiveTask:I = 0xee

.field static final blacklist TRANSACTION_clearRestrictionInfo:I = 0x101

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x5b

.field static final blacklist TRANSACTION_closeSystemDialogsInDisplay:I = 0x5c

.field static final blacklist TRANSACTION_crashApplicationWithType:I = 0x66

.field static final blacklist TRANSACTION_crashApplicationWithTypeWithExtras:I = 0x67

.field static final blacklist TRANSACTION_dismissUserSwitchingDialog:I = 0xf6

.field static final greylist-max-o TRANSACTION_dumpHeap:I = 0x6a

.field static final greylist-max-o TRANSACTION_dumpHeapFinished:I = 0xb2

.field static final blacklist TRANSACTION_enableAppFreezer:I = 0xdc

.field static final blacklist TRANSACTION_enableBinderTracing:I = 0xb9

.field static final blacklist TRANSACTION_enableFgsNotificationRateLimit:I = 0xdd

.field static final greylist-max-o TRANSACTION_enterSafeMode:I = 0x3d

.field static final greylist-max-o TRANSACTION_finishActivity:I = 0xb

.field static final greylist-max-o TRANSACTION_finishHeavyWeightApp:I = 0x63

.field static final greylist-max-o TRANSACTION_finishInstrumentation:I = 0x27

.field static final greylist-max-o TRANSACTION_finishReceiver:I = 0x12

.field static final greylist-max-o TRANSACTION_forceStopPackage:I = 0x4b

.field static final blacklist TRANSACTION_forceStopPackageByAdmin:I = 0x4c

.field static final blacklist TRANSACTION_getAllRestrictedList:I = 0xfe

.field static final blacklist TRANSACTION_getAllRootTaskInfos:I = 0x9b

.field static final blacklist TRANSACTION_getAutoRemoveRecents:I = 0xf2

.field static final blacklist TRANSACTION_getBackgroundRestrictionExemptionReason:I = 0xe4

.field static final blacklist TRANSACTION_getBugreportWhitelistedPackages:I = 0x95

.field static final greylist-max-o TRANSACTION_getConfiguration:I = 0x28

.field static final greylist-max-o TRANSACTION_getContentProvider:I = 0x17

.field static final greylist-max-o TRANSACTION_getContentProviderExternal:I = 0x7a

.field static final greylist-max-o TRANSACTION_getCurrentUser:I = 0x7f

.field static final blacklist TRANSACTION_getCurrentUserId:I = 0x80

.field static final blacklist TRANSACTION_getDelegatedShellPermissions:I = 0xd0

.field static final blacklist TRANSACTION_getFocusedRootTaskInfo:I = 0x9e

.field static final blacklist TRANSACTION_getForegroundServiceType:I = 0x44

.field static final blacklist TRANSACTION_getGlobalConfiguration:I = 0xf7

.field static final blacklist TRANSACTION_getHistoricalProcessExitReasons:I = 0xd4

.field static final blacklist TRANSACTION_getInfoForIntentSender:I = 0x3a

.field static final greylist-max-o TRANSACTION_getIntentForIntentSender:I = 0x96

.field static final greylist-max-o TRANSACTION_getIntentSender:I = 0x37

.field static final blacklist TRANSACTION_getIntentSenderWithFeature:I = 0x38

.field static final blacklist TRANSACTION_getIsolatedProcessList:I = 0x110

.field static final greylist-max-o TRANSACTION_getLaunchedFromPackage:I = 0x97

.field static final greylist-max-o TRANSACTION_getLaunchedFromUid:I = 0x81

.field static final blacklist TRANSACTION_getLifeMonitor:I = 0xd1

.field static final greylist-max-o TRANSACTION_getLockTaskModeState:I = 0xb0

.field static final blacklist TRANSACTION_getLongLiveApp:I = 0xf5

.field static final blacklist TRANSACTION_getLongLiveApps:I = 0xe9

.field static final blacklist TRANSACTION_getLongLiveProcesses:I = 0xef

.field static final blacklist TRANSACTION_getLongLiveProcessesForUser:I = 0xf0

.field static final blacklist TRANSACTION_getLongLiveTaskIdsForUser:I = 0xf1

.field static final blacklist TRANSACTION_getMaxLongLiveApps:I = 0xec

.field static final greylist-max-o TRANSACTION_getMemoryInfo:I = 0x46

.field static final greylist-max-o TRANSACTION_getMemoryTrimLevel:I = 0xbe

.field static final greylist-max-o TRANSACTION_getMyMemoryState:I = 0x7d

.field static final blacklist TRANSACTION_getPackageFromAppProcesses:I = 0x104

.field static final greylist-max-o TRANSACTION_getPackageProcessState:I = 0xb6

.field static final greylist-max-o TRANSACTION_getProcessLimit:I = 0x2d

.field static final greylist-max-o TRANSACTION_getProcessMemoryInfo:I = 0x5d

.field static final greylist-max-o TRANSACTION_getProcessPss:I = 0x77

.field static final greylist-max-o TRANSACTION_getProcessesInErrorState:I = 0x47

.field static final greylist-max-o TRANSACTION_getProviderMimeType:I = 0x68

.field static final blacklist TRANSACTION_getProviderMimeTypeAsync:I = 0x69

.field static final greylist-max-o TRANSACTION_getRecentTasks:I = 0x35

.field static final blacklist TRANSACTION_getRequestedOrientationByTaskId:I = 0xe8

.field static final blacklist TRANSACTION_getRestrictableList:I = 0xfd

.field static final blacklist TRANSACTION_getRestrictedList:I = 0xff

.field static final blacklist TRANSACTION_getRestrictionInfo:I = 0xfa

.field static final greylist-max-o TRANSACTION_getRunningAppProcesses:I = 0x4f

.field static final greylist-max-o TRANSACTION_getRunningExternalApplications:I = 0x62

.field static final greylist-max-o TRANSACTION_getRunningServiceControlPanel:I = 0x1a

.field static final greylist-max-o TRANSACTION_getRunningUserIds:I = 0x8a

.field static final blacklist TRANSACTION_getScalingFactor:I = 0x10b

.field static final greylist-max-o TRANSACTION_getServices:I = 0x4e

.field static final blacklist TRANSACTION_getSwitchingFromUserMessage:I = 0x6e

.field static final blacklist TRANSACTION_getSwitchingToUserMessage:I = 0x6f

.field static final greylist-max-o TRANSACTION_getTagForIntentSender:I = 0xa4

.field static final greylist-max-o TRANSACTION_getTaskBounds:I = 0xa2

.field static final greylist-max-o TRANSACTION_getTaskForActivity:I = 0x16

.field static final greylist-max-o TRANSACTION_getTasks:I = 0x14

.field static final blacklist TRANSACTION_getUidProcessCapabilities:I = 0xe2

.field static final greylist-max-o TRANSACTION_getUidProcessState:I = 0x5

.field static final greylist-max-o TRANSACTION_grantUriPermission:I = 0x30

.field static final greylist-max-o TRANSACTION_handleApplicationCrash:I = 0x7

.field static final greylist-max-o TRANSACTION_handleApplicationStrictModeViolation:I = 0x64

.field static final greylist-max-o TRANSACTION_handleApplicationWtf:I = 0x5f

.field static final greylist-max-o TRANSACTION_handleIncomingUser:I = 0x58

.field static final greylist-max-o TRANSACTION_hang:I = 0x9a

.field static final blacklist TRANSACTION_holdLock:I = 0xde

.field static final blacklist TRANSACTION_isAppFreezerEnabled:I = 0xd9

.field static final blacklist TRANSACTION_isAppFreezerSupported:I = 0xd8

.field static final greylist-max-o TRANSACTION_isBackgroundRestricted:I = 0xc4

.field static final blacklist TRANSACTION_isFreezableUid:I = 0x10e

.field static final greylist-max-o TRANSACTION_isInLockTaskMode:I = 0xa6

.field static final greylist-max-o TRANSACTION_isIntentSenderAnActivity:I = 0x83

.field static final greylist-max-o TRANSACTION_isIntentSenderTargetedToPackage:I = 0x74

.field static final blacklist TRANSACTION_isScaledApp:I = 0x109

.field static final blacklist TRANSACTION_isScaledAppByPackageName:I = 0x10a

.field static final greylist-max-o TRANSACTION_isTopActivityImmersive:I = 0x65

.field static final greylist-max-o TRANSACTION_isTopOfTask:I = 0xa9

.field static final greylist-max-o TRANSACTION_isUidActive:I = 0x4

.field static final greylist-max-o TRANSACTION_isUserAMonkey:I = 0x61

.field static final greylist-max-o TRANSACTION_isUserRunning:I = 0x6b

.field static final greylist-max-o TRANSACTION_isVrModePackageEnabled:I = 0xbf

.field static final greylist-max-o TRANSACTION_killAllBackgroundProcesses:I = 0x79

.field static final greylist-max-o TRANSACTION_killApplication:I = 0x5a

.field static final greylist-max-o TRANSACTION_killApplicationProcess:I = 0x5e

.field static final greylist-max-o TRANSACTION_killBackgroundProcesses:I = 0x60

.field static final greylist-max-o TRANSACTION_killPackageDependents:I = 0xbc

.field static final greylist-max-o TRANSACTION_killPids:I = 0x4d

.field static final greylist-max-o TRANSACTION_killProcessesBelowForeground:I = 0x7e

.field static final blacklist TRANSACTION_killProcessesWhenImperceptible:I = 0xd5

.field static final greylist-max-o TRANSACTION_killUid:I = 0x98

.field static final blacklist TRANSACTION_killUidForPermissionChange:I = 0xda

.field static final blacklist TRANSACTION_launchBugReportHandlerApp:I = 0x94

.field static final greylist-max-o TRANSACTION_makePackageIdle:I = 0xbd

.field static final greylist-max-o TRANSACTION_moveActivityTaskToBack:I = 0x45

.field static final blacklist TRANSACTION_moveTaskToBack:I = 0xe6

.field static final blacklist TRANSACTION_moveTaskToBackWithBundle:I = 0xe7

.field static final greylist-max-o TRANSACTION_moveTaskToFront:I = 0x15

.field static final blacklist TRANSACTION_moveTaskToRootTask:I = 0x9c

.field static final greylist-max-o TRANSACTION_noteAlarmFinish:I = 0xb5

.field static final greylist-max-o TRANSACTION_noteAlarmStart:I = 0xb4

.field static final greylist-max-o TRANSACTION_noteWakeupAlarm:I = 0x3e

.field static final greylist-max-o TRANSACTION_notifyCleartextNetwork:I = 0xad

.field static final greylist-max-o TRANSACTION_notifyLockedProfile:I = 0xc0

.field static final greylist-max-o TRANSACTION_openContentUri:I = 0x1

.field static final greylist-max-o TRANSACTION_peekService:I = 0x50

.field static final greylist-max-o TRANSACTION_performIdleMaintenance:I = 0xa0

.field static final blacklist TRANSACTION_preloadBoosterAppsFromIpm:I = 0xf9

.field static final greylist-max-o TRANSACTION_profileControl:I = 0x51

.field static final greylist-max-o TRANSACTION_publishContentProviders:I = 0x18

.field static final greylist-max-o TRANSACTION_publishService:I = 0x21

.field static final blacklist TRANSACTION_queryIntentComponentsForIntentSender:I = 0xe1

.field static final blacklist TRANSACTION_queryRegisteredReceiverPackages:I = 0xe5

.field static final greylist-max-o TRANSACTION_refContentProvider:I = 0x19

.field static final blacklist TRANSACTION_registerDedicatedCallback:I = 0xf3

.field static final blacklist TRANSACTION_registerForegroundServiceObserver:I = 0x4a

.field static final blacklist TRANSACTION_registerIntentSenderCancelListenerEx:I = 0x3b

.field static final greylist-max-o TRANSACTION_registerProcessObserver:I = 0x72

.field static final greylist-max-o TRANSACTION_registerReceiver:I = 0xc

.field static final blacklist TRANSACTION_registerReceiverWithFeature:I = 0xd

.field static final greylist-max-o TRANSACTION_registerTaskStackListener:I = 0xab

.field static final greylist-max-o TRANSACTION_registerUidObserver:I = 0x2

.field static final greylist-max-o TRANSACTION_registerUserSwitchObserver:I = 0x88

.field static final greylist-max-o TRANSACTION_removeContentProvider:I = 0x3f

.field static final greylist-max-o TRANSACTION_removeContentProviderExternal:I = 0x7b

.field static final blacklist TRANSACTION_removeContentProviderExternalAsUser:I = 0x7c

.field static final blacklist TRANSACTION_removeLongLiveApp:I = 0xeb

.field static final greylist-max-o TRANSACTION_removeTask:I = 0x71

.field static final blacklist TRANSACTION_reportAbnormalUsage:I = 0x105

.field static final greylist-max-o TRANSACTION_requestBugReport:I = 0x8c

.field static final blacklist TRANSACTION_requestBugReportWithDescription:I = 0x8d

.field static final blacklist TRANSACTION_requestFullBugReport:I = 0x92

.field static final blacklist TRANSACTION_requestInteractiveBugReport:I = 0x91

.field static final blacklist TRANSACTION_requestInteractiveBugReportWithDescription:I = 0x90

.field static final blacklist TRANSACTION_requestRemoteBugReport:I = 0x93

.field static final blacklist TRANSACTION_requestSystemServerHeapDump:I = 0x8b

.field static final greylist-max-o TRANSACTION_requestTelephonyBugReport:I = 0x8e

.field static final greylist-max-o TRANSACTION_requestWifiBugReport:I = 0x8f

.field static final blacklist TRANSACTION_resetAbnormalList:I = 0x10d

.field static final blacklist TRANSACTION_resetAppErrors:I = 0xdb

.field static final greylist-max-o TRANSACTION_resizeTask:I = 0xaf

.field static final greylist-max-o TRANSACTION_restart:I = 0x9f

.field static final greylist-max-o TRANSACTION_restartUserInBackground:I = 0xc7

.field static final blacklist TRANSACTION_restrict:I = 0xfc

.field static final greylist-max-o TRANSACTION_resumeAppSwitches:I = 0x54

.field static final greylist-max-o TRANSACTION_revokeUriPermission:I = 0x31

.field static final greylist-max-o TRANSACTION_scheduleApplicationInfoChanged:I = 0xc9

.field static final greylist-max-o TRANSACTION_sendIdleJobTrigger:I = 0xc2

.field static final greylist-max-o TRANSACTION_sendIntentSender:I = 0xc3

.field static final greylist-max-o TRANSACTION_serviceDoneExecuting:I = 0x36

.field static final greylist-max-o TRANSACTION_setActivityController:I = 0x32

.field static final blacklist TRANSACTION_setActivityLocusContext:I = 0xd6

.field static final greylist-max-o TRANSACTION_setAgentApp:I = 0x23

.field static final greylist-max-o TRANSACTION_setAlwaysFinish:I = 0x24

.field static final greylist-max-o TRANSACTION_setDebugApp:I = 0x22

.field static final blacklist TRANSACTION_setDssForPackage:I = 0x106

.field static final greylist-max-o TRANSACTION_setDumpHeapDebugLimit:I = 0xb1

.field static final blacklist TRANSACTION_setFGSFilter:I = 0x10c

.field static final blacklist TRANSACTION_setFocusedRootTask:I = 0x9d

.field static final greylist-max-o TRANSACTION_setHasTopUi:I = 0xc6

.field static final blacklist TRANSACTION_setLongLiveApp:I = 0xf4

.field static final blacklist TRANSACTION_setLongLiveTask:I = 0xed

.field static final greylist-max-o TRANSACTION_setPackageScreenCompatMode:I = 0x6c

.field static final greylist-max-o TRANSACTION_setPersistentVrThread:I = 0xca

.field static final greylist-max-o TRANSACTION_setProcessImportant:I = 0x42

.field static final greylist-max-o TRANSACTION_setProcessLimit:I = 0x2c

.field static final greylist-max-o TRANSACTION_setProcessMemoryTrimLevel:I = 0xa3

.field static final blacklist TRANSACTION_setProcessSlowdown:I = 0x10f

.field static final blacklist TRANSACTION_setProcessStateSummary:I = 0xd7

.field static final greylist-max-o TRANSACTION_setRenderThread:I = 0xc5

.field static final greylist-max-o TRANSACTION_setRequestedOrientation:I = 0x40

.field static final greylist-max-o TRANSACTION_setServiceForeground:I = 0x43

.field static final blacklist TRANSACTION_setStopUserOnSwitch:I = 0x70

.field static final blacklist TRANSACTION_setTTSPkgInfo:I = 0x102

.field static final greylist-max-o TRANSACTION_setTaskResizeable:I = 0xae

.field static final greylist-max-o TRANSACTION_setUserIsMonkey:I = 0x99

.field static final blacklist TRANSACTION_showAllDSSInfo:I = 0x107

.field static final greylist-max-o TRANSACTION_showBootMessage:I = 0x78

.field static final greylist-max-o TRANSACTION_showWaitingForDebugger:I = 0x33

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x52

.field static final greylist-max-o TRANSACTION_signalPersistentProcesses:I = 0x34

.field static final greylist-max-o TRANSACTION_startActivity:I = 0x8

.field static final greylist-max-o TRANSACTION_startActivityAsUser:I = 0x84

.field static final blacklist TRANSACTION_startActivityAsUserWithFeature:I = 0x85

.field static final greylist-max-o TRANSACTION_startActivityFromRecents:I = 0xa7

.field static final blacklist TRANSACTION_startActivityWithFeature:I = 0x9

.field static final greylist-max-o TRANSACTION_startBinderTracking:I = 0xb7

.field static final greylist-max-o TRANSACTION_startConfirmDeviceCredentialIntent:I = 0xc1

.field static final blacklist TRANSACTION_startDelegateShellPermissionIdentity:I = 0xce

.field static final greylist-max-o TRANSACTION_startInstrumentation:I = 0x25

.field static final blacklist TRANSACTION_startProfile:I = 0xdf

.field static final greylist-max-o TRANSACTION_startService:I = 0x1b

.field static final greylist-max-o TRANSACTION_startSystemLockTaskMode:I = 0xa8

.field static final greylist-max-o TRANSACTION_startUserInBackground:I = 0xa5

.field static final greylist-max-o TRANSACTION_startUserInBackgroundWithListener:I = 0xcd

.field static final blacklist TRANSACTION_startUserInForegroundWithListener:I = 0xd2

.field static final blacklist TRANSACTION_stopAppForUser:I = 0x49

.field static final greylist-max-o TRANSACTION_stopAppSwitches:I = 0x53

.field static final greylist-max-o TRANSACTION_stopBinderTrackingAndDump:I = 0xb8

.field static final blacklist TRANSACTION_stopDelegateShellPermissionIdentity:I = 0xcf

.field static final blacklist TRANSACTION_stopProfile:I = 0xe0

.field static final greylist-max-o TRANSACTION_stopService:I = 0x1c

.field static final greylist-max-o TRANSACTION_stopServiceToken:I = 0x2b

.field static final greylist-max-o TRANSACTION_stopUser:I = 0x86

.field static final blacklist TRANSACTION_stopUserWithDelayedLocking:I = 0x87

.field static final greylist-max-o TRANSACTION_suppressResizeConfigChanges:I = 0xba

.field static final greylist-max-o TRANSACTION_switchUser:I = 0x6d

.field static final greylist-max-o TRANSACTION_unbindBackupAgent:I = 0x57

.field static final greylist-max-o TRANSACTION_unbindFinished:I = 0x41

.field static final greylist-max-o TRANSACTION_unbindService:I = 0x20

.field static final greylist-max-o TRANSACTION_unbroadcastIntent:I = 0x11

.field static final greylist-max-o TRANSACTION_unhandledBack:I = 0xa

.field static final greylist-max-o TRANSACTION_unlockUser:I = 0xbb

.field static final greylist-max-o TRANSACTION_unregisterIntentSenderCancelListener:I = 0x3c

.field static final greylist-max-o TRANSACTION_unregisterProcessObserver:I = 0x73

.field static final greylist-max-o TRANSACTION_unregisterReceiver:I = 0xe

.field static final greylist-max-o TRANSACTION_unregisterTaskStackListener:I = 0xac

.field static final greylist-max-o TRANSACTION_unregisterUidObserver:I = 0x3

.field static final greylist-max-o TRANSACTION_unregisterUserSwitchObserver:I = 0x89

.field static final greylist-max-o TRANSACTION_unstableProviderDied:I = 0x82

.field static final greylist-max-o TRANSACTION_updateConfiguration:I = 0x29

.field static final greylist-max-o TRANSACTION_updateLockTaskPackages:I = 0xb3

.field static final blacklist TRANSACTION_updateMccMncConfiguration:I = 0x2a

.field static final greylist-max-o TRANSACTION_updatePersistentConfiguration:I = 0x75

.field static final blacklist TRANSACTION_updatePersistentConfigurationAndLocaleOverlays:I = 0x103

.field static final blacklist TRANSACTION_updatePersistentConfigurationWithAttribution:I = 0x76

.field static final blacklist TRANSACTION_updateRestrictionInfo:I = 0x100

.field static final blacklist TRANSACTION_updateServiceGroup:I = 0x1f

.field static final blacklist TRANSACTION_waitForBroadcastIdle:I = 0xe3

.field static final greylist-max-o TRANSACTION_waitForNetworkStateUpdate:I = 0xcb


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 1290
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1291
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1292
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1299
    if-nez p0, :cond_0

    .line 1300
    const/4 v0, 0x0

    return-object v0

    .line 1302
    :cond_0
    const-string v0, "android.app.IActivityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1303
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IActivityManager;

    if-eqz v1, :cond_1

    .line 1304
    move-object v1, v0

    check-cast v1, Landroid/app/IActivityManager;

    return-object v1

    .line 1306
    :cond_1
    new-instance v1, Landroid/app/IActivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 1315
    packed-switch p0, :pswitch_data_0

    .line 2407
    const/4 v0, 0x0

    return-object v0

    .line 2403
    :pswitch_0
    const-string v0, "getIsolatedProcessList"

    return-object v0

    .line 2399
    :pswitch_1
    const-string/jumbo v0, "setProcessSlowdown"

    return-object v0

    .line 2395
    :pswitch_2
    const-string v0, "isFreezableUid"

    return-object v0

    .line 2391
    :pswitch_3
    const-string/jumbo v0, "resetAbnormalList"

    return-object v0

    .line 2387
    :pswitch_4
    const-string/jumbo v0, "setFGSFilter"

    return-object v0

    .line 2383
    :pswitch_5
    const-string v0, "getScalingFactor"

    return-object v0

    .line 2379
    :pswitch_6
    const-string v0, "isScaledAppByPackageName"

    return-object v0

    .line 2375
    :pswitch_7
    const-string v0, "isScaledApp"

    return-object v0

    .line 2371
    :pswitch_8
    const-string v0, "addPackageData"

    return-object v0

    .line 2367
    :pswitch_9
    const-string/jumbo v0, "showAllDSSInfo"

    return-object v0

    .line 2363
    :pswitch_a
    const-string/jumbo v0, "setDssForPackage"

    return-object v0

    .line 2359
    :pswitch_b
    const-string/jumbo v0, "reportAbnormalUsage"

    return-object v0

    .line 2355
    :pswitch_c
    const-string v0, "getPackageFromAppProcesses"

    return-object v0

    .line 2351
    :pswitch_d
    const-string/jumbo v0, "updatePersistentConfigurationAndLocaleOverlays"

    return-object v0

    .line 2347
    :pswitch_e
    const-string/jumbo v0, "setTTSPkgInfo"

    return-object v0

    .line 2343
    :pswitch_f
    const-string v0, "clearRestrictionInfo"

    return-object v0

    .line 2339
    :pswitch_10
    const-string/jumbo v0, "updateRestrictionInfo"

    return-object v0

    .line 2335
    :pswitch_11
    const-string v0, "getRestrictedList"

    return-object v0

    .line 2331
    :pswitch_12
    const-string v0, "getAllRestrictedList"

    return-object v0

    .line 2327
    :pswitch_13
    const-string v0, "getRestrictableList"

    return-object v0

    .line 2323
    :pswitch_14
    const-string/jumbo v0, "restrict"

    return-object v0

    .line 2319
    :pswitch_15
    const-string v0, "canRestrict"

    return-object v0

    .line 2315
    :pswitch_16
    const-string v0, "getRestrictionInfo"

    return-object v0

    .line 2311
    :pswitch_17
    const-string/jumbo v0, "preloadBoosterAppsFromIpm"

    return-object v0

    .line 2307
    :pswitch_18
    const-string v0, "checkProfileForADCP"

    return-object v0

    .line 2303
    :pswitch_19
    const-string v0, "getGlobalConfiguration"

    return-object v0

    .line 2299
    :pswitch_1a
    const-string v0, "dismissUserSwitchingDialog"

    return-object v0

    .line 2295
    :pswitch_1b
    const-string v0, "getLongLiveApp"

    return-object v0

    .line 2291
    :pswitch_1c
    const-string/jumbo v0, "setLongLiveApp"

    return-object v0

    .line 2287
    :pswitch_1d
    const-string/jumbo v0, "registerDedicatedCallback"

    return-object v0

    .line 2283
    :pswitch_1e
    const-string v0, "getAutoRemoveRecents"

    return-object v0

    .line 2279
    :pswitch_1f
    const-string v0, "getLongLiveTaskIdsForUser"

    return-object v0

    .line 2275
    :pswitch_20
    const-string v0, "getLongLiveProcessesForUser"

    return-object v0

    .line 2271
    :pswitch_21
    const-string v0, "getLongLiveProcesses"

    return-object v0

    .line 2267
    :pswitch_22
    const-string v0, "clearLongLiveTask"

    return-object v0

    .line 2263
    :pswitch_23
    const-string/jumbo v0, "setLongLiveTask"

    return-object v0

    .line 2259
    :pswitch_24
    const-string v0, "getMaxLongLiveApps"

    return-object v0

    .line 2255
    :pswitch_25
    const-string/jumbo v0, "removeLongLiveApp"

    return-object v0

    .line 2251
    :pswitch_26
    const-string v0, "addLongLiveApp"

    return-object v0

    .line 2247
    :pswitch_27
    const-string v0, "getLongLiveApps"

    return-object v0

    .line 2243
    :pswitch_28
    const-string v0, "getRequestedOrientationByTaskId"

    return-object v0

    .line 2239
    :pswitch_29
    const-string/jumbo v0, "moveTaskToBackWithBundle"

    return-object v0

    .line 2235
    :pswitch_2a
    const-string/jumbo v0, "moveTaskToBack"

    return-object v0

    .line 2231
    :pswitch_2b
    const-string/jumbo v0, "queryRegisteredReceiverPackages"

    return-object v0

    .line 2227
    :pswitch_2c
    const-string v0, "getBackgroundRestrictionExemptionReason"

    return-object v0

    .line 2223
    :pswitch_2d
    const-string/jumbo v0, "waitForBroadcastIdle"

    return-object v0

    .line 2219
    :pswitch_2e
    const-string v0, "getUidProcessCapabilities"

    return-object v0

    .line 2215
    :pswitch_2f
    const-string/jumbo v0, "queryIntentComponentsForIntentSender"

    return-object v0

    .line 2211
    :pswitch_30
    const-string/jumbo v0, "stopProfile"

    return-object v0

    .line 2207
    :pswitch_31
    const-string/jumbo v0, "startProfile"

    return-object v0

    .line 2203
    :pswitch_32
    const-string v0, "holdLock"

    return-object v0

    .line 2199
    :pswitch_33
    const-string v0, "enableFgsNotificationRateLimit"

    return-object v0

    .line 2195
    :pswitch_34
    const-string v0, "enableAppFreezer"

    return-object v0

    .line 2191
    :pswitch_35
    const-string/jumbo v0, "resetAppErrors"

    return-object v0

    .line 2187
    :pswitch_36
    const-string v0, "killUidForPermissionChange"

    return-object v0

    .line 2183
    :pswitch_37
    const-string v0, "isAppFreezerEnabled"

    return-object v0

    .line 2179
    :pswitch_38
    const-string v0, "isAppFreezerSupported"

    return-object v0

    .line 2175
    :pswitch_39
    const-string/jumbo v0, "setProcessStateSummary"

    return-object v0

    .line 2171
    :pswitch_3a
    const-string/jumbo v0, "setActivityLocusContext"

    return-object v0

    .line 2167
    :pswitch_3b
    const-string v0, "killProcessesWhenImperceptible"

    return-object v0

    .line 2163
    :pswitch_3c
    const-string v0, "getHistoricalProcessExitReasons"

    return-object v0

    .line 2159
    :pswitch_3d
    const-string v0, "appNotResponding"

    return-object v0

    .line 2155
    :pswitch_3e
    const-string/jumbo v0, "startUserInForegroundWithListener"

    return-object v0

    .line 2151
    :pswitch_3f
    const-string v0, "getLifeMonitor"

    return-object v0

    .line 2147
    :pswitch_40
    const-string v0, "getDelegatedShellPermissions"

    return-object v0

    .line 2143
    :pswitch_41
    const-string/jumbo v0, "stopDelegateShellPermissionIdentity"

    return-object v0

    .line 2139
    :pswitch_42
    const-string/jumbo v0, "startDelegateShellPermissionIdentity"

    return-object v0

    .line 2135
    :pswitch_43
    const-string/jumbo v0, "startUserInBackgroundWithListener"

    return-object v0

    .line 2131
    :pswitch_44
    const-string v0, "backgroundAllowlistUid"

    return-object v0

    .line 2127
    :pswitch_45
    const-string/jumbo v0, "waitForNetworkStateUpdate"

    return-object v0

    .line 2123
    :pswitch_46
    const-string/jumbo v0, "setPersistentVrThread"

    return-object v0

    .line 2119
    :pswitch_47
    const-string/jumbo v0, "scheduleApplicationInfoChanged"

    return-object v0

    .line 2115
    :pswitch_48
    const-string v0, "cancelTaskWindowTransition"

    return-object v0

    .line 2111
    :pswitch_49
    const-string/jumbo v0, "restartUserInBackground"

    return-object v0

    .line 2107
    :pswitch_4a
    const-string/jumbo v0, "setHasTopUi"

    return-object v0

    .line 2103
    :pswitch_4b
    const-string/jumbo v0, "setRenderThread"

    return-object v0

    .line 2099
    :pswitch_4c
    const-string v0, "isBackgroundRestricted"

    return-object v0

    .line 2095
    :pswitch_4d
    const-string/jumbo v0, "sendIntentSender"

    return-object v0

    .line 2091
    :pswitch_4e
    const-string/jumbo v0, "sendIdleJobTrigger"

    return-object v0

    .line 2087
    :pswitch_4f
    const-string/jumbo v0, "startConfirmDeviceCredentialIntent"

    return-object v0

    .line 2083
    :pswitch_50
    const-string/jumbo v0, "notifyLockedProfile"

    return-object v0

    .line 2079
    :pswitch_51
    const-string v0, "isVrModePackageEnabled"

    return-object v0

    .line 2075
    :pswitch_52
    const-string v0, "getMemoryTrimLevel"

    return-object v0

    .line 2071
    :pswitch_53
    const-string/jumbo v0, "makePackageIdle"

    return-object v0

    .line 2067
    :pswitch_54
    const-string v0, "killPackageDependents"

    return-object v0

    .line 2063
    :pswitch_55
    const-string/jumbo v0, "unlockUser"

    return-object v0

    .line 2059
    :pswitch_56
    const-string/jumbo v0, "suppressResizeConfigChanges"

    return-object v0

    .line 2055
    :pswitch_57
    const-string v0, "enableBinderTracing"

    return-object v0

    .line 2051
    :pswitch_58
    const-string/jumbo v0, "stopBinderTrackingAndDump"

    return-object v0

    .line 2047
    :pswitch_59
    const-string/jumbo v0, "startBinderTracking"

    return-object v0

    .line 2043
    :pswitch_5a
    const-string v0, "getPackageProcessState"

    return-object v0

    .line 2039
    :pswitch_5b
    const-string/jumbo v0, "noteAlarmFinish"

    return-object v0

    .line 2035
    :pswitch_5c
    const-string/jumbo v0, "noteAlarmStart"

    return-object v0

    .line 2031
    :pswitch_5d
    const-string/jumbo v0, "updateLockTaskPackages"

    return-object v0

    .line 2027
    :pswitch_5e
    const-string v0, "dumpHeapFinished"

    return-object v0

    .line 2023
    :pswitch_5f
    const-string/jumbo v0, "setDumpHeapDebugLimit"

    return-object v0

    .line 2019
    :pswitch_60
    const-string v0, "getLockTaskModeState"

    return-object v0

    .line 2015
    :pswitch_61
    const-string/jumbo v0, "resizeTask"

    return-object v0

    .line 2011
    :pswitch_62
    const-string/jumbo v0, "setTaskResizeable"

    return-object v0

    .line 2007
    :pswitch_63
    const-string/jumbo v0, "notifyCleartextNetwork"

    return-object v0

    .line 2003
    :pswitch_64
    const-string/jumbo v0, "unregisterTaskStackListener"

    return-object v0

    .line 1999
    :pswitch_65
    const-string/jumbo v0, "registerTaskStackListener"

    return-object v0

    .line 1995
    :pswitch_66
    const-string v0, "bootAnimationComplete"

    return-object v0

    .line 1991
    :pswitch_67
    const-string v0, "isTopOfTask"

    return-object v0

    .line 1987
    :pswitch_68
    const-string/jumbo v0, "startSystemLockTaskMode"

    return-object v0

    .line 1983
    :pswitch_69
    const-string/jumbo v0, "startActivityFromRecents"

    return-object v0

    .line 1979
    :pswitch_6a
    const-string v0, "isInLockTaskMode"

    return-object v0

    .line 1975
    :pswitch_6b
    const-string/jumbo v0, "startUserInBackground"

    return-object v0

    .line 1971
    :pswitch_6c
    const-string v0, "getTagForIntentSender"

    return-object v0

    .line 1967
    :pswitch_6d
    const-string/jumbo v0, "setProcessMemoryTrimLevel"

    return-object v0

    .line 1963
    :pswitch_6e
    const-string v0, "getTaskBounds"

    return-object v0

    .line 1959
    :pswitch_6f
    const-string v0, "appNotRespondingViaProvider"

    return-object v0

    .line 1955
    :pswitch_70
    const-string/jumbo v0, "performIdleMaintenance"

    return-object v0

    .line 1951
    :pswitch_71
    const-string/jumbo v0, "restart"

    return-object v0

    .line 1947
    :pswitch_72
    const-string v0, "getFocusedRootTaskInfo"

    return-object v0

    .line 1943
    :pswitch_73
    const-string/jumbo v0, "setFocusedRootTask"

    return-object v0

    .line 1939
    :pswitch_74
    const-string/jumbo v0, "moveTaskToRootTask"

    return-object v0

    .line 1935
    :pswitch_75
    const-string v0, "getAllRootTaskInfos"

    return-object v0

    .line 1931
    :pswitch_76
    const-string v0, "hang"

    return-object v0

    .line 1927
    :pswitch_77
    const-string/jumbo v0, "setUserIsMonkey"

    return-object v0

    .line 1923
    :pswitch_78
    const-string v0, "killUid"

    return-object v0

    .line 1919
    :pswitch_79
    const-string v0, "getLaunchedFromPackage"

    return-object v0

    .line 1915
    :pswitch_7a
    const-string v0, "getIntentForIntentSender"

    return-object v0

    .line 1911
    :pswitch_7b
    const-string v0, "getBugreportWhitelistedPackages"

    return-object v0

    .line 1907
    :pswitch_7c
    const-string v0, "launchBugReportHandlerApp"

    return-object v0

    .line 1903
    :pswitch_7d
    const-string/jumbo v0, "requestRemoteBugReport"

    return-object v0

    .line 1899
    :pswitch_7e
    const-string/jumbo v0, "requestFullBugReport"

    return-object v0

    .line 1895
    :pswitch_7f
    const-string/jumbo v0, "requestInteractiveBugReport"

    return-object v0

    .line 1891
    :pswitch_80
    const-string/jumbo v0, "requestInteractiveBugReportWithDescription"

    return-object v0

    .line 1887
    :pswitch_81
    const-string/jumbo v0, "requestWifiBugReport"

    return-object v0

    .line 1883
    :pswitch_82
    const-string/jumbo v0, "requestTelephonyBugReport"

    return-object v0

    .line 1879
    :pswitch_83
    const-string/jumbo v0, "requestBugReportWithDescription"

    return-object v0

    .line 1875
    :pswitch_84
    const-string/jumbo v0, "requestBugReport"

    return-object v0

    .line 1871
    :pswitch_85
    const-string/jumbo v0, "requestSystemServerHeapDump"

    return-object v0

    .line 1867
    :pswitch_86
    const-string v0, "getRunningUserIds"

    return-object v0

    .line 1863
    :pswitch_87
    const-string/jumbo v0, "unregisterUserSwitchObserver"

    return-object v0

    .line 1859
    :pswitch_88
    const-string/jumbo v0, "registerUserSwitchObserver"

    return-object v0

    .line 1855
    :pswitch_89
    const-string/jumbo v0, "stopUserWithDelayedLocking"

    return-object v0

    .line 1851
    :pswitch_8a
    const-string/jumbo v0, "stopUser"

    return-object v0

    .line 1847
    :pswitch_8b
    const-string/jumbo v0, "startActivityAsUserWithFeature"

    return-object v0

    .line 1843
    :pswitch_8c
    const-string/jumbo v0, "startActivityAsUser"

    return-object v0

    .line 1839
    :pswitch_8d
    const-string v0, "isIntentSenderAnActivity"

    return-object v0

    .line 1835
    :pswitch_8e
    const-string/jumbo v0, "unstableProviderDied"

    return-object v0

    .line 1831
    :pswitch_8f
    const-string v0, "getLaunchedFromUid"

    return-object v0

    .line 1827
    :pswitch_90
    const-string v0, "getCurrentUserId"

    return-object v0

    .line 1823
    :pswitch_91
    const-string v0, "getCurrentUser"

    return-object v0

    .line 1819
    :pswitch_92
    const-string v0, "killProcessesBelowForeground"

    return-object v0

    .line 1815
    :pswitch_93
    const-string v0, "getMyMemoryState"

    return-object v0

    .line 1811
    :pswitch_94
    const-string/jumbo v0, "removeContentProviderExternalAsUser"

    return-object v0

    .line 1807
    :pswitch_95
    const-string/jumbo v0, "removeContentProviderExternal"

    return-object v0

    .line 1803
    :pswitch_96
    const-string v0, "getContentProviderExternal"

    return-object v0

    .line 1799
    :pswitch_97
    const-string v0, "killAllBackgroundProcesses"

    return-object v0

    .line 1795
    :pswitch_98
    const-string/jumbo v0, "showBootMessage"

    return-object v0

    .line 1791
    :pswitch_99
    const-string v0, "getProcessPss"

    return-object v0

    .line 1787
    :pswitch_9a
    const-string/jumbo v0, "updatePersistentConfigurationWithAttribution"

    return-object v0

    .line 1783
    :pswitch_9b
    const-string/jumbo v0, "updatePersistentConfiguration"

    return-object v0

    .line 1779
    :pswitch_9c
    const-string v0, "isIntentSenderTargetedToPackage"

    return-object v0

    .line 1775
    :pswitch_9d
    const-string/jumbo v0, "unregisterProcessObserver"

    return-object v0

    .line 1771
    :pswitch_9e
    const-string/jumbo v0, "registerProcessObserver"

    return-object v0

    .line 1767
    :pswitch_9f
    const-string/jumbo v0, "removeTask"

    return-object v0

    .line 1763
    :pswitch_a0
    const-string/jumbo v0, "setStopUserOnSwitch"

    return-object v0

    .line 1759
    :pswitch_a1
    const-string v0, "getSwitchingToUserMessage"

    return-object v0

    .line 1755
    :pswitch_a2
    const-string v0, "getSwitchingFromUserMessage"

    return-object v0

    .line 1751
    :pswitch_a3
    const-string/jumbo v0, "switchUser"

    return-object v0

    .line 1747
    :pswitch_a4
    const-string/jumbo v0, "setPackageScreenCompatMode"

    return-object v0

    .line 1743
    :pswitch_a5
    const-string v0, "isUserRunning"

    return-object v0

    .line 1739
    :pswitch_a6
    const-string v0, "dumpHeap"

    return-object v0

    .line 1735
    :pswitch_a7
    const-string v0, "getProviderMimeTypeAsync"

    return-object v0

    .line 1731
    :pswitch_a8
    const-string v0, "getProviderMimeType"

    return-object v0

    .line 1727
    :pswitch_a9
    const-string v0, "crashApplicationWithTypeWithExtras"

    return-object v0

    .line 1723
    :pswitch_aa
    const-string v0, "crashApplicationWithType"

    return-object v0

    .line 1719
    :pswitch_ab
    const-string v0, "isTopActivityImmersive"

    return-object v0

    .line 1715
    :pswitch_ac
    const-string v0, "handleApplicationStrictModeViolation"

    return-object v0

    .line 1711
    :pswitch_ad
    const-string v0, "finishHeavyWeightApp"

    return-object v0

    .line 1707
    :pswitch_ae
    const-string v0, "getRunningExternalApplications"

    return-object v0

    .line 1703
    :pswitch_af
    const-string v0, "isUserAMonkey"

    return-object v0

    .line 1699
    :pswitch_b0
    const-string v0, "killBackgroundProcesses"

    return-object v0

    .line 1695
    :pswitch_b1
    const-string v0, "handleApplicationWtf"

    return-object v0

    .line 1691
    :pswitch_b2
    const-string v0, "killApplicationProcess"

    return-object v0

    .line 1687
    :pswitch_b3
    const-string v0, "getProcessMemoryInfo"

    return-object v0

    .line 1683
    :pswitch_b4
    const-string v0, "closeSystemDialogsInDisplay"

    return-object v0

    .line 1679
    :pswitch_b5
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 1675
    :pswitch_b6
    const-string v0, "killApplication"

    return-object v0

    .line 1671
    :pswitch_b7
    const-string v0, "addPackageDependency"

    return-object v0

    .line 1667
    :pswitch_b8
    const-string v0, "handleIncomingUser"

    return-object v0

    .line 1663
    :pswitch_b9
    const-string/jumbo v0, "unbindBackupAgent"

    return-object v0

    .line 1659
    :pswitch_ba
    const-string v0, "backupAgentCreated"

    return-object v0

    .line 1655
    :pswitch_bb
    const-string v0, "bindBackupAgent"

    return-object v0

    .line 1651
    :pswitch_bc
    const-string/jumbo v0, "resumeAppSwitches"

    return-object v0

    .line 1647
    :pswitch_bd
    const-string/jumbo v0, "stopAppSwitches"

    return-object v0

    .line 1643
    :pswitch_be
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 1639
    :pswitch_bf
    const-string/jumbo v0, "profileControl"

    return-object v0

    .line 1635
    :pswitch_c0
    const-string/jumbo v0, "peekService"

    return-object v0

    .line 1631
    :pswitch_c1
    const-string v0, "getRunningAppProcesses"

    return-object v0

    .line 1627
    :pswitch_c2
    const-string v0, "getServices"

    return-object v0

    .line 1623
    :pswitch_c3
    const-string v0, "killPids"

    return-object v0

    .line 1619
    :pswitch_c4
    const-string v0, "forceStopPackageByAdmin"

    return-object v0

    .line 1615
    :pswitch_c5
    const-string v0, "forceStopPackage"

    return-object v0

    .line 1611
    :pswitch_c6
    const-string/jumbo v0, "registerForegroundServiceObserver"

    return-object v0

    .line 1607
    :pswitch_c7
    const-string/jumbo v0, "stopAppForUser"

    return-object v0

    .line 1603
    :pswitch_c8
    const-string v0, "clearApplicationUserData"

    return-object v0

    .line 1599
    :pswitch_c9
    const-string v0, "getProcessesInErrorState"

    return-object v0

    .line 1595
    :pswitch_ca
    const-string v0, "getMemoryInfo"

    return-object v0

    .line 1591
    :pswitch_cb
    const-string/jumbo v0, "moveActivityTaskToBack"

    return-object v0

    .line 1587
    :pswitch_cc
    const-string v0, "getForegroundServiceType"

    return-object v0

    .line 1583
    :pswitch_cd
    const-string/jumbo v0, "setServiceForeground"

    return-object v0

    .line 1579
    :pswitch_ce
    const-string/jumbo v0, "setProcessImportant"

    return-object v0

    .line 1575
    :pswitch_cf
    const-string/jumbo v0, "unbindFinished"

    return-object v0

    .line 1571
    :pswitch_d0
    const-string/jumbo v0, "setRequestedOrientation"

    return-object v0

    .line 1567
    :pswitch_d1
    const-string/jumbo v0, "removeContentProvider"

    return-object v0

    .line 1563
    :pswitch_d2
    const-string/jumbo v0, "noteWakeupAlarm"

    return-object v0

    .line 1559
    :pswitch_d3
    const-string v0, "enterSafeMode"

    return-object v0

    .line 1555
    :pswitch_d4
    const-string/jumbo v0, "unregisterIntentSenderCancelListener"

    return-object v0

    .line 1551
    :pswitch_d5
    const-string/jumbo v0, "registerIntentSenderCancelListenerEx"

    return-object v0

    .line 1547
    :pswitch_d6
    const-string v0, "getInfoForIntentSender"

    return-object v0

    .line 1543
    :pswitch_d7
    const-string v0, "cancelIntentSender"

    return-object v0

    .line 1539
    :pswitch_d8
    const-string v0, "getIntentSenderWithFeature"

    return-object v0

    .line 1535
    :pswitch_d9
    const-string v0, "getIntentSender"

    return-object v0

    .line 1531
    :pswitch_da
    const-string/jumbo v0, "serviceDoneExecuting"

    return-object v0

    .line 1527
    :pswitch_db
    const-string v0, "getRecentTasks"

    return-object v0

    .line 1523
    :pswitch_dc
    const-string/jumbo v0, "signalPersistentProcesses"

    return-object v0

    .line 1519
    :pswitch_dd
    const-string/jumbo v0, "showWaitingForDebugger"

    return-object v0

    .line 1515
    :pswitch_de
    const-string/jumbo v0, "setActivityController"

    return-object v0

    .line 1511
    :pswitch_df
    const-string/jumbo v0, "revokeUriPermission"

    return-object v0

    .line 1507
    :pswitch_e0
    const-string v0, "grantUriPermission"

    return-object v0

    .line 1503
    :pswitch_e1
    const-string v0, "checkUriPermissions"

    return-object v0

    .line 1499
    :pswitch_e2
    const-string v0, "checkUriPermission"

    return-object v0

    .line 1495
    :pswitch_e3
    const-string v0, "getProcessLimit"

    return-object v0

    .line 1491
    :pswitch_e4
    const-string/jumbo v0, "setProcessLimit"

    return-object v0

    .line 1487
    :pswitch_e5
    const-string/jumbo v0, "stopServiceToken"

    return-object v0

    .line 1483
    :pswitch_e6
    const-string/jumbo v0, "updateMccMncConfiguration"

    return-object v0

    .line 1479
    :pswitch_e7
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    .line 1475
    :pswitch_e8
    const-string v0, "getConfiguration"

    return-object v0

    .line 1471
    :pswitch_e9
    const-string v0, "finishInstrumentation"

    return-object v0

    .line 1467
    :pswitch_ea
    const-string v0, "addInstrumentationResults"

    return-object v0

    .line 1463
    :pswitch_eb
    const-string/jumbo v0, "startInstrumentation"

    return-object v0

    .line 1459
    :pswitch_ec
    const-string/jumbo v0, "setAlwaysFinish"

    return-object v0

    .line 1455
    :pswitch_ed
    const-string/jumbo v0, "setAgentApp"

    return-object v0

    .line 1451
    :pswitch_ee
    const-string/jumbo v0, "setDebugApp"

    return-object v0

    .line 1447
    :pswitch_ef
    const-string/jumbo v0, "publishService"

    return-object v0

    .line 1443
    :pswitch_f0
    const-string/jumbo v0, "unbindService"

    return-object v0

    .line 1439
    :pswitch_f1
    const-string/jumbo v0, "updateServiceGroup"

    return-object v0

    .line 1435
    :pswitch_f2
    const-string v0, "bindServiceInstance"

    return-object v0

    .line 1431
    :pswitch_f3
    const-string v0, "bindService"

    return-object v0

    .line 1427
    :pswitch_f4
    const-string/jumbo v0, "stopService"

    return-object v0

    .line 1423
    :pswitch_f5
    const-string/jumbo v0, "startService"

    return-object v0

    .line 1419
    :pswitch_f6
    const-string v0, "getRunningServiceControlPanel"

    return-object v0

    .line 1415
    :pswitch_f7
    const-string/jumbo v0, "refContentProvider"

    return-object v0

    .line 1411
    :pswitch_f8
    const-string/jumbo v0, "publishContentProviders"

    return-object v0

    .line 1407
    :pswitch_f9
    const-string v0, "getContentProvider"

    return-object v0

    .line 1403
    :pswitch_fa
    const-string v0, "getTaskForActivity"

    return-object v0

    .line 1399
    :pswitch_fb
    const-string/jumbo v0, "moveTaskToFront"

    return-object v0

    .line 1395
    :pswitch_fc
    const-string v0, "getTasks"

    return-object v0

    .line 1391
    :pswitch_fd
    const-string v0, "attachApplication"

    return-object v0

    .line 1387
    :pswitch_fe
    const-string v0, "finishReceiver"

    return-object v0

    .line 1383
    :pswitch_ff
    const-string/jumbo v0, "unbroadcastIntent"

    return-object v0

    .line 1379
    :pswitch_100
    const-string v0, "broadcastIntentWithFeature"

    return-object v0

    .line 1375
    :pswitch_101
    const-string v0, "broadcastIntent"

    return-object v0

    .line 1371
    :pswitch_102
    const-string/jumbo v0, "unregisterReceiver"

    return-object v0

    .line 1367
    :pswitch_103
    const-string/jumbo v0, "registerReceiverWithFeature"

    return-object v0

    .line 1363
    :pswitch_104
    const-string/jumbo v0, "registerReceiver"

    return-object v0

    .line 1359
    :pswitch_105
    const-string v0, "finishActivity"

    return-object v0

    .line 1355
    :pswitch_106
    const-string/jumbo v0, "unhandledBack"

    return-object v0

    .line 1351
    :pswitch_107
    const-string/jumbo v0, "startActivityWithFeature"

    return-object v0

    .line 1347
    :pswitch_108
    const-string/jumbo v0, "startActivity"

    return-object v0

    .line 1343
    :pswitch_109
    const-string v0, "handleApplicationCrash"

    return-object v0

    .line 1339
    :pswitch_10a
    const-string v0, "checkPermission"

    return-object v0

    .line 1335
    :pswitch_10b
    const-string v0, "getUidProcessState"

    return-object v0

    .line 1331
    :pswitch_10c
    const-string v0, "isUidActive"

    return-object v0

    .line 1327
    :pswitch_10d
    const-string/jumbo v0, "unregisterUidObserver"

    return-object v0

    .line 1323
    :pswitch_10e
    const-string/jumbo v0, "registerUidObserver"

    return-object v0

    .line 1319
    :pswitch_10f
    const-string/jumbo v0, "openContentUri"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1310
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 11066
    const/16 v0, 0x10f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 2414
    invoke-static {p1}, Landroid/app/IActivityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 35
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2418
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "android.app.IActivityManager"

    .line 2419
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 2420
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2422
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 2430
    packed-switch v14, :pswitch_data_1

    .line 5630
    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2426
    :pswitch_0
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2427
    return v10

    .line 5623
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getIsolatedProcessList()[I

    move-result-object v0

    .line 5624
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5625
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5626
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5612
    .end local v0    # "_result":[I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5614
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5615
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5616
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->setProcessSlowdown(IZ)Z

    move-result v2

    .line 5617
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5618
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5619
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5602
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5603
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5604
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->isFreezableUid(I)Z

    move-result v1

    .line 5605
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5606
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5607
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5595
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->resetAbnormalList()V

    .line 5596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5597
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5584
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5586
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5587
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5588
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->setFGSFilter(IZ)Z

    move-result v2

    .line 5589
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5590
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5591
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5574
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5575
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5576
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getScalingFactor(Ljava/lang/String;)F

    move-result v1

    .line 5577
    .local v1, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5578
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5579
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5564
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":F
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5565
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5566
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->isScaledAppByPackageName(Ljava/lang/String;)Z

    move-result v1

    .line 5567
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5568
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5569
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5554
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5555
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5556
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->isScaledApp(I)Z

    move-result v1

    .line 5557
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5558
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5559
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5543
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5545
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 5546
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5547
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->addPackageData(Ljava/lang/String;F)V

    .line 5548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5549
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5536
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":F
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->showAllDSSInfo()V

    .line 5537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5538
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5526
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5528
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 5529
    .restart local v1    # "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5530
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->setDssForPackage(Ljava/lang/String;F)V

    .line 5531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5532
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5515
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":F
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5517
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5518
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5519
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->reportAbnormalUsage(II)V

    .line 5520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5521
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5505
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5506
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5507
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v1

    .line 5508
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5509
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5510
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5490
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_e
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 5492
    .local v0, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5494
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5496
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/LocaleList;

    .line 5497
    .local v3, "_arg3":Landroid/os/LocaleList;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5498
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->updatePersistentConfigurationAndLocaleOverlays(Landroid/content/res/Configuration;Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)V

    .line 5499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5500
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5481
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/LocaleList;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5482
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5483
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setTTSPkgInfo(I)V

    .line 5484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5485
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5471
    .end local v0    # "_arg0":I
    :pswitch_10
    sget-object v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5472
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5473
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->clearRestrictionInfo(Ljava/util/List;)Z

    move-result v1

    .line 5474
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5475
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5476
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5459
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    .end local v1    # "_result":Z
    :pswitch_11
    sget-object v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    .line 5461
    .local v0, "_arg0":Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    sget-object v1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5462
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5463
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z

    move-result v2

    .line 5464
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5465
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5466
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5449
    .end local v0    # "_arg0":Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    .end local v2    # "_result":Z
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5450
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5451
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getRestrictedList(I)Ljava/util/List;

    move-result-object v1

    .line 5452
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5453
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5454
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5441
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getAllRestrictedList()Ljava/util/List;

    move-result-object v0

    .line 5442
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5443
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5444
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5432
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5433
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5434
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getRestrictableList(I)Ljava/util/List;

    move-result-object v1

    .line 5435
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5436
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5437
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5414
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 5416
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 5418
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 5420
    .local v8, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 5422
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 5423
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5424
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->restrict(IIZLjava/lang/String;I)Z

    move-result v0

    .line 5425
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5426
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5427
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5400
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Z
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5402
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5404
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5405
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5406
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->canRestrict(ILjava/lang/String;I)Z

    move-result v3

    .line 5407
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5408
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5409
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5386
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5388
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5390
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5391
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5392
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getRestrictionInfo(ILjava/lang/String;I)Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    move-result-object v3

    .line 5393
    .local v3, "_result":Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5394
    invoke-virtual {v12, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5395
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5375
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 5377
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5378
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5379
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->preloadBoosterAppsFromIpm(Ljava/util/List;I)V

    .line 5380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5381
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5364
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5366
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5367
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5368
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->checkProfileForADCP(ILjava/lang/String;)V

    .line 5369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5370
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5356
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 5357
    .local v0, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5358
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5359
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5348
    .end local v0    # "_result":Landroid/content/res/Configuration;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5349
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5350
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->dismissUserSwitchingDialog(I)V

    .line 5351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5352
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5340
    .end local v0    # "_arg0":I
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getLongLiveApp()Ljava/lang/String;

    move-result-object v0

    .line 5341
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5342
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5343
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5331
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5332
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5333
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setLongLiveApp(Ljava/lang/String;)Z

    move-result v1

    .line 5334
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5335
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5336
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5320
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1e
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    .line 5322
    .local v0, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5323
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5324
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->registerDedicatedCallback(Landroid/os/RemoteCallback;I)V

    .line 5325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5326
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5310
    .end local v0    # "_arg0":Landroid/os/RemoteCallback;
    .end local v1    # "_arg1":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5311
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5312
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getAutoRemoveRecents(I)Z

    move-result v1

    .line 5313
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5314
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5315
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5300
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5301
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5302
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getLongLiveTaskIdsForUser(I)Ljava/util/List;

    move-result-object v1

    .line 5303
    .local v1, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5304
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 5305
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5290
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5291
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5292
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getLongLiveProcessesForUser(I)Ljava/util/List;

    move-result-object v1

    .line 5293
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5294
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5295
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5282
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getLongLiveProcesses()Ljava/util/List;

    move-result-object v0

    .line 5283
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5284
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5285
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5273
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5274
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5275
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->clearLongLiveTask(I)Z

    move-result v1

    .line 5276
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5277
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5278
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5263
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5264
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5265
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setLongLiveTask(I)Z

    move-result v1

    .line 5266
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5267
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5268
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5255
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getMaxLongLiveApps()I

    move-result v0

    .line 5256
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5257
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5258
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5246
    .end local v0    # "_result":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5247
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5248
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->removeLongLiveApp(Ljava/lang/String;)Z

    move-result v1

    .line 5249
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5250
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5251
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5236
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5237
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5238
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->addLongLiveApp(Ljava/lang/String;)Z

    move-result v1

    .line 5239
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5240
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5241
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5228
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getLongLiveApps()Ljava/util/List;

    move-result-object v0

    .line 5229
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5230
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5231
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5219
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5220
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5221
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getRequestedOrientationByTaskId(I)I

    move-result v1

    .line 5222
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5223
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5224
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5205
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5207
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5209
    .local v1, "_arg1":Z
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 5210
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5211
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->moveTaskToBackWithBundle(IZLandroid/os/Bundle;)Z

    move-result v3

    .line 5212
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5213
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5214
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5193
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5195
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5196
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5197
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->moveTaskToBack(IZ)Z

    move-result v2

    .line 5198
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5199
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5200
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5179
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_2c
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 5181
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5183
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5184
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5185
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->queryRegisteredReceiverPackages(Landroid/content/Intent;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 5186
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5187
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5188
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5169
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5170
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5171
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getBackgroundRestrictionExemptionReason(I)I

    move-result v1

    .line 5172
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5173
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5174
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5162
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2e
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->waitForBroadcastIdle()V

    .line 5163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5164
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5151
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5153
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5154
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5155
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->getUidProcessCapabilities(ILjava/lang/String;)I

    move-result v2

    .line 5156
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5157
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5158
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5139
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 5141
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5142
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5143
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->queryIntentComponentsForIntentSender(Landroid/content/IIntentSender;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 5144
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5145
    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5146
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5129
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5130
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5131
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->stopProfile(I)Z

    move-result v1

    .line 5132
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5133
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5134
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5119
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5120
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5121
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->startProfile(I)Z

    move-result v1

    .line 5122
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5123
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5124
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5108
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5110
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5111
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5112
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    .line 5113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5114
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5098
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 5099
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5100
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->enableFgsNotificationRateLimit(Z)Z

    move-result v1

    .line 5101
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5102
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5103
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5088
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 5089
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5090
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->enableAppFreezer(Z)Z

    move-result v1

    .line 5091
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5092
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5093
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5081
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_36
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->resetAppErrors()V

    .line 5082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5083
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5069
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5071
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5073
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5074
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5075
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killUidForPermissionChange(IILjava/lang/String;)V

    .line 5076
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5077
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5061
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isAppFreezerEnabled()Z

    move-result v0

    .line 5062
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5063
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5064
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5054
    .end local v0    # "_result":Z
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isAppFreezerSupported()Z

    move-result v0

    .line 5055
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5056
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5057
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5046
    .end local v0    # "_result":Z
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 5047
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5048
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setProcessStateSummary([B)V

    .line 5049
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5050
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5033
    .end local v0    # "_arg0":[B
    :pswitch_3b
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 5035
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/LocusId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/LocusId;

    .line 5037
    .local v1, "_arg1":Landroid/content/LocusId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 5038
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5039
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setActivityLocusContext(Landroid/content/ComponentName;Landroid/content/LocusId;Landroid/os/IBinder;)V

    .line 5040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5041
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5022
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Landroid/content/LocusId;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 5024
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5025
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5026
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->killProcessesWhenImperceptible([ILjava/lang/String;)V

    .line 5027
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5028
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 5006
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5008
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5010
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5012
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5013
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5014
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getHistoricalProcessExitReasons(Ljava/lang/String;III)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 5015
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5016
    invoke-virtual {v12, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5017
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4997
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationExitInfo;>;"
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4998
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4999
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->appNotResponding(Ljava/lang/String;)V

    .line 5000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5001
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4985
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4987
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v1

    .line 4988
    .local v1, "_arg1":Landroid/os/IProgressListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4989
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v2

    .line 4990
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4991
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4992
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4977
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IProgressListener;
    .end local v2    # "_result":Z
    :pswitch_40
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getLifeMonitor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 4978
    .local v0, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4979
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4980
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4970
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getDelegatedShellPermissions()Ljava/util/List;

    move-result-object v0

    .line 4971
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4972
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4973
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4964
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_42
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->stopDelegateShellPermissionIdentity()V

    .line 4965
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4966
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4954
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4956
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 4957
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4958
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->startDelegateShellPermissionIdentity(I[Ljava/lang/String;)V

    .line 4959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4960
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4942
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4944
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v1

    .line 4945
    .local v1, "_arg1":Landroid/os/IProgressListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4946
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v2

    .line 4947
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4948
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4949
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4933
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IProgressListener;
    .end local v2    # "_result":Z
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4934
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4935
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->backgroundAllowlistUid(I)V

    .line 4936
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4937
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4924
    .end local v0    # "_arg0":I
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 4925
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4926
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->waitForNetworkStateUpdate(J)V

    .line 4927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4928
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4915
    .end local v0    # "_arg0":J
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4916
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4917
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setPersistentVrThread(I)V

    .line 4918
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4919
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4904
    .end local v0    # "_arg0":I
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 4906
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4907
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4908
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    .line 4909
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4910
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4895
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":I
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4896
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4897
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->cancelTaskWindowTransition(I)V

    .line 4898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4899
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4885
    .end local v0    # "_arg0":I
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4886
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4887
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->restartUserInBackground(I)I

    move-result v1

    .line 4888
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4889
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4890
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4876
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4877
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4878
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setHasTopUi(Z)V

    .line 4879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4880
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4867
    .end local v0    # "_arg0":Z
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4868
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4869
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setRenderThread(I)V

    .line 4870
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4871
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4857
    .end local v0    # "_arg0":I
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4858
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4859
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->isBackgroundRestricted(Ljava/lang/String;)Z

    move-result v1

    .line 4860
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4861
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4862
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4833
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v9

    .line 4835
    .local v9, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 4837
    .local v16, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 4839
    .local v17, "_arg2":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    .line 4841
    .local v18, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 4843
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v20

    .line 4845
    .local v20, "_arg5":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 4847
    .local v21, "_arg6":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    .line 4848
    .local v22, "_arg7":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4849
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    .line 4850
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4851
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4852
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4826
    .end local v0    # "_result":I
    .end local v9    # "_arg0":Landroid/content/IIntentSender;
    .end local v16    # "_arg1":Landroid/os/IBinder;
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Landroid/content/Intent;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Landroid/content/IIntentReceiver;
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":Landroid/os/Bundle;
    :pswitch_4f
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->sendIdleJobTrigger()V

    .line 4827
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4828
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4816
    :pswitch_50
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 4818
    .local v0, "_arg0":Landroid/content/Intent;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 4819
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4820
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4822
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4807
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4808
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4809
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->notifyLockedProfile(I)V

    .line 4810
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4811
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4797
    .end local v0    # "_arg0":I
    :pswitch_52
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 4798
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4799
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    .line 4800
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4801
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4802
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4789
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":Z
    :pswitch_53
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getMemoryTrimLevel()I

    move-result v0

    .line 4790
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4791
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4792
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4779
    .end local v0    # "_result":I
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4781
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4782
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4783
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->makePackageIdle(Ljava/lang/String;I)V

    .line 4784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4785
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4768
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4770
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4771
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4772
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->killPackageDependents(Ljava/lang/String;I)V

    .line 4773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4774
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4752
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4754
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 4756
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 4758
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v3

    .line 4759
    .local v3, "_arg3":Landroid/os/IProgressListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4760
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v4

    .line 4761
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4762
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4763
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4743
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":Landroid/os/IProgressListener;
    .end local v4    # "_result":Z
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4744
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4745
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->suppressResizeConfigChanges(Z)V

    .line 4746
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4747
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4736
    .end local v0    # "_arg0":Z
    :pswitch_58
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->enableBinderTracing()V

    .line 4737
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4738
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4727
    :pswitch_59
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 4728
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4729
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v1

    .line 4730
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4731
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4732
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4719
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_result":Z
    :pswitch_5a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->startBinderTracking()Z

    move-result v0

    .line 4720
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4721
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4722
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4708
    .end local v0    # "_result":Z
    :pswitch_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4710
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4711
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4712
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 4713
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4714
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4715
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4693
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 4695
    .local v0, "_arg0":Landroid/content/IIntentSender;
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 4697
    .local v1, "_arg1":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4699
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4700
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4701
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4703
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4678
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 4680
    .restart local v0    # "_arg0":Landroid/content/IIntentSender;
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 4682
    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4684
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4685
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4686
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4687
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4688
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4667
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4669
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 4670
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4671
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 4672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4673
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4658
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4659
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4660
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->dumpHeapFinished(Ljava/lang/String;)V

    .line 4661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4662
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4643
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 4645
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4647
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 4649
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 4650
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4651
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-wide v3, v8

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 4652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4653
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4635
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":J
    .end local v16    # "_arg3":Ljava/lang/String;
    :pswitch_61
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getLockTaskModeState()I

    move-result v0

    .line 4636
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4637
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4638
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4623
    .end local v0    # "_result":I
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4625
    .local v0, "_arg0":I
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 4627
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4628
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4629
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 4630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4631
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4612
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":I
    :pswitch_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4614
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4615
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4616
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->setTaskResizeable(II)V

    .line 4617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4618
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4601
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4603
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 4604
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4605
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->notifyCleartextNetwork(I[B)V

    .line 4606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4607
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4592
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    .line 4593
    .local v0, "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4594
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 4595
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4596
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4583
    .end local v0    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    .line 4584
    .restart local v0    # "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4585
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 4586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4587
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4576
    .end local v0    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_67
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->bootAnimationComplete()V

    .line 4577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4578
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4567
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4568
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4569
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v1

    .line 4570
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4571
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4572
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4558
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4559
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4560
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->startSystemLockTaskMode(I)V

    .line 4561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4562
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4546
    .end local v0    # "_arg0":I
    :pswitch_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4548
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 4549
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4550
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v2

    .line 4551
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4552
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4553
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4538
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":I
    :pswitch_6b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isInLockTaskMode()Z

    move-result v0

    .line 4539
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4540
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4541
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4529
    .end local v0    # "_result":Z
    :pswitch_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4530
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4531
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->startUserInBackground(I)Z

    move-result v1

    .line 4532
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4533
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4534
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4517
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 4519
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4520
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4521
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4522
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4523
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4524
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4503
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4505
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4507
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4508
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4509
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v3

    .line 4510
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4511
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4512
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4493
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4494
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4495
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 4496
    .local v1, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4497
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4498
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4484
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Rect;
    :pswitch_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4485
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4486
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 4487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4488
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4477
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_71
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->performIdleMaintenance()V

    .line 4478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4479
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4471
    :pswitch_72
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->restart()V

    .line 4472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4473
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4464
    :pswitch_73
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    .line 4465
    .local v0, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4466
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4467
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4456
    .end local v0    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4457
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4458
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setFocusedRootTask(I)V

    .line 4459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4460
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4443
    .end local v0    # "_arg0":I
    :pswitch_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4445
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4447
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4448
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4449
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->moveTaskToRootTask(IIZ)V

    .line 4450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4451
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4435
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_76
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v0

    .line 4436
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4437
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4438
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4425
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :pswitch_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4427
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4428
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4429
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->hang(Landroid/os/IBinder;Z)V

    .line 4430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4431
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4416
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4417
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4418
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setUserIsMonkey(Z)V

    .line 4419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4420
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4403
    .end local v0    # "_arg0":Z
    :pswitch_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4405
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4407
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4408
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4409
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killUid(IILjava/lang/String;)V

    .line 4410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4411
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4393
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4394
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4395
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    .line 4396
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4397
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4398
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4383
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 4384
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4385
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v1

    .line 4386
    .local v1, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4387
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4388
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4375
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_result":Landroid/content/Intent;
    :pswitch_7c
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getBugreportWhitelistedPackages()Ljava/util/List;

    move-result-object v0

    .line 4376
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4377
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4378
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4368
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->launchBugReportHandlerApp()Z

    move-result v0

    .line 4369
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4370
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4371
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4360
    .end local v0    # "_result":Z
    :pswitch_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 4361
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4362
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->requestRemoteBugReport(J)V

    .line 4363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4364
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4353
    .end local v0    # "_arg0":J
    :pswitch_7f
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->requestFullBugReport()V

    .line 4354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4355
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4347
    :pswitch_80
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->requestInteractiveBugReport()V

    .line 4348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4349
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4337
    :pswitch_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4339
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4340
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4341
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->requestInteractiveBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 4342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4343
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4326
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4328
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4329
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4330
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->requestWifiBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 4331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4332
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4315
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4317
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4318
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4319
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 4320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4321
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4302
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4304
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4306
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4307
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4308
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->requestBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4310
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4293
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4294
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4295
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->requestBugReport(I)V

    .line 4296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4297
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4286
    .end local v0    # "_arg0":I
    :pswitch_86
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->requestSystemServerHeapDump()V

    .line 4287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4288
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4279
    :pswitch_87
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningUserIds()[I

    move-result-object v0

    .line 4280
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4281
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4282
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4271
    .end local v0    # "_result":[I
    :pswitch_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    .line 4272
    .local v0, "_arg0":Landroid/app/IUserSwitchObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4273
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 4274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4275
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4260
    .end local v0    # "_arg0":Landroid/app/IUserSwitchObserver;
    :pswitch_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    .line 4262
    .restart local v0    # "_arg0":Landroid/app/IUserSwitchObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4263
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4264
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 4265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4266
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4246
    .end local v0    # "_arg0":Landroid/app/IUserSwitchObserver;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4248
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4250
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v2

    .line 4251
    .local v2, "_arg2":Landroid/app/IStopUserCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4252
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopUserWithDelayedLocking(IZLandroid/app/IStopUserCallback;)I

    move-result v3

    .line 4253
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4254
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4255
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4232
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/app/IStopUserCallback;
    .end local v3    # "_result":I
    :pswitch_8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4234
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4236
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v2

    .line 4237
    .restart local v2    # "_arg2":Landroid/app/IStopUserCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4238
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v3

    .line 4239
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4240
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4241
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_0

    .line 4200
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/app/IStopUserCallback;
    .end local v3    # "_result":I
    :pswitch_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    .line 4202
    .local v16, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 4204
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 4206
    .local v18, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    .line 4208
    .local v19, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 4210
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    .line 4212
    .local v21, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 4214
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 4216
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 4218
    .local v24, "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    .line 4220
    .local v25, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 4222
    .local v26, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 4223
    .local v27, "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4224
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move v14, v10

    move-object/from16 v10, v25

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    move-object v14, v12

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityManager$Stub;->startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    .line 4225
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4226
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4227
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4170
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Landroid/app/IApplicationThread;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Landroid/content/Intent;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Landroid/os/IBinder;
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    .end local v25    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v26    # "_arg10":Landroid/os/Bundle;
    .end local v27    # "_arg11":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8d
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v12

    .line 4172
    .local v12, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 4174
    .local v16, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    .line 4176
    .local v17, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 4178
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 4180
    .local v19, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 4182
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 4184
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 4186
    .local v22, "_arg7":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/app/ProfilerInfo;

    .line 4188
    .local v23, "_arg8":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Bundle;

    .line 4190
    .local v24, "_arg9":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 4191
    .local v25, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4192
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    .line 4193
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4194
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4195
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4160
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Landroid/app/IApplicationThread;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Landroid/content/Intent;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Landroid/os/IBinder;
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":I
    .end local v23    # "_arg8":Landroid/app/ProfilerInfo;
    .end local v24    # "_arg9":Landroid/os/Bundle;
    .end local v25    # "_arg10":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8e
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 4161
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4162
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v1

    .line 4163
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4164
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4165
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4151
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8f
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4152
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4153
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 4154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4155
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4141
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_90
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4142
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4143
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v1

    .line 4144
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4145
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4146
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4133
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_91
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getCurrentUserId()I

    move-result v0

    .line 4134
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4135
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4136
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4126
    .end local v0    # "_result":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_92
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 4127
    .local v0, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4128
    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4129
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4117
    .end local v0    # "_result":Landroid/content/pm/UserInfo;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_93
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4118
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4119
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v1

    .line 4120
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4121
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4122
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4107
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_94
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 4108
    .local v0, "_arg0":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4109
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 4110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4111
    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4112
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4094
    .end local v0    # "_arg0":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_95
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4096
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4098
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4099
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4100
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 4101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4102
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4083
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_96
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4085
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4086
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4087
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4088
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4089
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4067
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_97
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4069
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4071
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4073
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4074
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4075
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;

    move-result-object v4

    .line 4076
    .local v4, "_result":Landroid/app/ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4077
    const/4 v5, 0x1

    invoke-virtual {v14, v4, v5}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4078
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4060
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Landroid/app/ContentProviderHolder;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_98
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->killAllBackgroundProcesses()V

    .line 4061
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4062
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4050
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_99
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 4052
    .local v0, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4053
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4054
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 4055
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4056
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4040
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    .end local v1    # "_arg1":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9a
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 4041
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4042
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getProcessPss([I)[J

    move-result-object v1

    .line 4043
    .local v1, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4044
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 4045
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4027
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":[J
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9b
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 4029
    .local v0, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4031
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4032
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4033
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->updatePersistentConfigurationWithAttribution(Landroid/content/res/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 4034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4035
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4018
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9c
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 4019
    .restart local v0    # "_arg0":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4020
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 4021
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4022
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4008
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9d
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 4009
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4010
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v1

    .line 4011
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4012
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4013
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3999
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9e
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    .line 4000
    .local v0, "_arg0":Landroid/app/IProcessObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4001
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 4002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4003
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3990
    .end local v0    # "_arg0":Landroid/app/IProcessObserver;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9f
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    .line 3991
    .restart local v0    # "_arg0":Landroid/app/IProcessObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3992
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 3993
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3994
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3980
    .end local v0    # "_arg0":Landroid/app/IProcessObserver;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a0
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3981
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3982
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->removeTask(I)Z

    move-result v1

    .line 3983
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3984
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3985
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3971
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a1
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3972
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3973
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setStopUserOnSwitch(I)V

    .line 3974
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3975
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3963
    .end local v0    # "_arg0":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a2
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getSwitchingToUserMessage()Ljava/lang/String;

    move-result-object v0

    .line 3964
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3965
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3966
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3956
    .end local v0    # "_result":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a3
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getSwitchingFromUserMessage()Ljava/lang/String;

    move-result-object v0

    .line 3957
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3958
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3959
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3947
    .end local v0    # "_result":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a4
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3948
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3949
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->switchUser(I)Z

    move-result v1

    .line 3950
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3951
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3952
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3936
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a5
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3938
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3939
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3940
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 3941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3942
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3924
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a6
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3926
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3927
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3928
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->isUserRunning(II)Z

    move-result v2

    .line 3929
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3930
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3931
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3900
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a7
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3902
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3904
    .local v10, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 3906
    .local v11, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 3908
    .local v12, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 3910
    .local v16, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 3912
    .local v17, "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/ParcelFileDescriptor;

    .line 3914
    .local v18, "_arg6":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/RemoteCallback;

    .line 3915
    .local v19, "_arg7":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3916
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result v0

    .line 3917
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3918
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3919
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3888
    .end local v0    # "_result":Z
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":I
    .end local v12    # "_arg3":Z
    .end local v16    # "_arg4":Z
    .end local v17    # "_arg5":Ljava/lang/String;
    .end local v18    # "_arg6":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "_arg7":Landroid/os/RemoteCallback;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_a8
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 3890
    .local v0, "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3892
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 3893
    .local v2, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3894
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getProviderMimeTypeAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V

    .line 3895
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3876
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/RemoteCallback;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a9
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 3878
    .restart local v0    # "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3879
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3880
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    .line 3881
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3882
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3883
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3853
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_aa
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3855
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3857
    .restart local v10    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 3859
    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 3861
    .local v12, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3863
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 3865
    .local v17, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 3867
    .local v18, "_arg6":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Bundle;

    .line 3868
    .local v19, "_arg7":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3869
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move-object v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V

    .line 3870
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3871
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3832
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":I
    .end local v12    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v17    # "_arg5":Z
    .end local v18    # "_arg6":I
    .end local v19    # "_arg7":Landroid/os/Bundle;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_ab
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3834
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3836
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 3838
    .local v10, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 3840
    .local v11, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3842
    .local v12, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 3844
    .local v16, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3845
    .local v17, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3846
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v10

    move v4, v11

    move-object v5, v12

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    .line 3847
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3848
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3824
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg4":Ljava/lang/String;
    .end local v16    # "_arg5":Z
    .end local v17    # "_arg6":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_ac
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isTopActivityImmersive()Z

    move-result v0

    .line 3825
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3826
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3827
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3812
    .end local v0    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ad
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3814
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3816
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$ViolationInfo;

    .line 3817
    .local v2, "_arg2":Landroid/os/StrictMode$ViolationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3818
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 3819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3820
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3805
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/StrictMode$ViolationInfo;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ae
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->finishHeavyWeightApp()V

    .line 3806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3807
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3798
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_af
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v0

    .line 3799
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3800
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3801
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3791
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b0
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isUserAMonkey()Z

    move-result v0

    .line 3792
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3793
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3794
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3781
    .end local v0    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b1
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3783
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3784
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3785
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 3786
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3787
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3763
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b2
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 3765
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3767
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 3769
    .local v8, "_arg2":Z
    sget-object v0, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 3771
    .local v9, "_arg3":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3772
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3773
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result v0

    .line 3774
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3775
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3776
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3752
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Z
    .end local v9    # "_arg3":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .end local v10    # "_arg4":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b3
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3754
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3755
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3756
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->killApplicationProcess(Ljava/lang/String;I)V

    .line 3757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3758
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3742
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b4
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 3743
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3744
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 3745
    .local v1, "_result":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3746
    const/4 v2, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3747
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3731
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":[Landroid/os/Debug$MemoryInfo;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b5
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3733
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3734
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3735
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->closeSystemDialogsInDisplay(Ljava/lang/String;I)V

    .line 3736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3737
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3722
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b6
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3723
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3724
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 3725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3726
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3707
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b7
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3709
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3711
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3713
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3714
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3715
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    .line 3716
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3717
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3698
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b8
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3699
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3700
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->addPackageDependency(Ljava/lang/String;)V

    .line 3701
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3702
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3676
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b9
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3678
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3680
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3682
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 3684
    .local v11, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 3686
    .local v12, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3688
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 3689
    .local v17, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3690
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3691
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3692
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3693
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3667
    .end local v0    # "_result":I
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v10    # "_arg2":I
    .end local v12    # "_arg4":Z
    .end local v16    # "_arg5":Ljava/lang/String;
    .end local v17    # "_arg6":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_ba
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3668
    .local v0, "_arg0":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3669
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3671
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3654
    .end local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_bb
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3656
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3658
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3659
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3660
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 3661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3662
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3638
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_bc
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3640
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3642
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3644
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3645
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3646
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->bindBackupAgent(Ljava/lang/String;III)Z

    move-result v4

    .line 3647
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3648
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3649
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3631
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_bd
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->resumeAppSwitches()V

    .line 3632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3633
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3625
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_be
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->stopAppSwitches()V

    .line 3626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3627
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3616
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_bf
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3617
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3618
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->shutdown(I)Z

    move-result v1

    .line 3619
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3620
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3621
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3598
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c0
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3600
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3602
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 3604
    .local v8, "_arg2":Z
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/ProfilerInfo;

    .line 3606
    .local v9, "_arg3":Landroid/app/ProfilerInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3607
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3608
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    .line 3609
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3610
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3611
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3584
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Z
    .end local v9    # "_arg3":Landroid/app/ProfilerInfo;
    .end local v10    # "_arg4":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c1
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 3586
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3588
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3589
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3590
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 3591
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3592
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3593
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3576
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c2
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 3577
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3578
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3579
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3565
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c3
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3567
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3568
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3569
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->getServices(II)Ljava/util/List;

    move-result-object v2

    .line 3570
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3571
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3572
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3551
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c4
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 3553
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3555
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3556
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3557
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killPids([ILjava/lang/String;Z)Z

    move-result v3

    .line 3558
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3559
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3560
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3540
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c5
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3542
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3543
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3544
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->forceStopPackageByAdmin(Ljava/lang/String;I)V

    .line 3545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3546
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3529
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c6
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3531
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3532
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3533
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->forceStopPackage(Ljava/lang/String;I)V

    .line 3534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3535
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3519
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c7
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IForegroundServiceObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IForegroundServiceObserver;

    move-result-object v0

    .line 3520
    .local v0, "_arg0":Landroid/app/IForegroundServiceObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3521
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    move-result v1

    .line 3522
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3523
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3524
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3508
    .end local v0    # "_arg0":Landroid/app/IForegroundServiceObserver;
    .end local v1    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c8
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3510
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3511
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3512
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->stopAppForUser(Ljava/lang/String;I)V

    .line 3513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3514
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3492
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c9
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3494
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3496
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    .line 3498
    .local v2, "_arg2":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3499
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3500
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result v4

    .line 3501
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3502
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3503
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3484
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ca
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0

    .line 3485
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3486
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3487
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3475
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_cb
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3476
    .local v0, "_arg0":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3477
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 3478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3479
    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3480
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3463
    .end local v0    # "_arg0":Landroid/app/ActivityManager$MemoryInfo;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_cc
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3465
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3466
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3467
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v2

    .line 3468
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3469
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3470
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3451
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_cd
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3453
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3454
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3455
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->getForegroundServiceType(Landroid/content/ComponentName;Landroid/os/IBinder;)I

    move-result v2

    .line 3456
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3457
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3458
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3432
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_result":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ce
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/ComponentName;

    .line 3434
    .local v7, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 3436
    .local v8, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3438
    .local v9, "_arg2":I
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Notification;

    .line 3440
    .local v10, "_arg3":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 3442
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 3443
    .local v12, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3444
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V

    .line 3445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3446
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3417
    .end local v7    # "_arg0":Landroid/content/ComponentName;
    .end local v8    # "_arg1":Landroid/os/IBinder;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":Landroid/app/Notification;
    .end local v12    # "_arg5":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_cf
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3419
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3421
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3423
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3424
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3425
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V

    .line 3426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3427
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3404
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d0
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3406
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 3408
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3409
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3410
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 3411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3412
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3393
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d1
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3395
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3396
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3397
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 3398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3399
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3383
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d2
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3385
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3386
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3387
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 3388
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3366
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d3
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v6

    .line 3368
    .local v6, "_arg0":Landroid/content/IIntentSender;
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/WorkSource;

    .line 3370
    .local v7, "_arg1":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3372
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3374
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 3375
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3376
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    .line 3377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3378
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3359
    .end local v6    # "_arg0":Landroid/content/IIntentSender;
    .end local v7    # "_arg1":Landroid/os/WorkSource;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d4
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->enterSafeMode()V

    .line 3360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3361
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3349
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d5
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 3351
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 3352
    .local v1, "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3353
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    .line 3354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3355
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3337
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d6
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 3339
    .restart local v0    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 3340
    .restart local v1    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3341
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->registerIntentSenderCancelListenerEx(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)Z

    move-result v2

    .line 3342
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3343
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3344
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3327
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    .end local v2    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d7
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 3328
    .restart local v0    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3329
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getInfoForIntentSender(Landroid/content/IIntentSender;)Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v1

    .line 3330
    .local v1, "_result":Landroid/app/ActivityManager$PendingIntentInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3331
    const/4 v2, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3332
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3318
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_result":Landroid/app/ActivityManager$PendingIntentInfo;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d8
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 3319
    .restart local v0    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3320
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 3321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3322
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3288
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d9
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 3290
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3292
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 3294
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 3296
    .local v18, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 3298
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 3300
    .local v20, "_arg5":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, [Landroid/content/Intent;

    .line 3302
    .local v21, "_arg6":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v22

    .line 3304
    .local v22, "_arg7":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 3306
    .local v23, "_arg8":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Bundle;

    .line 3308
    .restart local v24    # "_arg9":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 3309
    .restart local v25    # "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3310
    move-object/from16 v0, p0

    move v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move/from16 v9, v23

    move-object/from16 v10, v24

    move/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityManager$Stub;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 3311
    .local v0, "_result":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3312
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3313
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3260
    .end local v0    # "_result":Landroid/content/IIntentSender;
    .end local v12    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Landroid/os/IBinder;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":[Landroid/content/Intent;
    .end local v22    # "_arg7":[Ljava/lang/String;
    .end local v23    # "_arg8":I
    .end local v24    # "_arg9":Landroid/os/Bundle;
    .end local v25    # "_arg10":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_da
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 3262
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3264
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 3266
    .local v16, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 3268
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 3270
    .local v18, "_arg4":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, [Landroid/content/Intent;

    .line 3272
    .local v19, "_arg5":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v20

    .line 3274
    .local v20, "_arg6":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 3276
    .local v21, "_arg7":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    .line 3278
    .local v22, "_arg8":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 3279
    .local v23, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3280
    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v12

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v9, v22

    move/from16 v10, v23

    invoke-virtual/range {v0 .. v10}, Landroid/app/IActivityManager$Stub;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 3281
    .restart local v0    # "_result":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3282
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3283
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3246
    .end local v0    # "_result":Landroid/content/IIntentSender;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Landroid/os/IBinder;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":[Landroid/content/Intent;
    .end local v20    # "_arg6":[Ljava/lang/String;
    .end local v21    # "_arg7":I
    .end local v22    # "_arg8":Landroid/os/Bundle;
    .end local v23    # "_arg9":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_db
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3248
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3250
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3252
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3253
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3254
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 3255
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3232
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_dc
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3234
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3236
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3237
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3238
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 3239
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3240
    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3241
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3223
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_dd
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3224
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3225
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->signalPersistentProcesses(I)V

    .line 3226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3227
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3212
    .end local v0    # "_arg0":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_de
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 3214
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3215
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3216
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 3217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3218
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3201
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    .end local v1    # "_arg1":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_df
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    .line 3203
    .local v0, "_arg0":Landroid/app/IActivityController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3204
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3205
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 3206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3207
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3184
    .end local v0    # "_arg0":Landroid/app/IActivityController;
    .end local v1    # "_arg1":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e0
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 3186
    .local v6, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3188
    .local v7, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/Uri;

    .line 3190
    .local v8, "_arg2":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3192
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3193
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3194
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 3195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3196
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3167
    .end local v6    # "_arg0":Landroid/app/IApplicationThread;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/net/Uri;
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e1
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 3169
    .restart local v6    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3171
    .restart local v7    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/Uri;

    .line 3173
    .restart local v8    # "_arg2":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3175
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3176
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3177
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 3178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3179
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3147
    .end local v6    # "_arg0":Landroid/app/IApplicationThread;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/net/Uri;
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e2
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 3149
    .local v7, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3151
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3153
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3155
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 3157
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 3158
    .local v12, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3159
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->checkUriPermissions(Ljava/util/List;IIIILandroid/os/IBinder;)[I

    move-result-object v0

    .line 3160
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3161
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3162
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3127
    .end local v0    # "_result":[I
    .end local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v12    # "_arg5":Landroid/os/IBinder;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_e3
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/net/Uri;

    .line 3129
    .local v7, "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3131
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3133
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3135
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 3137
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 3138
    .restart local v12    # "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3139
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0

    .line 3140
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3141
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3142
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3119
    .end local v0    # "_result":I
    .end local v7    # "_arg0":Landroid/net/Uri;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v12    # "_arg5":Landroid/os/IBinder;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_e4
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getProcessLimit()I

    move-result v0

    .line 3120
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3121
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3122
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3111
    .end local v0    # "_result":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e5
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3112
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3113
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setProcessLimit(I)V

    .line 3114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3115
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3097
    .end local v0    # "_arg0":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e6
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3099
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3101
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3102
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3103
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v3

    .line 3104
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3105
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3106
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3085
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e7
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3087
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3088
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3089
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->updateMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 3090
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3091
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3092
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3075
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e8
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 3076
    .local v0, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3077
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v1

    .line 3078
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3079
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3080
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3067
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    .end local v1    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e9
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3068
    .local v0, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3069
    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3070
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3055
    .end local v0    # "_result":Landroid/content/res/Configuration;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ea
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 3057
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3059
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 3060
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3061
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 3062
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3063
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3044
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_eb
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 3046
    .restart local v0    # "_arg0":Landroid/app/IApplicationThread;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 3047
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3048
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V

    .line 3049
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3050
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3020
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ec
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/ComponentName;

    .line 3022
    .local v9, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 3024
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 3026
    .local v11, "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/Bundle;

    .line 3028
    .local v12, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v16

    .line 3030
    .local v16, "_arg4":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v17

    .line 3032
    .local v17, "_arg5":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 3034
    .local v18, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 3035
    .local v19, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3036
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v0

    .line 3037
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3038
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3039
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3011
    .end local v0    # "_result":Z
    .end local v9    # "_arg0":Landroid/content/ComponentName;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":Landroid/app/IInstrumentationWatcher;
    .end local v17    # "_arg5":Landroid/app/IUiAutomationConnection;
    .end local v18    # "_arg6":I
    .end local v19    # "_arg7":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_ed
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3012
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3013
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setAlwaysFinish(Z)V

    .line 3014
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3015
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3000
    .end local v0    # "_arg0":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ee
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3002
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3003
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3004
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 3005
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3006
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2987
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ef
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2989
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2991
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2992
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2993
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 2994
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2995
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2974
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_f0
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2976
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2978
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2979
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2980
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 2981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2982
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2964
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_f1
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 2965
    .local v0, "_arg0":Landroid/app/IServiceConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2966
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v1

    .line 2967
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2968
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2969
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2951
    .end local v0    # "_arg0":Landroid/app/IServiceConnection;
    .end local v1    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_f2
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 2953
    .restart local v0    # "_arg0":Landroid/app/IServiceConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2955
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2956
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2957
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->updateServiceGroup(Landroid/app/IServiceConnection;II)V

    .line 2958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2959
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2925
    .end local v0    # "_arg0":Landroid/app/IServiceConnection;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_f3
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v10

    .line 2927
    .local v10, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 2929
    .local v11, "_arg1":Landroid/os/IBinder;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/Intent;

    .line 2931
    .local v12, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2933
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v17

    .line 2935
    .local v17, "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 2937
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 2939
    .local v19, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2941
    .local v20, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 2942
    .local v21, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2943
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->bindServiceInstance(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2944
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2945
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2946
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2901
    .end local v0    # "_result":I
    .end local v10    # "_arg0":Landroid/app/IApplicationThread;
    .end local v12    # "_arg2":Landroid/content/Intent;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Landroid/app/IServiceConnection;
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":Ljava/lang/String;
    .end local v20    # "_arg7":Ljava/lang/String;
    .end local v21    # "_arg8":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_f4
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v9

    .line 2903
    .local v9, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 2905
    .local v10, "_arg1":Landroid/os/IBinder;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/Intent;

    .line 2907
    .local v11, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 2909
    .local v12, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v16

    .line 2911
    .local v16, "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2913
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2915
    .local v18, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 2916
    .local v19, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2917
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v0

    .line 2918
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2919
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2920
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2885
    .end local v0    # "_result":I
    .end local v9    # "_arg0":Landroid/app/IApplicationThread;
    .end local v10    # "_arg1":Landroid/os/IBinder;
    .end local v12    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Landroid/app/IServiceConnection;
    .end local v17    # "_arg5":I
    .end local v18    # "_arg6":Ljava/lang/String;
    .end local v19    # "_arg7":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_f5
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 2887
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2889
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2891
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2892
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2893
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v4

    .line 2894
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2895
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2896
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2863
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_f6
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v8

    .line 2865
    .local v8, "_arg0":Landroid/app/IApplicationThread;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/Intent;

    .line 2867
    .local v9, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2869
    .local v10, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 2871
    .local v11, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 2873
    .local v12, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2875
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2876
    .local v17, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2877
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move v4, v11

    move-object v5, v12

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2878
    .local v0, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2879
    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2880
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2853
    .end local v0    # "_result":Landroid/content/ComponentName;
    .end local v8    # "_arg0":Landroid/app/IApplicationThread;
    .end local v9    # "_arg1":Landroid/content/Intent;
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg4":Ljava/lang/String;
    .end local v16    # "_arg5":Ljava/lang/String;
    .end local v17    # "_arg6":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_f7
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2854
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2855
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2856
    .local v1, "_result":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2857
    const/4 v2, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2858
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2839
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":Landroid/app/PendingIntent;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_f8
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2841
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2843
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2844
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2845
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v3

    .line 2846
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2847
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2848
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2828
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_f9
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 2830
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    sget-object v1, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2831
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2832
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 2833
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2834
    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2810
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_fa
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 2812
    .restart local v6    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2814
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2816
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2818
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 2819
    .local v10, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2820
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v0

    .line 2821
    .local v0, "_result":Landroid/app/ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2822
    const/4 v12, 0x1

    invoke-virtual {v14, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2823
    move-object/from16 v34, v13

    move v13, v12

    move-object v12, v15

    move-object/from16 v15, v34

    goto/16 :goto_0

    .line 2798
    .end local v0    # "_result":Landroid/app/ContentProviderHolder;
    .end local v6    # "_arg0":Landroid/app/IApplicationThread;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_fb
    move-object/from16 v28, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2800
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2801
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2802
    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v2

    .line 2803
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2804
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2805
    move-object/from16 v34, v13

    move v13, v12

    move-object v12, v15

    move-object/from16 v15, v34

    goto/16 :goto_0

    .line 2781
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_fc
    move-object/from16 v28, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 2783
    .restart local v6    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2785
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2787
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2789
    .restart local v9    # "_arg3":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Bundle;

    .line 2790
    .local v10, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2791
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 2792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2793
    move-object/from16 v34, v13

    move v13, v12

    move-object v12, v15

    move-object/from16 v15, v34

    goto/16 :goto_0

    .line 2771
    .end local v6    # "_arg0":Landroid/app/IApplicationThread;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Landroid/os/Bundle;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_fd
    move-object/from16 v28, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2772
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2773
    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getTasks(I)Ljava/util/List;

    move-result-object v1

    .line 2774
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2775
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2776
    move-object/from16 v34, v13

    move v13, v12

    move-object v12, v15

    move-object/from16 v15, v34

    goto/16 :goto_0

    .line 2760
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_fe
    move-object/from16 v28, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 2762
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2763
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2764
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->attachApplication(Landroid/app/IApplicationThread;J)V

    .line 2765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2766
    move-object/from16 v34, v13

    move v13, v12

    move-object v12, v15

    move-object/from16 v15, v34

    goto/16 :goto_0

    .line 2742
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    .end local v1    # "_arg1":J
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ff
    move-object/from16 v28, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 2744
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2746
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 2748
    .local v9, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Bundle;

    .line 2750
    .local v10, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 2752
    .local v11, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2753
    .local v16, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2754
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 2755
    move-object/from16 v34, v13

    move v13, v12

    move-object v12, v15

    move-object/from16 v15, v34

    goto/16 :goto_0

    .line 2729
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg5":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_100
    move-object/from16 v28, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 2731
    .restart local v0    # "_arg0":Landroid/app/IApplicationThread;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2733
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2734
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2735
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 2736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2737
    move-object/from16 v34, v13

    move v13, v12

    move-object v12, v15

    move-object/from16 v15, v34

    goto/16 :goto_0

    .line 2689
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_101
    move-object/from16 v28, v11

    move-object v14, v12

    move v12, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v17

    .local v17, "_arg0":Landroid/app/IApplicationThread;
    move-object/from16 v1, v17

    .line 2691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .local v18, "_arg1":Ljava/lang/String;
    move-object/from16 v2, v18

    .line 2693
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    .local v19, "_arg2":Landroid/content/Intent;
    move-object/from16 v3, v19

    .line 2695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .local v20, "_arg3":Ljava/lang/String;
    move-object/from16 v4, v20

    .line 2697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .local v21, "_arg4":Landroid/content/IIntentReceiver;
    move-object/from16 v5, v21

    .line 2699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .local v22, "_arg5":I
    move/from16 v6, v22

    .line 2701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .local v23, "_arg6":Ljava/lang/String;
    move-object/from16 v7, v23

    .line 2703
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Bundle;

    .local v24, "_arg7":Landroid/os/Bundle;
    move-object/from16 v8, v24

    .line 2705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v25

    .local v25, "_arg8":[Ljava/lang/String;
    move-object/from16 v9, v25

    .line 2707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v26

    .local v26, "_arg9":[Ljava/lang/String;
    move-object/from16 v10, v26

    .line 2709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v27

    .local v27, "_arg10":[Ljava/lang/String;
    move-object/from16 v11, v27

    .line 2711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    move v0, v12

    .local v29, "_arg11":I
    move/from16 v12, v29

    .line 2713
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Landroid/os/Bundle;

    move-object v0, v13

    .local v30, "_arg12":Landroid/os/Bundle;
    move-object/from16 v13, v30

    .line 2715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v31

    .local v31, "_arg13":Z
    move/from16 v14, v31

    .line 2717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v32

    .local v32, "_arg14":Z
    move/from16 v15, v32

    .line 2719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .local v33, "_arg15":I
    move/from16 v16, v33

    .line 2720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2721
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v16}, Landroid/app/IActivityManager$Stub;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    .line 2722
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2723
    move-object/from16 v14, p3

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2724
    move-object/from16 v12, p0

    move-object/from16 v15, p2

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2655
    .end local v0    # "_result":I
    .end local v17    # "_arg0":Landroid/app/IApplicationThread;
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Landroid/content/Intent;
    .end local v20    # "_arg3":Ljava/lang/String;
    .end local v21    # "_arg4":Landroid/content/IIntentReceiver;
    .end local v22    # "_arg5":I
    .end local v23    # "_arg6":Ljava/lang/String;
    .end local v24    # "_arg7":Landroid/os/Bundle;
    .end local v25    # "_arg8":[Ljava/lang/String;
    .end local v26    # "_arg9":[Ljava/lang/String;
    .end local v27    # "_arg10":[Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .end local v29    # "_arg11":I
    .end local v30    # "_arg12":Landroid/os/Bundle;
    .end local v31    # "_arg13":Z
    .end local v32    # "_arg14":Z
    .end local v33    # "_arg15":I
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_102
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v15

    .line 2657
    .local v15, "_arg0":Landroid/app/IApplicationThread;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v13, p2

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/Intent;

    .line 2659
    .local v16, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 2661
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v18

    .line 2663
    .local v18, "_arg3":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 2665
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2667
    .local v20, "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Bundle;

    .line 2669
    .local v21, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v22

    .line 2671
    .local v22, "_arg7":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 2673
    .local v23, "_arg8":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Bundle;

    .line 2675
    .local v24, "_arg9":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    .line 2677
    .local v25, "_arg10":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 2679
    .local v26, "_arg11":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2680
    .local v27, "_arg12":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2681
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move/from16 v9, v23

    move-object/from16 v10, v24

    move/from16 v11, v25

    move/from16 v12, v26

    move-object/from16 v29, v15

    move-object v15, v13

    .end local v15    # "_arg0":Landroid/app/IApplicationThread;
    .local v29, "_arg0":Landroid/app/IApplicationThread;
    move/from16 v13, v27

    invoke-virtual/range {v0 .. v13}, Landroid/app/IActivityManager$Stub;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    .line 2682
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2683
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2684
    move-object/from16 v12, p0

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2646
    .end local v0    # "_result":I
    .end local v16    # "_arg1":Landroid/content/Intent;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Landroid/content/IIntentReceiver;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":Landroid/os/Bundle;
    .end local v22    # "_arg7":[Ljava/lang/String;
    .end local v23    # "_arg8":I
    .end local v24    # "_arg9":Landroid/os/Bundle;
    .end local v25    # "_arg10":Z
    .end local v26    # "_arg11":Z
    .end local v27    # "_arg12":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .end local v29    # "_arg0":Landroid/app/IApplicationThread;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_103
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v15, v13

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v0

    .line 2647
    .local v0, "_arg0":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2648
    move-object/from16 v12, p0

    invoke-virtual {v12, v0}, Landroid/app/IActivityManager$Stub;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 2649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2650
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2620
    .end local v0    # "_arg0":Landroid/content/IIntentReceiver;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_104
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v10

    .line 2622
    .local v10, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 2624
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2626
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2628
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v17

    .line 2630
    .local v17, "_arg4":Landroid/content/IIntentReceiver;
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/IntentFilter;

    .line 2632
    .local v18, "_arg5":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 2634
    .local v19, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 2636
    .local v20, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 2637
    .local v21, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2638
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v13

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v8, v20

    move/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    .line 2639
    .local v0, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2640
    const/4 v9, 0x1

    invoke-virtual {v14, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2641
    move v13, v9

    goto/16 :goto_0

    .line 2598
    .end local v0    # "_result":Landroid/content/Intent;
    .end local v10    # "_arg0":Landroid/app/IApplicationThread;
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Landroid/content/IIntentReceiver;
    .end local v18    # "_arg5":Landroid/content/IntentFilter;
    .end local v19    # "_arg6":Ljava/lang/String;
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_105
    move v9, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v8

    .line 2600
    .local v8, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2602
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v11

    .line 2604
    .local v11, "_arg2":Landroid/content/IIntentReceiver;
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/IntentFilter;

    .line 2606
    .local v13, "_arg3":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2608
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2610
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 2611
    .local v18, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2612
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v10

    move-object v3, v11

    move-object v4, v13

    move-object/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    .line 2613
    .restart local v0    # "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2614
    invoke-virtual {v14, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2615
    move v13, v9

    goto/16 :goto_0

    .line 2582
    .end local v0    # "_result":Landroid/content/Intent;
    .end local v8    # "_arg0":Landroid/app/IApplicationThread;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg3":Landroid/content/IntentFilter;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v17    # "_arg5":I
    .end local v18    # "_arg6":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_106
    move v9, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2584
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2586
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 2588
    .local v2, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2589
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2590
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v4

    .line 2591
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2592
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2593
    move v13, v9

    goto/16 :goto_0

    .line 2575
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/Intent;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_107
    move v9, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->unhandledBack()V

    .line 2576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2577
    move v13, v9

    goto/16 :goto_0

    .line 2546
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_108
    move v9, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v13

    .line 2548
    .local v13, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2550
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 2552
    .local v17, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    .line 2554
    .local v18, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 2556
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    .line 2558
    .local v20, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 2560
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 2562
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 2564
    .restart local v23    # "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/app/ProfilerInfo;

    .line 2566
    .local v24, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    .line 2567
    .local v25, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2568
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move v11, v9

    move/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v26, v13

    move v13, v11

    .end local v13    # "_arg0":Landroid/app/IApplicationThread;
    .local v26, "_arg0":Landroid/app/IApplicationThread;
    move-object/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityManager$Stub;->startActivityWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    .line 2569
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2570
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2571
    goto/16 :goto_0

    .line 2518
    .end local v0    # "_result":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Landroid/content/Intent;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Landroid/os/IBinder;
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":I
    .end local v23    # "_arg8":I
    .end local v24    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v25    # "_arg10":Landroid/os/Bundle;
    .end local v26    # "_arg0":Landroid/app/IApplicationThread;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_109
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v11

    .line 2520
    .local v11, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2522
    .restart local v16    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    .line 2524
    .local v17, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2526
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 2528
    .local v19, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2530
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 2532
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 2534
    .restart local v22    # "_arg7":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/app/ProfilerInfo;

    .line 2536
    .local v23, "_arg8":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Bundle;

    .line 2537
    .local v24, "_arg9":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2538
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    invoke-virtual/range {v0 .. v10}, Landroid/app/IActivityManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    .line 2539
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2540
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2541
    goto/16 :goto_0

    .line 2507
    .end local v0    # "_result":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Landroid/content/Intent;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Landroid/os/IBinder;
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":I
    .end local v23    # "_arg8":Landroid/app/ProfilerInfo;
    .end local v24    # "_arg9":Landroid/os/Bundle;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_10a
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2509
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 2510
    .local v1, "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2511
    invoke-virtual {v12, v0, v1}, Landroid/app/IActivityManager$Stub;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V

    .line 2512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2513
    goto/16 :goto_0

    .line 2493
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_10b
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2495
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2497
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2498
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2499
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    .line 2500
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2501
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2502
    goto/16 :goto_0

    .line 2481
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_10c
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2483
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2484
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2485
    invoke-virtual {v12, v0, v1}, Landroid/app/IActivityManager$Stub;->getUidProcessState(ILjava/lang/String;)I

    move-result v2

    .line 2486
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2487
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2488
    goto/16 :goto_0

    .line 2469
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_10d
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2471
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2472
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2473
    invoke-virtual {v12, v0, v1}, Landroid/app/IActivityManager$Stub;->isUidActive(ILjava/lang/String;)Z

    move-result v2

    .line 2474
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2475
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2476
    goto :goto_0

    .line 2460
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_10e
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    .line 2461
    .local v0, "_arg0":Landroid/app/IUidObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2462
    invoke-virtual {v12, v0}, Landroid/app/IActivityManager$Stub;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 2463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2464
    goto :goto_0

    .line 2445
    .end local v0    # "_arg0":Landroid/app/IUidObserver;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_10f
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    .line 2447
    .restart local v0    # "_arg0":Landroid/app/IUidObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2449
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2451
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2452
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2453
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 2454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2455
    goto :goto_0

    .line 2435
    .end local v0    # "_arg0":Landroid/app/IUidObserver;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_110
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2436
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2437
    invoke-virtual {v12, v0}, Landroid/app/IActivityManager$Stub;->openContentUri(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2438
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2439
    invoke-virtual {v14, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2440
    nop

    .line 5633
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
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
