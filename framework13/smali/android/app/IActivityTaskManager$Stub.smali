.class public abstract Landroid/app/IActivityTaskManager$Stub;
.super Landroid/os/Binder;
.source "IActivityTaskManager.java"

# interfaces
.implements Landroid/app/IActivityTaskManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityTaskManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAppTask:I = 0x29

.field static final blacklist TRANSACTION_alwaysShowUnsupportedCompileSdkWarning:I = 0x4d

.field static final blacklist TRANSACTION_cancelRecentsAnimation:I = 0x21

.field static final blacklist TRANSACTION_cancelTaskWindowTransition:I = 0x45

.field static final blacklist TRANSACTION_clearAppLockedUnLockedApp:I = 0x69

.field static final blacklist TRANSACTION_clearLaunchParamsForPackages:I = 0x58

.field static final blacklist TRANSACTION_clearRecentTasks:I = 0x5c

.field static final blacklist TRANSACTION_detachNavigationBarFromApp:I = 0x5b

.field static final blacklist TRANSACTION_finishVoiceTask:I = 0x28

.field static final blacklist TRANSACTION_getActivityClientController:I = 0x12

.field static final blacklist TRANSACTION_getAllRootTaskInfos:I = 0x35

.field static final blacklist TRANSACTION_getAllRootTaskInfosOnDisplay:I = 0x37

.field static final blacklist TRANSACTION_getAppLockedCheckAction:I = 0x6b

.field static final blacklist TRANSACTION_getAppLockedLockType:I = 0x6a

.field static final blacklist TRANSACTION_getAppLockedPackageList:I = 0x66

.field static final blacklist TRANSACTION_getAppTaskThumbnailSize:I = 0x2a

.field static final blacklist TRANSACTION_getAppTasks:I = 0x25

.field static final blacklist TRANSACTION_getApplockLockedAppsClass:I = 0x74

.field static final blacklist TRANSACTION_getApplockLockedAppsPackage:I = 0x73

.field static final blacklist TRANSACTION_getApplockType:I = 0x75

.field static final blacklist TRANSACTION_getAssistContextExtras:I = 0x3a

.field static final blacklist TRANSACTION_getBoundsCompatAlignment:I = 0x84

.field static final blacklist TRANSACTION_getCutoutPolicy:I = 0x7a

.field static final blacklist TRANSACTION_getDeviceConfigurationInfo:I = 0x44

.field static final blacklist TRANSACTION_getFocusedRootTaskInfo:I = 0x1f

.field static final blacklist TRANSACTION_getFoldStarManagerService:I = 0x80

.field static final blacklist TRANSACTION_getFrontActivityScreenCompatMode:I = 0x13

.field static final blacklist TRANSACTION_getLastResumedActivityUserId:I = 0x48

.field static final blacklist TRANSACTION_getLockTaskModeState:I = 0x24

.field static final blacklist TRANSACTION_getMultiTaskingBinder:I = 0x60

.field static final blacklist TRANSACTION_getOrientationControlPolicy:I = 0x7c

.field static final blacklist TRANSACTION_getPackageAskScreenCompat:I = 0x56

.field static final blacklist TRANSACTION_getPackageScreenCompatMode:I = 0x54

.field static final blacklist TRANSACTION_getRecentTasks:I = 0x1a

.field static final blacklist TRANSACTION_getResumedTaskThumbnail:I = 0x64

.field static final blacklist TRANSACTION_getRootTaskInfo:I = 0x36

.field static final blacklist TRANSACTION_getRootTaskInfoOnDisplay:I = 0x38

.field static final blacklist TRANSACTION_getScpmVersion:I = 0x87

.field static final blacklist TRANSACTION_getSsecureHiddenAppsPackages:I = 0x77

.field static final blacklist TRANSACTION_getTaskBounds:I = 0x20

.field static final blacklist TRANSACTION_getTaskDescription:I = 0x1c

.field static final blacklist TRANSACTION_getTaskDescriptionIcon:I = 0x2c

.field static final blacklist TRANSACTION_getTaskSnapshot:I = 0x46

.field static final blacklist TRANSACTION_getTasks:I = 0x18

.field static final blacklist TRANSACTION_getVoiceInteractorPackageName:I = 0xa

.field static final blacklist TRANSACTION_getWindowOrganizerController:I = 0x41

.field static final blacklist TRANSACTION_hasWallpaperBackgroundForLetterbox:I = 0x82

.field static final blacklist TRANSACTION_isActivityStartAllowedOnDisplay:I = 0x10

.field static final blacklist TRANSACTION_isAppLockedPackage:I = 0x68

.field static final blacklist TRANSACTION_isAppLockedVerifying:I = 0x6d

.field static final blacklist TRANSACTION_isApplockEnabled:I = 0x76

.field static final blacklist TRANSACTION_isAssistDataAllowedOnCurrentActivity:I = 0x3d

.field static final blacklist TRANSACTION_isInLockTaskMode:I = 0x23

.field static final blacklist TRANSACTION_isTopActivityImmersive:I = 0x1b

.field static final blacklist TRANSACTION_keyguardGoingAway:I = 0x3f

.field static final blacklist TRANSACTION_killPackageProcesses:I = 0x7f

.field static final blacklist TRANSACTION_moveRootTaskToDisplay:I = 0x31

.field static final blacklist TRANSACTION_moveTaskToFront:I = 0x19

.field static final blacklist TRANSACTION_moveTaskToRootTask:I = 0x32

.field static final blacklist TRANSACTION_onPictureInPictureStateChanged:I = 0x5a

.field static final blacklist TRANSACTION_onSplashScreenViewCopyFinished:I = 0x59

.field static final blacklist TRANSACTION_registerRemoteAnimationForNextActivityStart:I = 0x4b

.field static final blacklist TRANSACTION_registerRemoteAnimationsForDisplay:I = 0x4c

.field static final blacklist TRANSACTION_registerTaskStackListener:I = 0x2d

.field static final blacklist TRANSACTION_releaseSomeActivities:I = 0x2b

.field static final blacklist TRANSACTION_removeAllVisibleRecentTasks:I = 0x17

.field static final blacklist TRANSACTION_removeRootTasksInWindowingModes:I = 0x33

.field static final blacklist TRANSACTION_removeRootTasksWithActivityTypes:I = 0x34

.field static final blacklist TRANSACTION_removeTask:I = 0x16

.field static final blacklist TRANSACTION_reportAssistContextExtras:I = 0x1d

.field static final blacklist TRANSACTION_requestAssistContextExtras:I = 0x3b

.field static final blacklist TRANSACTION_requestAssistDataForTask:I = 0x3e

.field static final blacklist TRANSACTION_requestAutofillData:I = 0x3c

.field static final blacklist TRANSACTION_requestWaitingForOccluding:I = 0x86

.field static final blacklist TRANSACTION_resetUserPackageSettings:I = 0x63

.field static final blacklist TRANSACTION_resizeTask:I = 0x30

.field static final blacklist TRANSACTION_resumeAppSwitches:I = 0x51

.field static final blacklist TRANSACTION_rotateDexCompatTask:I = 0x85

.field static final blacklist TRANSACTION_semRemoveTask:I = 0x5f

.field static final blacklist TRANSACTION_sendSaLoggingBroadcast:I = 0x61

.field static final blacklist TRANSACTION_sendSaLoggingBroadcastForSetting:I = 0x62

.field static final blacklist TRANSACTION_setActivityController:I = 0x52

.field static final blacklist TRANSACTION_setAppLockedUnLockPackage:I = 0x67

.field static final blacklist TRANSACTION_setAppLockedVerifying:I = 0x6c

.field static final blacklist TRANSACTION_setApplockEnabled:I = 0x71

.field static final blacklist TRANSACTION_setApplockLockedAppsClass:I = 0x6f

.field static final blacklist TRANSACTION_setApplockLockedAppsPackage:I = 0x6e

.field static final blacklist TRANSACTION_setApplockType:I = 0x70

.field static final blacklist TRANSACTION_setBoundsCompatAlignment:I = 0x83

.field static final blacklist TRANSACTION_setCustomSplashScreenTheme:I = 0x78

.field static final blacklist TRANSACTION_setCutoutPolicy:I = 0x79

.field static final blacklist TRANSACTION_setDisallowWhenLandscape:I = 0x7e

.field static final blacklist TRANSACTION_setFocusedRootTask:I = 0x1e

.field static final blacklist TRANSACTION_setFocusedTask:I = 0x15

.field static final blacklist TRANSACTION_setFrontActivityScreenCompatMode:I = 0x14

.field static final blacklist TRANSACTION_setLockScreenShown:I = 0x39

.field static final blacklist TRANSACTION_setOrientationControlDefault:I = 0x7d

.field static final blacklist TRANSACTION_setOrientationControlPolicy:I = 0x7b

.field static final blacklist TRANSACTION_setPackageAskScreenCompat:I = 0x57

.field static final blacklist TRANSACTION_setPackageScreenCompatMode:I = 0x55

.field static final blacklist TRANSACTION_setPersistentVrThread:I = 0x4f

.field static final blacklist TRANSACTION_setRunningRemoteTransitionDelegate:I = 0x5d

.field static final blacklist TRANSACTION_setSplitScreenResizing:I = 0x42

.field static final blacklist TRANSACTION_setSsecureHiddenAppsPackages:I = 0x72

.field static final blacklist TRANSACTION_setTaskResizeable:I = 0x2f

.field static final blacklist TRANSACTION_setUseLetterbox:I = 0x81

.field static final blacklist TRANSACTION_setVoiceKeepAwake:I = 0x53

.field static final blacklist TRANSACTION_setVrThread:I = 0x4e

.field static final blacklist TRANSACTION_startActivities:I = 0x2

.field static final blacklist TRANSACTION_startActivity:I = 0x1

.field static final blacklist TRANSACTION_startActivityAndWait:I = 0x7

.field static final blacklist TRANSACTION_startActivityAsCaller:I = 0xf

.field static final blacklist TRANSACTION_startActivityAsUser:I = 0x3

.field static final blacklist TRANSACTION_startActivityFromGameSession:I = 0xc

.field static final blacklist TRANSACTION_startActivityFromRecents:I = 0xe

.field static final blacklist TRANSACTION_startActivityIntentSender:I = 0x6

.field static final blacklist TRANSACTION_startActivityWithConfig:I = 0x8

.field static final blacklist TRANSACTION_startAppLockService:I = 0x65

.field static final blacklist TRANSACTION_startAssistantActivity:I = 0xb

.field static final blacklist TRANSACTION_startBackNavigation:I = 0x5e

.field static final blacklist TRANSACTION_startDreamActivity:I = 0x5

.field static final blacklist TRANSACTION_startNextMatchingActivity:I = 0x4

.field static final blacklist TRANSACTION_startRecentsActivity:I = 0xd

.field static final blacklist TRANSACTION_startSystemLockTaskMode:I = 0x26

.field static final blacklist TRANSACTION_startVoiceActivity:I = 0x9

.field static final blacklist TRANSACTION_stopAppSwitches:I = 0x50

.field static final blacklist TRANSACTION_stopSystemLockTaskMode:I = 0x27

.field static final blacklist TRANSACTION_supportsLocalVoiceInteraction:I = 0x43

.field static final blacklist TRANSACTION_suppressResizeConfigChanges:I = 0x40

.field static final blacklist TRANSACTION_takeTaskSnapshot:I = 0x47

.field static final blacklist TRANSACTION_unhandledBack:I = 0x11

.field static final blacklist TRANSACTION_unregisterTaskStackListener:I = 0x2e

.field static final blacklist TRANSACTION_updateConfiguration:I = 0x49

.field static final blacklist TRANSACTION_updateLockTaskFeatures:I = 0x4a

.field static final blacklist TRANSACTION_updateLockTaskPackages:I = 0x22


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 625
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 626
    const-string v0, "android.app.IActivityTaskManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityTaskManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IActivityTaskManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 634
    if-nez p0, :cond_0

    .line 635
    const/4 v0, 0x0

    return-object v0

    .line 637
    :cond_0
    const-string v0, "android.app.IActivityTaskManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 638
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IActivityTaskManager;

    if-eqz v1, :cond_1

    .line 639
    move-object v1, v0

    check-cast v1, Landroid/app/IActivityTaskManager;

    return-object v1

    .line 641
    :cond_1
    new-instance v1, Landroid/app/IActivityTaskManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 650
    packed-switch p0, :pswitch_data_0

    .line 1194
    const/4 v0, 0x0

    return-object v0

    .line 1190
    :pswitch_0
    const-string v0, "getScpmVersion"

    return-object v0

    .line 1186
    :pswitch_1
    const-string/jumbo v0, "requestWaitingForOccluding"

    return-object v0

    .line 1182
    :pswitch_2
    const-string/jumbo v0, "rotateDexCompatTask"

    return-object v0

    .line 1178
    :pswitch_3
    const-string v0, "getBoundsCompatAlignment"

    return-object v0

    .line 1174
    :pswitch_4
    const-string/jumbo v0, "setBoundsCompatAlignment"

    return-object v0

    .line 1170
    :pswitch_5
    const-string v0, "hasWallpaperBackgroundForLetterbox"

    return-object v0

    .line 1166
    :pswitch_6
    const-string/jumbo v0, "setUseLetterbox"

    return-object v0

    .line 1162
    :pswitch_7
    const-string v0, "getFoldStarManagerService"

    return-object v0

    .line 1158
    :pswitch_8
    const-string v0, "killPackageProcesses"

    return-object v0

    .line 1154
    :pswitch_9
    const-string/jumbo v0, "setDisallowWhenLandscape"

    return-object v0

    .line 1150
    :pswitch_a
    const-string/jumbo v0, "setOrientationControlDefault"

    return-object v0

    .line 1146
    :pswitch_b
    const-string v0, "getOrientationControlPolicy"

    return-object v0

    .line 1142
    :pswitch_c
    const-string/jumbo v0, "setOrientationControlPolicy"

    return-object v0

    .line 1138
    :pswitch_d
    const-string v0, "getCutoutPolicy"

    return-object v0

    .line 1134
    :pswitch_e
    const-string/jumbo v0, "setCutoutPolicy"

    return-object v0

    .line 1130
    :pswitch_f
    const-string/jumbo v0, "setCustomSplashScreenTheme"

    return-object v0

    .line 1126
    :pswitch_10
    const-string v0, "getSsecureHiddenAppsPackages"

    return-object v0

    .line 1122
    :pswitch_11
    const-string v0, "isApplockEnabled"

    return-object v0

    .line 1118
    :pswitch_12
    const-string v0, "getApplockType"

    return-object v0

    .line 1114
    :pswitch_13
    const-string v0, "getApplockLockedAppsClass"

    return-object v0

    .line 1110
    :pswitch_14
    const-string v0, "getApplockLockedAppsPackage"

    return-object v0

    .line 1106
    :pswitch_15
    const-string/jumbo v0, "setSsecureHiddenAppsPackages"

    return-object v0

    .line 1102
    :pswitch_16
    const-string/jumbo v0, "setApplockEnabled"

    return-object v0

    .line 1098
    :pswitch_17
    const-string/jumbo v0, "setApplockType"

    return-object v0

    .line 1094
    :pswitch_18
    const-string/jumbo v0, "setApplockLockedAppsClass"

    return-object v0

    .line 1090
    :pswitch_19
    const-string/jumbo v0, "setApplockLockedAppsPackage"

    return-object v0

    .line 1086
    :pswitch_1a
    const-string v0, "isAppLockedVerifying"

    return-object v0

    .line 1082
    :pswitch_1b
    const-string/jumbo v0, "setAppLockedVerifying"

    return-object v0

    .line 1078
    :pswitch_1c
    const-string v0, "getAppLockedCheckAction"

    return-object v0

    .line 1074
    :pswitch_1d
    const-string v0, "getAppLockedLockType"

    return-object v0

    .line 1070
    :pswitch_1e
    const-string v0, "clearAppLockedUnLockedApp"

    return-object v0

    .line 1066
    :pswitch_1f
    const-string v0, "isAppLockedPackage"

    return-object v0

    .line 1062
    :pswitch_20
    const-string/jumbo v0, "setAppLockedUnLockPackage"

    return-object v0

    .line 1058
    :pswitch_21
    const-string v0, "getAppLockedPackageList"

    return-object v0

    .line 1054
    :pswitch_22
    const-string/jumbo v0, "startAppLockService"

    return-object v0

    .line 1050
    :pswitch_23
    const-string v0, "getResumedTaskThumbnail"

    return-object v0

    .line 1046
    :pswitch_24
    const-string/jumbo v0, "resetUserPackageSettings"

    return-object v0

    .line 1042
    :pswitch_25
    const-string/jumbo v0, "sendSaLoggingBroadcastForSetting"

    return-object v0

    .line 1038
    :pswitch_26
    const-string/jumbo v0, "sendSaLoggingBroadcast"

    return-object v0

    .line 1034
    :pswitch_27
    const-string v0, "getMultiTaskingBinder"

    return-object v0

    .line 1030
    :pswitch_28
    const-string/jumbo v0, "semRemoveTask"

    return-object v0

    .line 1026
    :pswitch_29
    const-string/jumbo v0, "startBackNavigation"

    return-object v0

    .line 1022
    :pswitch_2a
    const-string/jumbo v0, "setRunningRemoteTransitionDelegate"

    return-object v0

    .line 1018
    :pswitch_2b
    const-string v0, "clearRecentTasks"

    return-object v0

    .line 1014
    :pswitch_2c
    const-string v0, "detachNavigationBarFromApp"

    return-object v0

    .line 1010
    :pswitch_2d
    const-string/jumbo v0, "onPictureInPictureStateChanged"

    return-object v0

    .line 1006
    :pswitch_2e
    const-string/jumbo v0, "onSplashScreenViewCopyFinished"

    return-object v0

    .line 1002
    :pswitch_2f
    const-string v0, "clearLaunchParamsForPackages"

    return-object v0

    .line 998
    :pswitch_30
    const-string/jumbo v0, "setPackageAskScreenCompat"

    return-object v0

    .line 994
    :pswitch_31
    const-string v0, "getPackageAskScreenCompat"

    return-object v0

    .line 990
    :pswitch_32
    const-string/jumbo v0, "setPackageScreenCompatMode"

    return-object v0

    .line 986
    :pswitch_33
    const-string v0, "getPackageScreenCompatMode"

    return-object v0

    .line 982
    :pswitch_34
    const-string/jumbo v0, "setVoiceKeepAwake"

    return-object v0

    .line 978
    :pswitch_35
    const-string/jumbo v0, "setActivityController"

    return-object v0

    .line 974
    :pswitch_36
    const-string/jumbo v0, "resumeAppSwitches"

    return-object v0

    .line 970
    :pswitch_37
    const-string/jumbo v0, "stopAppSwitches"

    return-object v0

    .line 966
    :pswitch_38
    const-string/jumbo v0, "setPersistentVrThread"

    return-object v0

    .line 962
    :pswitch_39
    const-string/jumbo v0, "setVrThread"

    return-object v0

    .line 958
    :pswitch_3a
    const-string v0, "alwaysShowUnsupportedCompileSdkWarning"

    return-object v0

    .line 954
    :pswitch_3b
    const-string/jumbo v0, "registerRemoteAnimationsForDisplay"

    return-object v0

    .line 950
    :pswitch_3c
    const-string/jumbo v0, "registerRemoteAnimationForNextActivityStart"

    return-object v0

    .line 946
    :pswitch_3d
    const-string/jumbo v0, "updateLockTaskFeatures"

    return-object v0

    .line 942
    :pswitch_3e
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    .line 938
    :pswitch_3f
    const-string v0, "getLastResumedActivityUserId"

    return-object v0

    .line 934
    :pswitch_40
    const-string/jumbo v0, "takeTaskSnapshot"

    return-object v0

    .line 930
    :pswitch_41
    const-string v0, "getTaskSnapshot"

    return-object v0

    .line 926
    :pswitch_42
    const-string v0, "cancelTaskWindowTransition"

    return-object v0

    .line 922
    :pswitch_43
    const-string v0, "getDeviceConfigurationInfo"

    return-object v0

    .line 918
    :pswitch_44
    const-string/jumbo v0, "supportsLocalVoiceInteraction"

    return-object v0

    .line 914
    :pswitch_45
    const-string/jumbo v0, "setSplitScreenResizing"

    return-object v0

    .line 910
    :pswitch_46
    const-string v0, "getWindowOrganizerController"

    return-object v0

    .line 906
    :pswitch_47
    const-string/jumbo v0, "suppressResizeConfigChanges"

    return-object v0

    .line 902
    :pswitch_48
    const-string v0, "keyguardGoingAway"

    return-object v0

    .line 898
    :pswitch_49
    const-string/jumbo v0, "requestAssistDataForTask"

    return-object v0

    .line 894
    :pswitch_4a
    const-string v0, "isAssistDataAllowedOnCurrentActivity"

    return-object v0

    .line 890
    :pswitch_4b
    const-string/jumbo v0, "requestAutofillData"

    return-object v0

    .line 886
    :pswitch_4c
    const-string/jumbo v0, "requestAssistContextExtras"

    return-object v0

    .line 882
    :pswitch_4d
    const-string v0, "getAssistContextExtras"

    return-object v0

    .line 878
    :pswitch_4e
    const-string/jumbo v0, "setLockScreenShown"

    return-object v0

    .line 874
    :pswitch_4f
    const-string v0, "getRootTaskInfoOnDisplay"

    return-object v0

    .line 870
    :pswitch_50
    const-string v0, "getAllRootTaskInfosOnDisplay"

    return-object v0

    .line 866
    :pswitch_51
    const-string v0, "getRootTaskInfo"

    return-object v0

    .line 862
    :pswitch_52
    const-string v0, "getAllRootTaskInfos"

    return-object v0

    .line 858
    :pswitch_53
    const-string/jumbo v0, "removeRootTasksWithActivityTypes"

    return-object v0

    .line 854
    :pswitch_54
    const-string/jumbo v0, "removeRootTasksInWindowingModes"

    return-object v0

    .line 850
    :pswitch_55
    const-string/jumbo v0, "moveTaskToRootTask"

    return-object v0

    .line 846
    :pswitch_56
    const-string/jumbo v0, "moveRootTaskToDisplay"

    return-object v0

    .line 842
    :pswitch_57
    const-string/jumbo v0, "resizeTask"

    return-object v0

    .line 838
    :pswitch_58
    const-string/jumbo v0, "setTaskResizeable"

    return-object v0

    .line 834
    :pswitch_59
    const-string/jumbo v0, "unregisterTaskStackListener"

    return-object v0

    .line 830
    :pswitch_5a
    const-string/jumbo v0, "registerTaskStackListener"

    return-object v0

    .line 826
    :pswitch_5b
    const-string v0, "getTaskDescriptionIcon"

    return-object v0

    .line 822
    :pswitch_5c
    const-string/jumbo v0, "releaseSomeActivities"

    return-object v0

    .line 818
    :pswitch_5d
    const-string v0, "getAppTaskThumbnailSize"

    return-object v0

    .line 814
    :pswitch_5e
    const-string v0, "addAppTask"

    return-object v0

    .line 810
    :pswitch_5f
    const-string v0, "finishVoiceTask"

    return-object v0

    .line 806
    :pswitch_60
    const-string/jumbo v0, "stopSystemLockTaskMode"

    return-object v0

    .line 802
    :pswitch_61
    const-string/jumbo v0, "startSystemLockTaskMode"

    return-object v0

    .line 798
    :pswitch_62
    const-string v0, "getAppTasks"

    return-object v0

    .line 794
    :pswitch_63
    const-string v0, "getLockTaskModeState"

    return-object v0

    .line 790
    :pswitch_64
    const-string v0, "isInLockTaskMode"

    return-object v0

    .line 786
    :pswitch_65
    const-string/jumbo v0, "updateLockTaskPackages"

    return-object v0

    .line 782
    :pswitch_66
    const-string v0, "cancelRecentsAnimation"

    return-object v0

    .line 778
    :pswitch_67
    const-string v0, "getTaskBounds"

    return-object v0

    .line 774
    :pswitch_68
    const-string v0, "getFocusedRootTaskInfo"

    return-object v0

    .line 770
    :pswitch_69
    const-string/jumbo v0, "setFocusedRootTask"

    return-object v0

    .line 766
    :pswitch_6a
    const-string/jumbo v0, "reportAssistContextExtras"

    return-object v0

    .line 762
    :pswitch_6b
    const-string v0, "getTaskDescription"

    return-object v0

    .line 758
    :pswitch_6c
    const-string v0, "isTopActivityImmersive"

    return-object v0

    .line 754
    :pswitch_6d
    const-string v0, "getRecentTasks"

    return-object v0

    .line 750
    :pswitch_6e
    const-string/jumbo v0, "moveTaskToFront"

    return-object v0

    .line 746
    :pswitch_6f
    const-string v0, "getTasks"

    return-object v0

    .line 742
    :pswitch_70
    const-string/jumbo v0, "removeAllVisibleRecentTasks"

    return-object v0

    .line 738
    :pswitch_71
    const-string/jumbo v0, "removeTask"

    return-object v0

    .line 734
    :pswitch_72
    const-string/jumbo v0, "setFocusedTask"

    return-object v0

    .line 730
    :pswitch_73
    const-string/jumbo v0, "setFrontActivityScreenCompatMode"

    return-object v0

    .line 726
    :pswitch_74
    const-string v0, "getFrontActivityScreenCompatMode"

    return-object v0

    .line 722
    :pswitch_75
    const-string v0, "getActivityClientController"

    return-object v0

    .line 718
    :pswitch_76
    const-string/jumbo v0, "unhandledBack"

    return-object v0

    .line 714
    :pswitch_77
    const-string v0, "isActivityStartAllowedOnDisplay"

    return-object v0

    .line 710
    :pswitch_78
    const-string/jumbo v0, "startActivityAsCaller"

    return-object v0

    .line 706
    :pswitch_79
    const-string/jumbo v0, "startActivityFromRecents"

    return-object v0

    .line 702
    :pswitch_7a
    const-string/jumbo v0, "startRecentsActivity"

    return-object v0

    .line 698
    :pswitch_7b
    const-string/jumbo v0, "startActivityFromGameSession"

    return-object v0

    .line 694
    :pswitch_7c
    const-string/jumbo v0, "startAssistantActivity"

    return-object v0

    .line 690
    :pswitch_7d
    const-string v0, "getVoiceInteractorPackageName"

    return-object v0

    .line 686
    :pswitch_7e
    const-string/jumbo v0, "startVoiceActivity"

    return-object v0

    .line 682
    :pswitch_7f
    const-string/jumbo v0, "startActivityWithConfig"

    return-object v0

    .line 678
    :pswitch_80
    const-string/jumbo v0, "startActivityAndWait"

    return-object v0

    .line 674
    :pswitch_81
    const-string/jumbo v0, "startActivityIntentSender"

    return-object v0

    .line 670
    :pswitch_82
    const-string/jumbo v0, "startDreamActivity"

    return-object v0

    .line 666
    :pswitch_83
    const-string/jumbo v0, "startNextMatchingActivity"

    return-object v0

    .line 662
    :pswitch_84
    const-string/jumbo v0, "startActivityAsUser"

    return-object v0

    .line 658
    :pswitch_85
    const-string/jumbo v0, "startActivities"

    return-object v0

    .line 654
    :pswitch_86
    const-string/jumbo v0, "startActivity"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 645
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 5390
    const/16 v0, 0x86

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 1201
    invoke-static {p1}, Landroid/app/IActivityTaskManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1205
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "android.app.IActivityTaskManager"

    .line 1206
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 1207
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 1217
    packed-switch v14, :pswitch_data_1

    .line 2752
    move-object v14, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1213
    :pswitch_0
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1214
    return v10

    .line 2745
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getScpmVersion()Ljava/lang/String;

    move-result-object v0

    .line 2746
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2747
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2748
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2737
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2738
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2739
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->requestWaitingForOccluding(I)V

    .line 2740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2741
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2728
    .end local v0    # "_arg0":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2729
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2730
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->rotateDexCompatTask(Landroid/os/IBinder;)V

    .line 2731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2732
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2720
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getBoundsCompatAlignment()I

    move-result v0

    .line 2721
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2722
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2723
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2712
    .end local v0    # "_result":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2713
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2714
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setBoundsCompatAlignment(I)V

    .line 2715
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2716
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2702
    .end local v0    # "_arg0":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2703
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2704
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->hasWallpaperBackgroundForLetterbox(I)Z

    move-result v1

    .line 2705
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2706
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2707
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2693
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2694
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2695
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setUseLetterbox(Z)V

    .line 2696
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2697
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2685
    .end local v0    # "_arg0":Z
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getFoldStarManagerService()Lcom/samsung/android/core/IFoldStarManager;

    move-result-object v0

    .line 2686
    .local v0, "_result":Lcom/samsung/android/core/IFoldStarManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2687
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2688
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2673
    .end local v0    # "_result":Lcom/samsung/android/core/IFoldStarManager;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2675
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2677
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2678
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2679
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->killPackageProcesses(Ljava/lang/String;ILjava/lang/String;)V

    .line 2680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2681
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2664
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2665
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2666
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setDisallowWhenLandscape(Z)V

    .line 2667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2668
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2655
    .end local v0    # "_arg0":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2656
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2657
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setOrientationControlDefault(Z)V

    .line 2658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2659
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2643
    .end local v0    # "_arg0":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2645
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2646
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2647
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getOrientationControlPolicy(ILjava/lang/String;)I

    move-result v2

    .line 2648
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2649
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2650
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2630
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2632
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2634
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2635
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2636
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setOrientationControlPolicy(ILjava/lang/String;I)V

    .line 2637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2638
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2618
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2620
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2621
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2622
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getCutoutPolicy(ILjava/lang/String;)I

    move-result v2

    .line 2623
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2624
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2625
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2605
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2607
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2609
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2610
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2611
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setCutoutPolicy(ILjava/lang/String;I)V

    .line 2612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2613
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2592
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2594
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2596
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2597
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2598
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setCustomSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2600
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2584
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getSsecureHiddenAppsPackages()Ljava/lang/String;

    move-result-object v0

    .line 2585
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2586
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2587
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2577
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isApplockEnabled()Z

    move-result v0

    .line 2578
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2579
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2580
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2570
    .end local v0    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getApplockType()I

    move-result v0

    .line 2571
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2572
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2573
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2563
    .end local v0    # "_result":I
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getApplockLockedAppsClass()Ljava/lang/String;

    move-result-object v0

    .line 2564
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2565
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2566
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2556
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getApplockLockedAppsPackage()Ljava/lang/String;

    move-result-object v0

    .line 2557
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2558
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2559
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2548
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2549
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2550
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setSsecureHiddenAppsPackages(Ljava/lang/String;)V

    .line 2551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2552
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2539
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2540
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2541
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setApplockEnabled(Z)V

    .line 2542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2543
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2530
    .end local v0    # "_arg0":Z
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2531
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2532
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setApplockType(I)V

    .line 2533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2534
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2521
    .end local v0    # "_arg0":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2522
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2523
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setApplockLockedAppsClass(Ljava/lang/String;)V

    .line 2524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2525
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2512
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2513
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2514
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setApplockLockedAppsPackage(Ljava/lang/String;)V

    .line 2515
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2516
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2502
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2503
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2504
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v1

    .line 2505
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2506
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2507
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2491
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2493
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2494
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2495
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 2496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2497
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2483
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v0

    .line 2484
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2485
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2486
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2476
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAppLockedLockType()Ljava/lang/String;

    move-result-object v0

    .line 2477
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2478
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2479
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2470
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->clearAppLockedUnLockedApp()V

    .line 2471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2472
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2461
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2462
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2463
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v1

    .line 2464
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2465
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2466
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2452
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2453
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2454
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setAppLockedUnLockPackage(Ljava/lang/String;)V

    .line 2455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2456
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2444
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAppLockedPackageList()Ljava/util/List;

    move-result-object v0

    .line 2445
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2446
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2447
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2430
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2432
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2434
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2436
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2437
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2438
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->startAppLockService(Landroid/os/IBinder;Landroid/content/Intent;ZLjava/lang/String;)V

    .line 2439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2440
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2420
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2421
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2422
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getResumedTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2423
    .local v1, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2424
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2425
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2409
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Bitmap;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2411
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2412
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2413
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->resetUserPackageSettings(II)V

    .line 2414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2415
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2397
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2399
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2401
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2402
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2403
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->sendSaLoggingBroadcastForSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2404
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2383
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2385
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2387
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2389
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 2390
    .local v16, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2391
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->sendSaLoggingBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2392
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2375
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":J
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getMultiTaskingBinder()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    .line 2376
    .local v0, "_result":Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2377
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2378
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2364
    .end local v0    # "_result":Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2366
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2367
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2368
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->semRemoveTask(II)Z

    move-result v2

    .line 2369
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2370
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2371
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2354
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2355
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2356
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->startBackNavigation(Z)Landroid/window/BackNavigationInfo;

    move-result-object v1

    .line 2357
    .local v1, "_result":Landroid/window/BackNavigationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2358
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2359
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2345
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Landroid/window/BackNavigationInfo;
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 2346
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2347
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    .line 2348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2349
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2335
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2336
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2337
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->clearRecentTasks(I)Z

    move-result v1

    .line 2338
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2339
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2340
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2326
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2327
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2328
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->detachNavigationBarFromApp(Landroid/os/IBinder;)V

    .line 2329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2330
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2317
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_2e
    sget-object v0, Landroid/app/PictureInPictureUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureUiState;

    .line 2318
    .local v0, "_arg0":Landroid/app/PictureInPictureUiState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2319
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->onPictureInPictureStateChanged(Landroid/app/PictureInPictureUiState;)V

    .line 2320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2321
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2306
    .end local v0    # "_arg0":Landroid/app/PictureInPictureUiState;
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2308
    .local v0, "_arg0":I
    sget-object v1, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    .line 2309
    .local v1, "_arg1":Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2310
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    .line 2311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2312
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2297
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2298
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2299
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->clearLaunchParamsForPackages(Ljava/util/List;)V

    .line 2300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2301
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2286
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2288
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2289
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2290
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2292
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2276
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2277
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2278
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v1

    .line 2279
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2280
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2281
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2265
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2267
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2268
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2269
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 2270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2271
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2255
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2256
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2257
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v1

    .line 2258
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2259
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2260
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2244
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v0

    .line 2246
    .local v0, "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2247
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2248
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 2249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2250
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2233
    .end local v0    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    .end local v1    # "_arg1":Z
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    .line 2235
    .local v0, "_arg0":Landroid/app/IActivityController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2236
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2237
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 2238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2239
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2226
    .end local v0    # "_arg0":Landroid/app/IActivityController;
    .end local v1    # "_arg1":Z
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->resumeAppSwitches()V

    .line 2227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2228
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2220
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->stopAppSwitches()V

    .line 2221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2222
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2212
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2213
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2214
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setPersistentVrThread(I)V

    .line 2215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2216
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2203
    .end local v0    # "_arg0":I
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2204
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2205
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setVrThread(I)V

    .line 2206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2207
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2194
    .end local v0    # "_arg0":I
    :pswitch_3b
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2195
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2196
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V

    .line 2197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2198
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2183
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2185
    .local v0, "_arg0":I
    sget-object v1, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationDefinition;

    .line 2186
    .local v1, "_arg1":Landroid/view/RemoteAnimationDefinition;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2187
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V

    .line 2188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2189
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2170
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/RemoteAnimationDefinition;
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2172
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationAdapter;

    .line 2174
    .local v1, "_arg1":Landroid/view/RemoteAnimationAdapter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2175
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2176
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V

    .line 2177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2178
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2159
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/view/RemoteAnimationAdapter;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2161
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2162
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2163
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskFeatures(II)V

    .line 2164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2165
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2149
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_3f
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 2150
    .local v0, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2151
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v1

    .line 2152
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2153
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2154
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2141
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    .end local v1    # "_result":Z
    :pswitch_40
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getLastResumedActivityUserId()I

    move-result v0

    .line 2142
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2143
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2144
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2132
    .end local v0    # "_result":I
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2133
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2134
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->takeTaskSnapshot(I)Landroid/window/TaskSnapshot;

    move-result-object v1

    .line 2135
    .local v1, "_result":Landroid/window/TaskSnapshot;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2136
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2137
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2120
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/window/TaskSnapshot;
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2122
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2123
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2124
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v2

    .line 2125
    .local v2, "_result":Landroid/window/TaskSnapshot;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2126
    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2127
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2111
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Landroid/window/TaskSnapshot;
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2112
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2113
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->cancelTaskWindowTransition(I)V

    .line 2114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2115
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2103
    .end local v0    # "_arg0":I
    :pswitch_44
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    .line 2104
    .local v0, "_result":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2105
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2106
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2096
    .end local v0    # "_result":Landroid/content/pm/ConfigurationInfo;
    :pswitch_45
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->supportsLocalVoiceInteraction()Z

    move-result v0

    .line 2097
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2098
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2099
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2088
    .end local v0    # "_result":Z
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2089
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2090
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setSplitScreenResizing(Z)V

    .line 2091
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2092
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2080
    .end local v0    # "_arg0":Z
    :pswitch_47
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    .line 2081
    .local v0, "_result":Landroid/window/IWindowOrganizerController;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2082
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2083
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2072
    .end local v0    # "_result":Landroid/window/IWindowOrganizerController;
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2073
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2074
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->suppressResizeConfigChanges(Z)V

    .line 2075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2076
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2064
    .end local v0    # "_arg0":Z
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2065
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2066
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->keyguardGoingAway(I)V

    .line 2067
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2050
    .end local v0    # "_arg0":I
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    .line 2052
    .local v0, "_arg0":Landroid/app/IAssistDataReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2054
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2055
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2056
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->requestAssistDataForTask(Landroid/app/IAssistDataReceiver;ILjava/lang/String;)Z

    move-result v3

    .line 2057
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2058
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2059
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2042
    .end local v0    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    .line 2043
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2044
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2045
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2027
    .end local v0    # "_result":Z
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    .line 2029
    .local v0, "_arg0":Landroid/app/IAssistDataReceiver;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2031
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2033
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2034
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2035
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v4

    .line 2036
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2037
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2038
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 2007
    .end local v0    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2009
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v8

    .line 2011
    .local v8, "_arg1":Landroid/app/IAssistDataReceiver;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Bundle;

    .line 2013
    .local v9, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 2015
    .local v16, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 2017
    .local v17, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 2018
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2019
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityTaskManager$Stub;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v0

    .line 2020
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2021
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2022
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1997
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/app/IAssistDataReceiver;
    .end local v9    # "_arg2":Landroid/os/Bundle;
    .end local v16    # "_arg3":Landroid/os/IBinder;
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":Z
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1998
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1999
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v1

    .line 2000
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2001
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2002
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1987
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/Bundle;
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1989
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1990
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1991
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setLockScreenShown(ZZ)V

    .line 1992
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1973
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1975
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1977
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1978
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1979
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfoOnDisplay(III)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v3

    .line 1980
    .local v3, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1981
    invoke-virtual {v12, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1982
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1963
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1964
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1965
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object v1

    .line 1966
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1967
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1968
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1951
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1953
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1954
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1955
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v2

    .line 1956
    .local v2, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1957
    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1958
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1943
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_53
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v0

    .line 1944
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1945
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1946
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1935
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1936
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1937
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksWithActivityTypes([I)V

    .line 1938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1939
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1926
    .end local v0    # "_arg0":[I
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1927
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1928
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksInWindowingModes([I)V

    .line 1929
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1930
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1913
    .end local v0    # "_arg0":[I
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1915
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1917
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1918
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1919
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToRootTask(IIZ)V

    .line 1920
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1921
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1902
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1904
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1905
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1906
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->moveRootTaskToDisplay(II)V

    .line 1907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1908
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1888
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1890
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1892
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1893
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1894
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)Z

    move-result v3

    .line 1895
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1896
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1897
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1877
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1879
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1880
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1881
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setTaskResizeable(II)V

    .line 1882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1883
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1868
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    .line 1869
    .local v0, "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1870
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1871
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1872
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1859
    .end local v0    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    .line 1860
    .restart local v0    # "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1861
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1862
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1863
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1847
    .end local v0    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1849
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1850
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1851
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1852
    .local v2, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1853
    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1854
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1839
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 1840
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1841
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 1842
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1831
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    :pswitch_5e
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    .line 1832
    .local v0, "_result":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1833
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1834
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1816
    .end local v0    # "_result":Landroid/graphics/Point;
    :pswitch_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1818
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1820
    .local v1, "_arg1":Landroid/content/Intent;
    sget-object v2, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$TaskDescription;

    .line 1822
    .local v2, "_arg2":Landroid/app/ActivityManager$TaskDescription;
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1823
    .local v3, "_arg3":Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1824
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v4

    .line 1825
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1826
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1827
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1807
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Landroid/app/ActivityManager$TaskDescription;
    .end local v3    # "_arg3":Landroid/graphics/Bitmap;
    .end local v4    # "_result":I
    :pswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v0

    .line 1808
    .local v0, "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1809
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 1810
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1811
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1800
    .end local v0    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_61
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->stopSystemLockTaskMode()V

    .line 1801
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1802
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1792
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1793
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1794
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->startSystemLockTaskMode(I)V

    .line 1795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1796
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1782
    .end local v0    # "_arg0":I
    :pswitch_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1783
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1784
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1785
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1786
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 1787
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1774
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_64
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getLockTaskModeState()I

    move-result v0

    .line 1775
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1777
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1767
    .end local v0    # "_result":I
    :pswitch_65
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isInLockTaskMode()Z

    move-result v0

    .line 1768
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1769
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1770
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1757
    .end local v0    # "_result":Z
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1759
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1760
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1761
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 1762
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1763
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1748
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1749
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1750
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->cancelRecentsAnimation(Z)V

    .line 1751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1752
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1738
    .end local v0    # "_arg0":Z
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1739
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1740
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1741
    .local v1, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1742
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1743
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1730
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Rect;
    :pswitch_69
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    .line 1731
    .local v0, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1732
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1733
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1722
    .end local v0    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1723
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1724
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setFocusedRootTask(I)V

    .line 1725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1726
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1705
    .end local v0    # "_arg0":I
    :pswitch_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1707
    .local v6, "_arg0":Landroid/os/IBinder;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    .line 1709
    .local v7, "_arg1":Landroid/os/Bundle;
    sget-object v0, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/assist/AssistStructure;

    .line 1711
    .local v8, "_arg2":Landroid/app/assist/AssistStructure;
    sget-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/assist/AssistContent;

    .line 1713
    .local v9, "_arg3":Landroid/app/assist/AssistContent;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/net/Uri;

    .line 1714
    .local v16, "_arg4":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1715
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 1716
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1717
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1695
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    .end local v8    # "_arg2":Landroid/app/assist/AssistStructure;
    .end local v9    # "_arg3":Landroid/app/assist/AssistContent;
    .end local v16    # "_arg4":Landroid/net/Uri;
    :pswitch_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1696
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1697
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1

    .line 1698
    .local v1, "_result":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1699
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1700
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1687
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_6d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isTopActivityImmersive()Z

    move-result v0

    .line 1688
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1689
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1690
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1674
    .end local v0    # "_result":Z
    :pswitch_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1676
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1678
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1679
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1680
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 1681
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1682
    invoke-virtual {v12, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1683
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1657
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :pswitch_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1659
    .local v6, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1661
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1663
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1665
    .local v9, "_arg3":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 1666
    .local v16, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1667
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 1668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1669
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1643
    .end local v6    # "_arg0":Landroid/app/IApplicationThread;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":Landroid/os/Bundle;
    :pswitch_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1645
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1647
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1648
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1649
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getTasks(IZZ)Ljava/util/List;

    move-result-object v3

    .line 1650
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1651
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1652
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1636
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_71
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->removeAllVisibleRecentTasks()V

    .line 1637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1638
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1627
    :pswitch_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1628
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1629
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->removeTask(I)Z

    move-result v1

    .line 1630
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1631
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1632
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1618
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1619
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1620
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setFocusedTask(I)V

    .line 1621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1609
    .end local v0    # "_arg0":I
    :pswitch_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1610
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1611
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setFrontActivityScreenCompatMode(I)V

    .line 1612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1613
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1601
    .end local v0    # "_arg0":I
    :pswitch_75
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getFrontActivityScreenCompatMode()I

    move-result v0

    .line 1602
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1603
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1594
    .end local v0    # "_result":I
    :pswitch_76
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    .line 1595
    .local v0, "_result":Landroid/app/IActivityClientController;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1596
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1597
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1588
    .end local v0    # "_result":Landroid/app/IActivityClientController;
    :pswitch_77
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->unhandledBack()V

    .line 1589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1573
    :pswitch_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1575
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1577
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1579
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1580
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1581
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z

    move-result v4

    .line 1582
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1583
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1584
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1541
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    .line 1543
    .local v16, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1545
    .local v17, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    .line 1547
    .local v18, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1549
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    .line 1551
    .local v20, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1553
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1555
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1557
    .local v23, "_arg7":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/app/ProfilerInfo;

    .line 1559
    .local v24, "_arg8":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    .line 1561
    .local v25, "_arg9":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 1563
    .local v26, "_arg10":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1564
    .local v27, "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1565
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move v14, v10

    move-object/from16 v10, v25

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move/from16 v11, v26

    move-object v14, v12

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    .line 1566
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1567
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1568
    goto/16 :goto_0

    .line 1529
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Landroid/app/IApplicationThread;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Landroid/content/Intent;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Landroid/os/IBinder;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":Landroid/app/ProfilerInfo;
    .end local v25    # "_arg9":Landroid/os/Bundle;
    .end local v26    # "_arg10":Z
    .end local v27    # "_arg11":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7a
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1531
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1532
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1533
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v2

    .line 1534
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1535
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1536
    goto/16 :goto_0

    .line 1516
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7b
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1518
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1520
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IRecentsAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationRunner;

    move-result-object v3

    .line 1521
    .local v3, "_arg2":Landroid/view/IRecentsAnimationRunner;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1522
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->startRecentsActivity(Landroid/content/Intent;JLandroid/view/IRecentsAnimationRunner;)V

    .line 1523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1524
    goto/16 :goto_0

    .line 1492
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":Landroid/view/IRecentsAnimationRunner;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7c
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v9

    .line 1494
    .local v9, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1496
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1498
    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1500
    .local v12, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1502
    .local v16, "_arg4":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    .line 1504
    .local v17, "_arg5":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1506
    .local v18, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1507
    .local v19, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1508
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move v4, v12

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I

    move-result v0

    .line 1509
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1510
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1511
    goto/16 :goto_0

    .line 1468
    .end local v0    # "_result":I
    .end local v9    # "_arg0":Landroid/app/IApplicationThread;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":Landroid/content/Intent;
    .end local v18    # "_arg6":I
    .end local v19    # "_arg7":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_7d
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1470
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1472
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1474
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1476
    .restart local v12    # "_arg3":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/Intent;

    .line 1478
    .local v16, "_arg4":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1480
    .local v17, "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 1482
    .local v18, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1483
    .restart local v19    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1484
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v0

    .line 1485
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1486
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1487
    goto/16 :goto_0

    .line 1458
    .end local v0    # "_result":I
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg3":I
    .end local v16    # "_arg4":Landroid/content/Intent;
    .end local v17    # "_arg5":Ljava/lang/String;
    .end local v18    # "_arg6":Landroid/os/Bundle;
    .end local v19    # "_arg7":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_7e
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1459
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1460
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    .line 1461
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1462
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1463
    goto/16 :goto_0

    .line 1426
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7f
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1428
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1430
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1432
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1434
    .local v19, "_arg3":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/content/Intent;

    .line 1436
    .local v20, "_arg4":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1438
    .restart local v21    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v22

    .line 1440
    .local v22, "_arg6":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v23

    .line 1442
    .local v23, "_arg7":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1444
    .local v24, "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    .line 1446
    .local v25, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 1448
    .local v26, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1449
    .restart local v27    # "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1450
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    .line 1451
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1453
    goto/16 :goto_0

    .line 1394
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Landroid/content/Intent;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":Landroid/service/voice/IVoiceInteractionSession;
    .end local v23    # "_arg7":Lcom/android/internal/app/IVoiceInteractor;
    .end local v24    # "_arg8":I
    .end local v25    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v26    # "_arg10":Landroid/os/Bundle;
    .end local v27    # "_arg11":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_80
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    .line 1396
    .local v16, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1398
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1400
    .local v18, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    .line 1402
    .local v19, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1404
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    .line 1406
    .local v21, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1408
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1410
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1412
    .restart local v24    # "_arg8":I
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/content/res/Configuration;

    .line 1414
    .local v25, "_arg9":Landroid/content/res/Configuration;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 1416
    .restart local v26    # "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1417
    .restart local v27    # "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1418
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

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    .line 1419
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1421
    goto/16 :goto_0

    .line 1362
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
    .end local v25    # "_arg9":Landroid/content/res/Configuration;
    .end local v26    # "_arg10":Landroid/os/Bundle;
    .end local v27    # "_arg11":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_81
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    .line 1364
    .restart local v16    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1366
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1368
    .restart local v18    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    .line 1370
    .restart local v19    # "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1372
    .restart local v20    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    .line 1374
    .restart local v21    # "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1376
    .restart local v22    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1378
    .restart local v23    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1380
    .restart local v24    # "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    .line 1382
    .local v25, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 1384
    .restart local v26    # "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1385
    .restart local v27    # "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1386
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

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v0

    .line 1387
    .local v0, "_result":Landroid/app/WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1389
    goto/16 :goto_0

    .line 1332
    .end local v0    # "_result":Landroid/app/WaitResult;
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
    :pswitch_82
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v12

    .line 1334
    .local v12, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v16

    .line 1336
    .local v16, "_arg1":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 1338
    .local v17, "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    .line 1340
    .local v18, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1342
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    .line 1344
    .local v20, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1346
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1348
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1350
    .local v23, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1352
    .local v24, "_arg9":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    .line 1353
    .local v25, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1354
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, v24

    move-object/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    .line 1355
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1357
    goto/16 :goto_0

    .line 1322
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Landroid/app/IApplicationThread;
    .end local v16    # "_arg1":Landroid/content/IIntentSender;
    .end local v17    # "_arg2":Landroid/os/IBinder;
    .end local v18    # "_arg3":Landroid/content/Intent;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Landroid/os/IBinder;
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":I
    .end local v23    # "_arg8":I
    .end local v24    # "_arg9":I
    .end local v25    # "_arg10":Landroid/os/Bundle;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_83
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1323
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1324
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->startDreamActivity(Landroid/content/Intent;)Z

    move-result v1

    .line 1325
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1326
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1327
    goto/16 :goto_0

    .line 1308
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_84
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1310
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1312
    .local v1, "_arg1":Landroid/content/Intent;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1313
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1314
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v3

    .line 1315
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1316
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1317
    goto/16 :goto_0

    .line 1276
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_85
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    .line 1278
    .local v16, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1280
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1282
    .local v18, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    .line 1284
    .local v19, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1286
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    .line 1288
    .local v21, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1290
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1292
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1294
    .local v24, "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    .line 1296
    .local v25, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 1298
    .restart local v26    # "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1299
    .restart local v27    # "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1300
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

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    .line 1301
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    goto/16 :goto_0

    .line 1252
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
    :pswitch_86
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v9

    .line 1254
    .local v9, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1256
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1258
    .local v11, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Landroid/content/Intent;

    .line 1260
    .local v12, "_arg3":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 1262
    .local v16, "_arg4":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 1264
    .local v17, "_arg5":Landroid/os/IBinder;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 1266
    .local v18, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1267
    .local v19, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1268
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    .line 1269
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    goto :goto_0

    .line 1222
    .end local v0    # "_result":I
    .end local v9    # "_arg0":Landroid/app/IApplicationThread;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg3":[Landroid/content/Intent;
    .end local v16    # "_arg4":[Ljava/lang/String;
    .end local v17    # "_arg5":Landroid/os/IBinder;
    .end local v18    # "_arg6":Landroid/os/Bundle;
    .end local v19    # "_arg7":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_87
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v12

    .line 1224
    .local v12, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1226
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1228
    .local v17, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    .line 1230
    .local v18, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1232
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    .line 1234
    .local v20, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1236
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1238
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1240
    .local v23, "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/app/ProfilerInfo;

    .line 1242
    .local v24, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    .line 1243
    .local v25, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1244
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    .line 1245
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1246
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1247
    nop

    .line 2755
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Landroid/app/IApplicationThread;
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
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
