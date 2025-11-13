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
.field static final blacklist TRANSACTION_addAppTask:I = 0x2a

.field static final blacklist TRANSACTION_alwaysShowUnsupportedCompileSdkWarning:I = 0x4e

.field static final blacklist TRANSACTION_cancelRecentsAnimation:I = 0x22

.field static final blacklist TRANSACTION_cancelTaskWindowTransition:I = 0x45

.field static final blacklist TRANSACTION_clearAppLockedUnLockedApp:I = 0x7b

.field static final blacklist TRANSACTION_clearLaunchParamsForPackages:I = 0x59

.field static final blacklist TRANSACTION_clearRecentTasks:I = 0x5d

.field static final blacklist TRANSACTION_detachNavigationBarFromApp:I = 0x5c

.field static final blacklist TRANSACTION_finishVoiceTask:I = 0x29

.field static final blacklist TRANSACTION_focusTopTask:I = 0x21

.field static final blacklist TRANSACTION_getActivityClientController:I = 0x11

.field static final blacklist TRANSACTION_getAllRootTaskInfos:I = 0x36

.field static final blacklist TRANSACTION_getAllRootTaskInfosOnDisplay:I = 0x38

.field static final blacklist TRANSACTION_getAppCompatAlignment:I = 0x6e

.field static final blacklist TRANSACTION_getAppLockedCheckAction:I = 0x7d

.field static final blacklist TRANSACTION_getAppLockedLockType:I = 0x7c

.field static final blacklist TRANSACTION_getAppLockedPackageList:I = 0x78

.field static final blacklist TRANSACTION_getAppTaskThumbnailSize:I = 0x2b

.field static final blacklist TRANSACTION_getAppTasks:I = 0x26

.field static final blacklist TRANSACTION_getApplockLockedAppsClass:I = 0x86

.field static final blacklist TRANSACTION_getApplockLockedAppsPackage:I = 0x85

.field static final blacklist TRANSACTION_getApplockType:I = 0x87

.field static final blacklist TRANSACTION_getAssistContextExtras:I = 0x3b

.field static final blacklist TRANSACTION_getCompatChangeablePackageInfoList:I = 0x64

.field static final blacklist TRANSACTION_getCoverLauncherAvailableAppList:I = 0x8a

.field static final blacklist TRANSACTION_getCoverLauncherEnabledAppList:I = 0x8b

.field static final blacklist TRANSACTION_getCoverLauncherEnabledAppListByType:I = 0x8c

.field static final blacklist TRANSACTION_getCutoutPolicy:I = 0x74

.field static final blacklist TRANSACTION_getDeviceConfigurationInfo:I = 0x44

.field static final blacklist TRANSACTION_getFocusedRootTaskInfo:I = 0x1f

.field static final blacklist TRANSACTION_getFoldStarManagerService:I = 0x63

.field static final blacklist TRANSACTION_getFrontActivityScreenCompatMode:I = 0x12

.field static final blacklist TRANSACTION_getLastResumedActivityUserId:I = 0x48

.field static final blacklist TRANSACTION_getLockTaskModeState:I = 0x25

.field static final blacklist TRANSACTION_getMultiTaskingBinder:I = 0x62

.field static final blacklist TRANSACTION_getOrientationControlPolicy:I = 0x69

.field static final blacklist TRANSACTION_getPackageAskScreenCompat:I = 0x57

.field static final blacklist TRANSACTION_getPackageScreenCompatMode:I = 0x55

.field static final blacklist TRANSACTION_getRecentTasks:I = 0x1b

.field static final blacklist TRANSACTION_getResumedTaskThumbnail:I = 0x72

.field static final blacklist TRANSACTION_getRootTaskInfo:I = 0x37

.field static final blacklist TRANSACTION_getRootTaskInfoOnDisplay:I = 0x39

.field static final blacklist TRANSACTION_getScpmVersion:I = 0x66

.field static final blacklist TRANSACTION_getSsecureHiddenAppsPackages:I = 0x89

.field static final blacklist TRANSACTION_getTaskBounds:I = 0x20

.field static final blacklist TRANSACTION_getTaskDescriptionIcon:I = 0x2d

.field static final blacklist TRANSACTION_getTaskSnapshot:I = 0x46

.field static final blacklist TRANSACTION_getTaskSnapshotLowResolution:I = 0x93

.field static final blacklist TRANSACTION_getTasks:I = 0x19

.field static final blacklist TRANSACTION_getUserOrSystemMinAspectRatioOverrideCode:I = 0x6c

.field static final blacklist TRANSACTION_getVoiceInteractorPackageName:I = 0x9

.field static final blacklist TRANSACTION_getWindowOrganizerController:I = 0x42

.field static final blacklist TRANSACTION_isActivityStartAllowedOnDisplay:I = 0xf

.field static final blacklist TRANSACTION_isAppLockedPackage:I = 0x7a

.field static final blacklist TRANSACTION_isAppLockedVerifying:I = 0x7f

.field static final blacklist TRANSACTION_isApplockEnabled:I = 0x88

.field static final blacklist TRANSACTION_isAssistDataAllowed:I = 0x3e

.field static final blacklist TRANSACTION_isInLockTaskMode:I = 0x24

.field static final blacklist TRANSACTION_isPackageEnabledForCoverLauncher:I = 0x8d

.field static final blacklist TRANSACTION_isPackageSettingsEnabledForCoverLauncher:I = 0x8e

.field static final blacklist TRANSACTION_isTopActivityImmersive:I = 0x1c

.field static final blacklist TRANSACTION_keyguardGoingAway:I = 0x40

.field static final blacklist TRANSACTION_moveRootTaskToDisplay:I = 0x32

.field static final blacklist TRANSACTION_moveTaskToFront:I = 0x1a

.field static final blacklist TRANSACTION_moveTaskToRootTask:I = 0x33

.field static final blacklist TRANSACTION_onPictureInPictureUiStateChanged:I = 0x5b

.field static final blacklist TRANSACTION_onSplashScreenViewCopyFinished:I = 0x5a

.field static final blacklist TRANSACTION_registKeyEventListener:I = 0x76

.field static final blacklist TRANSACTION_registerRemoteAnimationForNextActivityStart:I = 0x4b

.field static final blacklist TRANSACTION_registerRemoteAnimationsForDisplay:I = 0x4d

.field static final blacklist TRANSACTION_registerRemoteTransitionForNextActivityStart:I = 0x4c

.field static final blacklist TRANSACTION_registerScreenCaptureObserver:I = 0x60

.field static final blacklist TRANSACTION_registerTaskStackListener:I = 0x2e

.field static final blacklist TRANSACTION_releaseSomeActivities:I = 0x2c

.field static final blacklist TRANSACTION_removeAllVisibleRecentTasks:I = 0x18

.field static final blacklist TRANSACTION_removeRootTasksInWindowingModes:I = 0x34

.field static final blacklist TRANSACTION_removeRootTasksWithActivityTypes:I = 0x35

.field static final blacklist TRANSACTION_removeTask:I = 0x15

.field static final blacklist TRANSACTION_removeTaskWithFlags:I = 0x17

.field static final blacklist TRANSACTION_reportAssistContextExtras:I = 0x1d

.field static final blacklist TRANSACTION_requestAssistContextExtras:I = 0x3c

.field static final blacklist TRANSACTION_requestAssistDataForTask:I = 0x3f

.field static final blacklist TRANSACTION_requestAutofillData:I = 0x3d

.field static final blacklist TRANSACTION_resetUserPackageSettings:I = 0x65

.field static final blacklist TRANSACTION_resizeTask:I = 0x31

.field static final blacklist TRANSACTION_resumeAppSwitches:I = 0x52

.field static final blacklist TRANSACTION_sendSaLoggingBroadcast:I = 0x70

.field static final blacklist TRANSACTION_sendSaLoggingBroadcastForSetting:I = 0x71

.field static final blacklist TRANSACTION_setActivityController:I = 0x53

.field static final blacklist TRANSACTION_setAppCompatAlignment:I = 0x6f

.field static final blacklist TRANSACTION_setAppLockedUnLockPackage:I = 0x79

.field static final blacklist TRANSACTION_setAppLockedVerifying:I = 0x7e

.field static final blacklist TRANSACTION_setApplockEnabled:I = 0x83

.field static final blacklist TRANSACTION_setApplockLockedAppsClass:I = 0x81

.field static final blacklist TRANSACTION_setApplockLockedAppsPackage:I = 0x80

.field static final blacklist TRANSACTION_setApplockType:I = 0x82

.field static final blacklist TRANSACTION_setCoverLauncherPackageDisabled:I = 0x90

.field static final blacklist TRANSACTION_setCoverLauncherPackageEnabled:I = 0x8f

.field static final blacklist TRANSACTION_setCutoutPolicy:I = 0x73

.field static final blacklist TRANSACTION_setDisallowWhenLandscape:I = 0x6b

.field static final blacklist TRANSACTION_setFocusedRootTask:I = 0x1e

.field static final blacklist TRANSACTION_setFocusedTask:I = 0x14

.field static final blacklist TRANSACTION_setFrontActivityScreenCompatMode:I = 0x13

.field static final blacklist TRANSACTION_setLockScreenShown:I = 0x3a

.field static final blacklist TRANSACTION_setOrientationControlDefault:I = 0x6a

.field static final blacklist TRANSACTION_setOrientationControlPolicy:I = 0x68

.field static final blacklist TRANSACTION_setPackageAskScreenCompat:I = 0x58

.field static final blacklist TRANSACTION_setPackageScreenCompatMode:I = 0x56

.field static final blacklist TRANSACTION_setPersistentVrThread:I = 0x50

.field static final blacklist TRANSACTION_setRunningRemoteTransitionDelegate:I = 0x5e

.field static final blacklist TRANSACTION_setSsecureHiddenAppsPackages:I = 0x84

.field static final blacklist TRANSACTION_setTaskResizeable:I = 0x30

.field static final blacklist TRANSACTION_setUseLetterbox:I = 0x67

.field static final blacklist TRANSACTION_setUserMinAspectRatioOverrideCode:I = 0x6d

.field static final blacklist TRANSACTION_setVoiceKeepAwake:I = 0x54

.field static final blacklist TRANSACTION_setVrThread:I = 0x4f

.field static final blacklist TRANSACTION_startActivities:I = 0x2

.field static final blacklist TRANSACTION_startActivity:I = 0x1

.field static final blacklist TRANSACTION_startActivityAndWait:I = 0x6

.field static final blacklist TRANSACTION_startActivityAsCaller:I = 0xe

.field static final blacklist TRANSACTION_startActivityAsUser:I = 0x3

.field static final blacklist TRANSACTION_startActivityForCoverLauncher:I = 0x91

.field static final blacklist TRANSACTION_startActivityForCoverLauncherAsUser:I = 0x92

.field static final blacklist TRANSACTION_startActivityForDexRestart:I = 0x75

.field static final blacklist TRANSACTION_startActivityFromGameSession:I = 0xb

.field static final blacklist TRANSACTION_startActivityFromRecents:I = 0xd

.field static final blacklist TRANSACTION_startActivityIntentSender:I = 0x5

.field static final blacklist TRANSACTION_startActivityWithConfig:I = 0x7

.field static final blacklist TRANSACTION_startAppLockService:I = 0x77

.field static final blacklist TRANSACTION_startAssistantActivity:I = 0xa

.field static final blacklist TRANSACTION_startBackNavigation:I = 0x5f

.field static final blacklist TRANSACTION_startNextMatchingActivity:I = 0x4

.field static final blacklist TRANSACTION_startRecentsActivity:I = 0xc

.field static final blacklist TRANSACTION_startSystemLockTaskMode:I = 0x27

.field static final blacklist TRANSACTION_startVoiceActivity:I = 0x8

.field static final blacklist TRANSACTION_stopAppSwitches:I = 0x51

.field static final blacklist TRANSACTION_stopSystemLockTaskMode:I = 0x28

.field static final blacklist TRANSACTION_supportsLocalVoiceInteraction:I = 0x43

.field static final blacklist TRANSACTION_suppressResizeConfigChanges:I = 0x41

.field static final blacklist TRANSACTION_takeTaskSnapshot:I = 0x47

.field static final blacklist TRANSACTION_unhandledBack:I = 0x10

.field static final blacklist TRANSACTION_unregisterScreenCaptureObserver:I = 0x61

.field static final blacklist TRANSACTION_unregisterTaskStackListener:I = 0x2f

.field static final blacklist TRANSACTION_updateActiveRecents:I = 0x16

.field static final blacklist TRANSACTION_updateConfiguration:I = 0x49

.field static final blacklist TRANSACTION_updateLockTaskFeatures:I = 0x4a

.field static final blacklist TRANSACTION_updateLockTaskPackages:I = 0x23


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IActivityTaskManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityTaskManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IActivityTaskManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.app.IActivityTaskManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IActivityTaskManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/IActivityTaskManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/app/IActivityTaskManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "getTaskSnapshotLowResolution"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "startActivityForCoverLauncherAsUser"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "startActivityForCoverLauncher"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "setCoverLauncherPackageDisabled"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "setCoverLauncherPackageEnabled"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "isPackageSettingsEnabledForCoverLauncher"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "isPackageEnabledForCoverLauncher"

    return-object v0

    :pswitch_7
    const-string v0, "getCoverLauncherEnabledAppListByType"

    return-object v0

    :pswitch_8
    const-string v0, "getCoverLauncherEnabledAppList"

    return-object v0

    :pswitch_9
    const-string v0, "getCoverLauncherAvailableAppList"

    return-object v0

    :pswitch_a
    const-string v0, "getSsecureHiddenAppsPackages"

    return-object v0

    :pswitch_b
    const-string v0, "isApplockEnabled"

    return-object v0

    :pswitch_c
    const-string v0, "getApplockType"

    return-object v0

    :pswitch_d
    const-string v0, "getApplockLockedAppsClass"

    return-object v0

    :pswitch_e
    const-string v0, "getApplockLockedAppsPackage"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "setSsecureHiddenAppsPackages"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "setApplockEnabled"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "setApplockType"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "setApplockLockedAppsClass"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "setApplockLockedAppsPackage"

    return-object v0

    :pswitch_14
    const-string v0, "isAppLockedVerifying"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "setAppLockedVerifying"

    return-object v0

    :pswitch_16
    const-string v0, "getAppLockedCheckAction"

    return-object v0

    :pswitch_17
    const-string v0, "getAppLockedLockType"

    return-object v0

    :pswitch_18
    const-string v0, "clearAppLockedUnLockedApp"

    return-object v0

    :pswitch_19
    const-string v0, "isAppLockedPackage"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "setAppLockedUnLockPackage"

    return-object v0

    :pswitch_1b
    const-string v0, "getAppLockedPackageList"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "startAppLockService"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "registKeyEventListener"

    return-object v0

    :pswitch_1e
    const-string/jumbo v0, "startActivityForDexRestart"

    return-object v0

    :pswitch_1f
    const-string v0, "getCutoutPolicy"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "setCutoutPolicy"

    return-object v0

    :pswitch_21
    const-string v0, "getResumedTaskThumbnail"

    return-object v0

    :pswitch_22
    const-string/jumbo v0, "sendSaLoggingBroadcastForSetting"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "sendSaLoggingBroadcast"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "setAppCompatAlignment"

    return-object v0

    :pswitch_25
    const-string v0, "getAppCompatAlignment"

    return-object v0

    :pswitch_26
    const-string/jumbo v0, "setUserMinAspectRatioOverrideCode"

    return-object v0

    :pswitch_27
    const-string v0, "getUserOrSystemMinAspectRatioOverrideCode"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "setDisallowWhenLandscape"

    return-object v0

    :pswitch_29
    const-string/jumbo v0, "setOrientationControlDefault"

    return-object v0

    :pswitch_2a
    const-string v0, "getOrientationControlPolicy"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "setOrientationControlPolicy"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "setUseLetterbox"

    return-object v0

    :pswitch_2d
    const-string v0, "getScpmVersion"

    return-object v0

    :pswitch_2e
    const-string/jumbo v0, "resetUserPackageSettings"

    return-object v0

    :pswitch_2f
    const-string v0, "getCompatChangeablePackageInfoList"

    return-object v0

    :pswitch_30
    const-string v0, "getFoldStarManagerService"

    return-object v0

    :pswitch_31
    const-string v0, "getMultiTaskingBinder"

    return-object v0

    :pswitch_32
    const-string/jumbo v0, "unregisterScreenCaptureObserver"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "registerScreenCaptureObserver"

    return-object v0

    :pswitch_34
    const-string/jumbo v0, "startBackNavigation"

    return-object v0

    :pswitch_35
    const-string/jumbo v0, "setRunningRemoteTransitionDelegate"

    return-object v0

    :pswitch_36
    const-string v0, "clearRecentTasks"

    return-object v0

    :pswitch_37
    const-string v0, "detachNavigationBarFromApp"

    return-object v0

    :pswitch_38
    const-string/jumbo v0, "onPictureInPictureUiStateChanged"

    return-object v0

    :pswitch_39
    const-string/jumbo v0, "onSplashScreenViewCopyFinished"

    return-object v0

    :pswitch_3a
    const-string v0, "clearLaunchParamsForPackages"

    return-object v0

    :pswitch_3b
    const-string/jumbo v0, "setPackageAskScreenCompat"

    return-object v0

    :pswitch_3c
    const-string v0, "getPackageAskScreenCompat"

    return-object v0

    :pswitch_3d
    const-string/jumbo v0, "setPackageScreenCompatMode"

    return-object v0

    :pswitch_3e
    const-string v0, "getPackageScreenCompatMode"

    return-object v0

    :pswitch_3f
    const-string/jumbo v0, "setVoiceKeepAwake"

    return-object v0

    :pswitch_40
    const-string/jumbo v0, "setActivityController"

    return-object v0

    :pswitch_41
    const-string/jumbo v0, "resumeAppSwitches"

    return-object v0

    :pswitch_42
    const-string/jumbo v0, "stopAppSwitches"

    return-object v0

    :pswitch_43
    const-string/jumbo v0, "setPersistentVrThread"

    return-object v0

    :pswitch_44
    const-string/jumbo v0, "setVrThread"

    return-object v0

    :pswitch_45
    const-string v0, "alwaysShowUnsupportedCompileSdkWarning"

    return-object v0

    :pswitch_46
    const-string/jumbo v0, "registerRemoteAnimationsForDisplay"

    return-object v0

    :pswitch_47
    const-string/jumbo v0, "registerRemoteTransitionForNextActivityStart"

    return-object v0

    :pswitch_48
    const-string/jumbo v0, "registerRemoteAnimationForNextActivityStart"

    return-object v0

    :pswitch_49
    const-string/jumbo v0, "updateLockTaskFeatures"

    return-object v0

    :pswitch_4a
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    :pswitch_4b
    const-string v0, "getLastResumedActivityUserId"

    return-object v0

    :pswitch_4c
    const-string/jumbo v0, "takeTaskSnapshot"

    return-object v0

    :pswitch_4d
    const-string v0, "getTaskSnapshot"

    return-object v0

    :pswitch_4e
    const-string v0, "cancelTaskWindowTransition"

    return-object v0

    :pswitch_4f
    const-string v0, "getDeviceConfigurationInfo"

    return-object v0

    :pswitch_50
    const-string/jumbo v0, "supportsLocalVoiceInteraction"

    return-object v0

    :pswitch_51
    const-string v0, "getWindowOrganizerController"

    return-object v0

    :pswitch_52
    const-string/jumbo v0, "suppressResizeConfigChanges"

    return-object v0

    :pswitch_53
    const-string/jumbo v0, "keyguardGoingAway"

    return-object v0

    :pswitch_54
    const-string/jumbo v0, "requestAssistDataForTask"

    return-object v0

    :pswitch_55
    const-string v0, "isAssistDataAllowed"

    return-object v0

    :pswitch_56
    const-string/jumbo v0, "requestAutofillData"

    return-object v0

    :pswitch_57
    const-string/jumbo v0, "requestAssistContextExtras"

    return-object v0

    :pswitch_58
    const-string v0, "getAssistContextExtras"

    return-object v0

    :pswitch_59
    const-string/jumbo v0, "setLockScreenShown"

    return-object v0

    :pswitch_5a
    const-string v0, "getRootTaskInfoOnDisplay"

    return-object v0

    :pswitch_5b
    const-string v0, "getAllRootTaskInfosOnDisplay"

    return-object v0

    :pswitch_5c
    const-string v0, "getRootTaskInfo"

    return-object v0

    :pswitch_5d
    const-string v0, "getAllRootTaskInfos"

    return-object v0

    :pswitch_5e
    const-string/jumbo v0, "removeRootTasksWithActivityTypes"

    return-object v0

    :pswitch_5f
    const-string/jumbo v0, "removeRootTasksInWindowingModes"

    return-object v0

    :pswitch_60
    const-string/jumbo v0, "moveTaskToRootTask"

    return-object v0

    :pswitch_61
    const-string/jumbo v0, "moveRootTaskToDisplay"

    return-object v0

    :pswitch_62
    const-string/jumbo v0, "resizeTask"

    return-object v0

    :pswitch_63
    const-string/jumbo v0, "setTaskResizeable"

    return-object v0

    :pswitch_64
    const-string/jumbo v0, "unregisterTaskStackListener"

    return-object v0

    :pswitch_65
    const-string/jumbo v0, "registerTaskStackListener"

    return-object v0

    :pswitch_66
    const-string v0, "getTaskDescriptionIcon"

    return-object v0

    :pswitch_67
    const-string/jumbo v0, "releaseSomeActivities"

    return-object v0

    :pswitch_68
    const-string v0, "getAppTaskThumbnailSize"

    return-object v0

    :pswitch_69
    const-string v0, "addAppTask"

    return-object v0

    :pswitch_6a
    const-string v0, "finishVoiceTask"

    return-object v0

    :pswitch_6b
    const-string/jumbo v0, "stopSystemLockTaskMode"

    return-object v0

    :pswitch_6c
    const-string/jumbo v0, "startSystemLockTaskMode"

    return-object v0

    :pswitch_6d
    const-string v0, "getAppTasks"

    return-object v0

    :pswitch_6e
    const-string v0, "getLockTaskModeState"

    return-object v0

    :pswitch_6f
    const-string/jumbo v0, "isInLockTaskMode"

    return-object v0

    :pswitch_70
    const-string/jumbo v0, "updateLockTaskPackages"

    return-object v0

    :pswitch_71
    const-string v0, "cancelRecentsAnimation"

    return-object v0

    :pswitch_72
    const-string v0, "focusTopTask"

    return-object v0

    :pswitch_73
    const-string v0, "getTaskBounds"

    return-object v0

    :pswitch_74
    const-string v0, "getFocusedRootTaskInfo"

    return-object v0

    :pswitch_75
    const-string/jumbo v0, "setFocusedRootTask"

    return-object v0

    :pswitch_76
    const-string/jumbo v0, "reportAssistContextExtras"

    return-object v0

    :pswitch_77
    const-string/jumbo v0, "isTopActivityImmersive"

    return-object v0

    :pswitch_78
    const-string v0, "getRecentTasks"

    return-object v0

    :pswitch_79
    const-string/jumbo v0, "moveTaskToFront"

    return-object v0

    :pswitch_7a
    const-string v0, "getTasks"

    return-object v0

    :pswitch_7b
    const-string/jumbo v0, "removeAllVisibleRecentTasks"

    return-object v0

    :pswitch_7c
    const-string/jumbo v0, "removeTaskWithFlags"

    return-object v0

    :pswitch_7d
    const-string/jumbo v0, "updateActiveRecents"

    return-object v0

    :pswitch_7e
    const-string/jumbo v0, "removeTask"

    return-object v0

    :pswitch_7f
    const-string/jumbo v0, "setFocusedTask"

    return-object v0

    :pswitch_80
    const-string/jumbo v0, "setFrontActivityScreenCompatMode"

    return-object v0

    :pswitch_81
    const-string v0, "getFrontActivityScreenCompatMode"

    return-object v0

    :pswitch_82
    const-string v0, "getActivityClientController"

    return-object v0

    :pswitch_83
    const-string/jumbo v0, "unhandledBack"

    return-object v0

    :pswitch_84
    const-string v0, "isActivityStartAllowedOnDisplay"

    return-object v0

    :pswitch_85
    const-string/jumbo v0, "startActivityAsCaller"

    return-object v0

    :pswitch_86
    const-string/jumbo v0, "startActivityFromRecents"

    return-object v0

    :pswitch_87
    const-string/jumbo v0, "startRecentsActivity"

    return-object v0

    :pswitch_88
    const-string/jumbo v0, "startActivityFromGameSession"

    return-object v0

    :pswitch_89
    const-string/jumbo v0, "startAssistantActivity"

    return-object v0

    :pswitch_8a
    const-string v0, "getVoiceInteractorPackageName"

    return-object v0

    :pswitch_8b
    const-string/jumbo v0, "startVoiceActivity"

    return-object v0

    :pswitch_8c
    const-string/jumbo v0, "startActivityWithConfig"

    return-object v0

    :pswitch_8d
    const-string/jumbo v0, "startActivityAndWait"

    return-object v0

    :pswitch_8e
    const-string/jumbo v0, "startActivityIntentSender"

    return-object v0

    :pswitch_8f
    const-string/jumbo v0, "startNextMatchingActivity"

    return-object v0

    :pswitch_90
    const-string/jumbo v0, "startActivityAsUser"

    return-object v0

    :pswitch_91
    const-string/jumbo v0, "startActivities"

    return-object v0

    :pswitch_92
    const-string/jumbo v0, "startActivity"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x92

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/app/IActivityTaskManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "android.app.IActivityTaskManager"

    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v0, 0x5f4e5446

    if-ne v14, v0, :cond_1

    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_1
    packed-switch v14, :pswitch_data_0

    move-object v14, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getTaskSnapshotLowResolution(I)Landroid/window/TaskSnapshot;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_1
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->startActivityForCoverLauncherAsUser(Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_2
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->startActivityForCoverLauncher(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setCoverLauncherPackageDisabled(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setCoverLauncherPackageEnabled(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->isPackageSettingsEnabledForCoverLauncher(Ljava/lang/String;II)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->isPackageEnabledForCoverLauncher(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getCoverLauncherEnabledAppListByType(II)Ljava/util/Map;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getCoverLauncherEnabledAppList(I)Ljava/util/Map;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getCoverLauncherAvailableAppList(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getSsecureHiddenAppsPackages()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isApplockEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getApplockType()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getApplockLockedAppsClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getApplockLockedAppsPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setSsecureHiddenAppsPackages(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setApplockEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setApplockType(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setApplockLockedAppsClass(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setApplockLockedAppsPackage(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setAppLockedVerifying(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAppLockedLockType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->clearAppLockedUnLockedApp()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setAppLockedUnLockPackage(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAppLockedPackageList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->startAppLockService(Landroid/os/IBinder;Landroid/content/Intent;ZLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/IKeyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IKeyEventListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->registKeyEventListener(Lcom/samsung/android/multiwindow/IKeyEventListener;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->startActivityForDexRestart(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getCutoutPolicy(ILjava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setCutoutPolicy(ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getResumedTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->sendSaLoggingBroadcastForSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    move-object v6, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Landroid/app/IActivityTaskManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v2, v15, v6}, Landroid/app/IActivityTaskManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-wide/from16 v4, v16

    move-object/from16 v18, v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityTaskManager$Stub;->sendSaLoggingBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setAppCompatAlignment(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAppCompatAlignment()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setUserMinAspectRatioOverrideCode(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getUserOrSystemMinAspectRatioOverrideCode(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setDisallowWhenLandscape(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setOrientationControlDefault(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getOrientationControlPolicy(ILjava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setOrientationControlPolicy(ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setUseLetterbox(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getScpmVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->resetUserPackageSettings(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getCompatChangeablePackageInfoList(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getFoldStarManagerService()Lcom/samsung/android/core/IFoldStarManager;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_31
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getMultiTaskingBinder()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IScreenCaptureObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IScreenCaptureObserver;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->unregisterScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IScreenCaptureObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IScreenCaptureObserver;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_34
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    sget-object v1, Landroid/window/BackAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/BackAnimationAdapter;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->startBackNavigation(Landroid/os/RemoteCallback;Landroid/window/BackAnimationAdapter;)Landroid/window/BackNavigationInfo;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->clearRecentTasks(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->detachNavigationBarFromApp(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_38
    sget-object v0, Landroid/app/PictureInPictureUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureUiState;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->clearLaunchParamsForPackages(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->resumeAppSwitches()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_42
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->stopAppSwitches()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setPersistentVrThread(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setVrThread(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_45
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationDefinition;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/RemoteTransition;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteTransitionForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;Landroid/window/RemoteTransition;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskFeatures(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_4a
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_4b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getLastResumedActivityUserId()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->cancelTaskWindowTransition(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_4f
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_50
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->supportsLocalVoiceInteraction()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_51
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->suppressResizeConfigChanges(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->keyguardGoingAway(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->requestAssistDataForTask(Landroid/app/IAssistDataReceiver;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_55
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isAssistDataAllowed()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v8

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityTaskManager$Stub;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setLockScreenShown(ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfoOnDisplay(III)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_5d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksWithActivityTypes([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksInWindowingModes([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToRootTask(IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->moveRootTaskToDisplay(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setTaskResizeable(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_68
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    sget-object v2, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$TaskDescription;

    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_6b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->stopSystemLockTaskMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->startSystemLockTaskMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_6e
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getLockTaskModeState()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_6f
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isInLockTaskMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->cancelRecentsAnimation(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->focusTopTask(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_74
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setFocusedRootTask(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    sget-object v0, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/assist/AssistStructure;

    sget-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/assist/AssistContent;

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/net/Uri;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_77
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isTopActivityImmersive()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->getTasks(IZZI)Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_7b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->removeAllVisibleRecentTasks()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->removeTaskWithFlags(II)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->updateActiveRecents(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->removeTask(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setFocusedTask(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setFrontActivityScreenCompatMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_81
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getFrontActivityScreenCompatMode()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_82
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_83
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->unhandledBack()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_1

    :pswitch_85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/app/ProfilerInfo;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    move/from16 v11, v26

    move-object v14, v12

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_86
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_87
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IRecentsAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationRunner;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->startRecentsActivity(Landroid/content/Intent;JLandroid/view/IRecentsAnimationRunner;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_88
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_89
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_8a
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8b
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_8c
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/content/res/Configuration;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_8d
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_8e
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_8f
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_90
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_91
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_92
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/app/ProfilerInfo;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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
