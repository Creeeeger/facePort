.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final blacklist TRANSACTION_addKeyguardLockedStateListener:I = 0x21

.field static final blacklist TRANSACTION_addShellRoot:I = 0x14

.field static final greylist-max-o TRANSACTION_addWindowToken:I = 0x11

.field static final blacklist TRANSACTION_attachToDisplayContent:I = 0x7b

.field static final blacklist TRANSACTION_attachWindowContextToDisplayArea:I = 0x79

.field static final blacklist TRANSACTION_attachWindowContextToWindowToken:I = 0x7a

.field static final blacklist TRANSACTION_changeDisplayScale:I = 0x9b

.field static final greylist-max-o TRANSACTION_clearForcedDisplayDensityForUser:I = 0xd

.field static final greylist-max-o TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final blacklist TRANSACTION_clearForcedDisplaySizeDensity:I = 0x8d

.field static final blacklist TRANSACTION_clearKeyCustomizationInfoByAction:I = 0x97

.field static final blacklist TRANSACTION_clearKeyCustomizationInfoByKeyCode:I = 0x96

.field static final blacklist TRANSACTION_clearTaskTransitionSpec:I = 0x83

.field static final greylist-max-o TRANSACTION_clearWindowContentFrameStats:I = 0x4c

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x24

.field static final blacklist TRANSACTION_closeSystemDialogsInDisplay:I = 0x25

.field static final greylist-max-o TRANSACTION_createInputConsumer:I = 0x54

.field static final greylist-max-o TRANSACTION_destroyInputConsumer:I = 0x55

.field static final blacklist TRANSACTION_detachWindowContextFromWindowContainer:I = 0x7c

.field static final greylist-max-o TRANSACTION_disableKeyguard:I = 0x1b

.field static final greylist-max-o TRANSACTION_dismissKeyguard:I = 0x20

.field static final blacklist TRANSACTION_dispatchSPenGestureEvent:I = 0xae

.field static final blacklist TRANSACTION_dispatchSmartClipRemoteRequest:I = 0x8a

.field static final greylist-max-o TRANSACTION_enableScreenIfNeeded:I = 0x4b

.field static final greylist-max-o TRANSACTION_endProlongedAnimations:I = 0x18

.field static final greylist-max-o TRANSACTION_exitKeyguardSecurely:I = 0x1d

.field static final blacklist TRANSACTION_freezeDisplayRotation:I = 0x37

.field static final greylist-max-o TRANSACTION_freezeRotation:I = 0x34

.field static final greylist-max-o TRANSACTION_getAnimationScale:I = 0x26

.field static final greylist-max-o TRANSACTION_getAnimationScales:I = 0x27

.field static final blacklist TRANSACTION_getAppContinuityMode:I = 0xb3

.field static final blacklist TRANSACTION_getBackupKeyCustomizationInfoList:I = 0x98

.field static final greylist-max-o TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final greylist-max-o TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final greylist-max-o TRANSACTION_getCurrentAnimatorScale:I = 0x2a

.field static final greylist-max-o TRANSACTION_getCurrentImeTouchRegion:I = 0x56

.field static final greylist-max-o TRANSACTION_getDefaultDisplayRotation:I = 0x30

.field static final blacklist TRANSACTION_getDisplayImePolicy:I = 0x68

.field static final greylist-max-o TRANSACTION_getDockedStackSide:I = 0x4e

.field static final blacklist TRANSACTION_getFullScreenAppsSupportMode:I = 0xad

.field static final blacklist TRANSACTION_getImeDisplayId:I = 0x80

.field static final greylist-max-o TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final greylist-max-o TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final blacklist TRANSACTION_getKeyCustomizationInfo:I = 0x91

.field static final blacklist TRANSACTION_getKeyCustomizationInfoByPackage:I = 0x92

.field static final blacklist TRANSACTION_getLastKeyCustomizationInfo:I = 0x93

.field static final blacklist TRANSACTION_getMaxAspectRatioPolicy:I = 0xa0

.field static final blacklist TRANSACTION_getMaxAspectRatioPolicyByComponent:I = 0x9f

.field static final greylist-max-o TRANSACTION_getNavBarPosition:I = 0x48

.field static final blacklist TRANSACTION_getPossibleDisplayInfo:I = 0x71

.field static final greylist-max-o TRANSACTION_getPreferredOptionsPanelGravity:I = 0x33

.field static final blacklist TRANSACTION_getRemoveContentMode:I = 0x62

.field static final blacklist TRANSACTION_getRotationLockOrientation:I = 0xab

.field static final greylist-max-o TRANSACTION_getStableInsets:I = 0x52

.field static final blacklist TRANSACTION_getSupportedDisplayHashAlgorithms:I = 0x76

.field static final blacklist TRANSACTION_getSupportsFlexPanel:I = 0xa2

.field static final blacklist TRANSACTION_getTopFocusedDisplayId:I = 0xa9

.field static final blacklist TRANSACTION_getUserDisplayDensity:I = 0x8c

.field static final blacklist TRANSACTION_getUserDisplaySize:I = 0x8b

.field static final blacklist TRANSACTION_getVisibleWindowInfo:I = 0x88

.field static final blacklist TRANSACTION_getVisibleWindowInfoList:I = 0x89

.field static final greylist-max-o TRANSACTION_getWindowContentFrameStats:I = 0x4d

.field static final blacklist TRANSACTION_getWindowInsets:I = 0x70

.field static final blacklist TRANSACTION_getWindowingMode:I = 0x60

.field static final greylist-max-o TRANSACTION_hasNavigationBar:I = 0x47

.field static final blacklist TRANSACTION_hideTransientBars:I = 0x43

.field static final blacklist TRANSACTION_holdLock:I = 0x75

.field static final blacklist TRANSACTION_isDisplayRotationFrozen:I = 0x39

.field static final blacklist TRANSACTION_isFolded:I = 0xaf

.field static final greylist-max-o TRANSACTION_isKeyguardLocked:I = 0x1e

.field static final greylist-max-o TRANSACTION_isKeyguardSecure:I = 0x1f

.field static final blacklist TRANSACTION_isKeyguardShowingAndNotOccluded:I = 0xb5

.field static final blacklist TRANSACTION_isLayerTracing:I = 0x6b

.field static final blacklist TRANSACTION_isMetaKeyEventRequested:I = 0xa7

.field static final greylist-max-o TRANSACTION_isRotationFrozen:I = 0x36

.field static final greylist-max-o TRANSACTION_isSafeModeEnabled:I = 0x4a

.field static final blacklist TRANSACTION_isSystemKeyEventRequested:I = 0xa6

.field static final blacklist TRANSACTION_isTableMode:I = 0xb2

.field static final blacklist TRANSACTION_isTaskSnapshotSupported:I = 0x7f

.field static final greylist-max-o TRANSACTION_isViewServerRunning:I = 0x3

.field static final blacklist TRANSACTION_isWindowToken:I = 0x10

.field static final greylist-max-o TRANSACTION_isWindowTraceEnabled:I = 0x5e

.field static final greylist-max-o TRANSACTION_lockNow:I = 0x49

.field static final blacklist TRANSACTION_mirrorDisplay:I = 0x6d

.field static final blacklist TRANSACTION_mirrorWallpaperSurface:I = 0x3d

.field static final blacklist TRANSACTION_moveDisplayToTop:I = 0xaa

.field static final greylist-max-o TRANSACTION_openSession:I = 0x4

.field static final greylist-max-o TRANSACTION_overridePendingAppTransitionMultiThumbFuture:I = 0x16

.field static final greylist-max-o TRANSACTION_overridePendingAppTransitionRemote:I = 0x17

.field static final blacklist TRANSACTION_putKeyCustomizationInfo:I = 0x90

.field static final greylist-max-o TRANSACTION_reenableKeyguard:I = 0x1c

.field static final greylist-max-o TRANSACTION_refreshScreenCaptureDisabled:I = 0x2e

.field static final blacklist TRANSACTION_registerCrossWindowBlurEnabledListener:I = 0x7d

.field static final blacklist TRANSACTION_registerDisplayFoldListener:I = 0x57

.field static final blacklist TRANSACTION_registerDisplayWindowListener:I = 0x59

.field static final blacklist TRANSACTION_registerOneHandOpWatcher:I = 0x9c

.field static final blacklist TRANSACTION_registerPinnedTaskListener:I = 0x50

.field static final greylist-max-o TRANSACTION_registerShortcutKey:I = 0x53

.field static final blacklist TRANSACTION_registerSystemGestureExclusionListener:I = 0x40

.field static final blacklist TRANSACTION_registerTaskFpsCallback:I = 0x84

.field static final greylist-max-o TRANSACTION_registerWallpaperVisibilityListener:I = 0x3e

.field static final blacklist TRANSACTION_removeKeyCustomizationInfo:I = 0x94

.field static final blacklist TRANSACTION_removeKeyCustomizationInfoByPackage:I = 0x95

.field static final blacklist TRANSACTION_removeKeyguardLockedStateListener:I = 0x22

.field static final greylist-max-o TRANSACTION_removeRotationWatcher:I = 0x32

.field static final greylist-max-o TRANSACTION_removeWindowToken:I = 0x12

.field static final greylist-max-o TRANSACTION_requestAppKeyboardShortcuts:I = 0x51

.field static final greylist-max-o TRANSACTION_requestAssistScreenshot:I = 0x42

.field static final blacklist TRANSACTION_requestDeviceFolded:I = 0xb0

.field static final blacklist TRANSACTION_requestMetaKeyEvent:I = 0xa4

.field static final blacklist TRANSACTION_requestScrollCapture:I = 0x74

.field static final blacklist TRANSACTION_requestSystemKeyEvent:I = 0xa5

.field static final blacklist TRANSACTION_restoreKeyCustomizationInfo:I = 0x99

.field static final blacklist TRANSACTION_saveWindowTraceToFile:I = 0x5d

.field static final greylist-max-o TRANSACTION_screenshotWallpaper:I = 0x3c

.field static final greylist-max-o TRANSACTION_setAnimationScale:I = 0x28

.field static final greylist-max-o TRANSACTION_setAnimationScales:I = 0x29

.field static final blacklist TRANSACTION_setAppContinuityMode:I = 0xb4

.field static final blacklist TRANSACTION_setDeadzoneHole:I = 0x9a

.field static final blacklist TRANSACTION_setDisplayColorToSystemProperties:I = 0xa8

.field static final blacklist TRANSACTION_setDisplayHashThrottlingEnabled:I = 0x78

.field static final blacklist TRANSACTION_setDisplayImePolicy:I = 0x69

.field static final blacklist TRANSACTION_setDisplayWindowInsetsController:I = 0x6e

.field static final blacklist TRANSACTION_setDisplayWindowRotationController:I = 0x13

.field static final blacklist TRANSACTION_setDockedTaskDividerTouchRegion:I = 0x4f

.field static final blacklist TRANSACTION_setDragSurfaceToOverlay:I = 0xb7

.field static final greylist-max-o TRANSACTION_setEventDispatching:I = 0xf

.field static final blacklist TRANSACTION_setFixedToUserRotation:I = 0x3a

.field static final greylist-max-o TRANSACTION_setForcedDisplayDensityForUser:I = 0xc

.field static final greylist-max-o TRANSACTION_setForcedDisplayScalingMode:I = 0xe

.field static final greylist-max-o TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final blacklist TRANSACTION_setForcedDisplaySizeDensity:I = 0x8e

.field static final blacklist TRANSACTION_setForcedDisplaySizeDensityWithInfo:I = 0x8f

.field static final blacklist TRANSACTION_setIgnoreOrientationRequest:I = 0x3b

.field static final greylist-max-o TRANSACTION_setInTouchMode:I = 0x2b

.field static final blacklist TRANSACTION_setLayerTracing:I = 0x6c

.field static final blacklist TRANSACTION_setLayerTracingFlags:I = 0x73

.field static final blacklist TRANSACTION_setMaxAspectRatioPolicy:I = 0xa1

.field static final greylist-max-o TRANSACTION_setNavBarVirtualKeyHapticFeedbackEnabled:I = 0x46

.field static final blacklist TRANSACTION_setPendingIntentAfterUnlock:I = 0x9e

.field static final blacklist TRANSACTION_setRecentsAppBehindSystemBars:I = 0x87

.field static final greylist-max-o TRANSACTION_setRecentsVisibility:I = 0x44

.field static final blacklist TRANSACTION_setRemoveContentMode:I = 0x63

.field static final blacklist TRANSACTION_setShellRootAccessibilityWindow:I = 0x15

.field static final blacklist TRANSACTION_setShouldShowSystemDecors:I = 0x67

.field static final blacklist TRANSACTION_setShouldShowWithInsecureKeyguard:I = 0x65

.field static final greylist-max-o TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x2d

.field static final blacklist TRANSACTION_setSupportsFlexPanel:I = 0xa3

.field static final greylist-max-o TRANSACTION_setSwitchingUser:I = 0x23

.field static final blacklist TRANSACTION_setTableModeEnabled:I = 0xb1

.field static final blacklist TRANSACTION_setTaskSnapshotEnabled:I = 0x81

.field static final blacklist TRANSACTION_setTaskTransitionSpec:I = 0x82

.field static final blacklist TRANSACTION_setWindowingMode:I = 0x61

.field static final blacklist TRANSACTION_shouldShowSystemDecors:I = 0x66

.field static final blacklist TRANSACTION_shouldShowWithInsecureKeyguard:I = 0x64

.field static final blacklist TRANSACTION_showGlobalActions:I = 0x72

.field static final greylist-max-o TRANSACTION_showStrictModeViolation:I = 0x2c

.field static final blacklist TRANSACTION_snapshotTaskForRecents:I = 0x86

.field static final greylist-max-o TRANSACTION_startFreezingScreen:I = 0x19

.field static final blacklist TRANSACTION_startLockscreenFingerprintAuth:I = 0xb6

.field static final blacklist TRANSACTION_startSurfaceAnimation:I = 0x5f

.field static final greylist-max-o TRANSACTION_startViewServer:I = 0x1

.field static final greylist-max-o TRANSACTION_startWindowTrace:I = 0x5b

.field static final greylist-max-o TRANSACTION_stopFreezingScreen:I = 0x1a

.field static final greylist-max-o TRANSACTION_stopViewServer:I = 0x2

.field static final greylist-max-o TRANSACTION_stopWindowTrace:I = 0x5c

.field static final blacklist TRANSACTION_syncInputTransactions:I = 0x6a

.field static final blacklist TRANSACTION_takeScreenshotToTargetWindow:I = 0xac

.field static final blacklist TRANSACTION_thawDisplayRotation:I = 0x38

.field static final greylist-max-o TRANSACTION_thawRotation:I = 0x35

.field static final blacklist TRANSACTION_unregisterCrossWindowBlurEnabledListener:I = 0x7e

.field static final blacklist TRANSACTION_unregisterDisplayFoldListener:I = 0x58

.field static final blacklist TRANSACTION_unregisterDisplayWindowListener:I = 0x5a

.field static final blacklist TRANSACTION_unregisterOneHandOpWatcher:I = 0x9d

.field static final blacklist TRANSACTION_unregisterSystemGestureExclusionListener:I = 0x41

.field static final blacklist TRANSACTION_unregisterTaskFpsCallback:I = 0x85

.field static final greylist-max-o TRANSACTION_unregisterWallpaperVisibilityListener:I = 0x3f

.field static final blacklist TRANSACTION_updateDisplayWindowRequestedVisibilities:I = 0x6f

.field static final greylist-max-o TRANSACTION_updateRotation:I = 0x2f

.field static final blacklist TRANSACTION_updateStaticPrivacyIndicatorBounds:I = 0x45

.field static final blacklist TRANSACTION_useBLAST:I = 0x5

.field static final blacklist TRANSACTION_verifyDisplayHash:I = 0x77

.field static final greylist-max-o TRANSACTION_watchRotation:I = 0x31


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 1233
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1234
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1235
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1242
    if-nez p0, :cond_0

    .line 1243
    const/4 v0, 0x0

    return-object v0

    .line 1245
    :cond_0
    const-string v0, "android.view.IWindowManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1246
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_1

    .line 1247
    move-object v1, v0

    check-cast v1, Landroid/view/IWindowManager;

    return-object v1

    .line 1249
    :cond_1
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 1258
    packed-switch p0, :pswitch_data_0

    .line 1994
    const/4 v0, 0x0

    return-object v0

    .line 1990
    :pswitch_0
    const-string/jumbo v0, "setDragSurfaceToOverlay"

    return-object v0

    .line 1986
    :pswitch_1
    const-string/jumbo v0, "startLockscreenFingerprintAuth"

    return-object v0

    .line 1982
    :pswitch_2
    const-string v0, "isKeyguardShowingAndNotOccluded"

    return-object v0

    .line 1978
    :pswitch_3
    const-string/jumbo v0, "setAppContinuityMode"

    return-object v0

    .line 1974
    :pswitch_4
    const-string v0, "getAppContinuityMode"

    return-object v0

    .line 1970
    :pswitch_5
    const-string v0, "isTableMode"

    return-object v0

    .line 1966
    :pswitch_6
    const-string/jumbo v0, "setTableModeEnabled"

    return-object v0

    .line 1962
    :pswitch_7
    const-string/jumbo v0, "requestDeviceFolded"

    return-object v0

    .line 1958
    :pswitch_8
    const-string v0, "isFolded"

    return-object v0

    .line 1954
    :pswitch_9
    const-string v0, "dispatchSPenGestureEvent"

    return-object v0

    .line 1950
    :pswitch_a
    const-string v0, "getFullScreenAppsSupportMode"

    return-object v0

    .line 1946
    :pswitch_b
    const-string/jumbo v0, "takeScreenshotToTargetWindow"

    return-object v0

    .line 1942
    :pswitch_c
    const-string v0, "getRotationLockOrientation"

    return-object v0

    .line 1938
    :pswitch_d
    const-string/jumbo v0, "moveDisplayToTop"

    return-object v0

    .line 1934
    :pswitch_e
    const-string v0, "getTopFocusedDisplayId"

    return-object v0

    .line 1930
    :pswitch_f
    const-string/jumbo v0, "setDisplayColorToSystemProperties"

    return-object v0

    .line 1926
    :pswitch_10
    const-string v0, "isMetaKeyEventRequested"

    return-object v0

    .line 1922
    :pswitch_11
    const-string v0, "isSystemKeyEventRequested"

    return-object v0

    .line 1918
    :pswitch_12
    const-string/jumbo v0, "requestSystemKeyEvent"

    return-object v0

    .line 1914
    :pswitch_13
    const-string/jumbo v0, "requestMetaKeyEvent"

    return-object v0

    .line 1910
    :pswitch_14
    const-string/jumbo v0, "setSupportsFlexPanel"

    return-object v0

    .line 1906
    :pswitch_15
    const-string v0, "getSupportsFlexPanel"

    return-object v0

    .line 1902
    :pswitch_16
    const-string/jumbo v0, "setMaxAspectRatioPolicy"

    return-object v0

    .line 1898
    :pswitch_17
    const-string v0, "getMaxAspectRatioPolicy"

    return-object v0

    .line 1894
    :pswitch_18
    const-string v0, "getMaxAspectRatioPolicyByComponent"

    return-object v0

    .line 1890
    :pswitch_19
    const-string/jumbo v0, "setPendingIntentAfterUnlock"

    return-object v0

    .line 1886
    :pswitch_1a
    const-string/jumbo v0, "unregisterOneHandOpWatcher"

    return-object v0

    .line 1882
    :pswitch_1b
    const-string/jumbo v0, "registerOneHandOpWatcher"

    return-object v0

    .line 1878
    :pswitch_1c
    const-string v0, "changeDisplayScale"

    return-object v0

    .line 1874
    :pswitch_1d
    const-string/jumbo v0, "setDeadzoneHole"

    return-object v0

    .line 1870
    :pswitch_1e
    const-string/jumbo v0, "restoreKeyCustomizationInfo"

    return-object v0

    .line 1866
    :pswitch_1f
    const-string v0, "getBackupKeyCustomizationInfoList"

    return-object v0

    .line 1862
    :pswitch_20
    const-string v0, "clearKeyCustomizationInfoByAction"

    return-object v0

    .line 1858
    :pswitch_21
    const-string v0, "clearKeyCustomizationInfoByKeyCode"

    return-object v0

    .line 1854
    :pswitch_22
    const-string/jumbo v0, "removeKeyCustomizationInfoByPackage"

    return-object v0

    .line 1850
    :pswitch_23
    const-string/jumbo v0, "removeKeyCustomizationInfo"

    return-object v0

    .line 1846
    :pswitch_24
    const-string v0, "getLastKeyCustomizationInfo"

    return-object v0

    .line 1842
    :pswitch_25
    const-string v0, "getKeyCustomizationInfoByPackage"

    return-object v0

    .line 1838
    :pswitch_26
    const-string v0, "getKeyCustomizationInfo"

    return-object v0

    .line 1834
    :pswitch_27
    const-string/jumbo v0, "putKeyCustomizationInfo"

    return-object v0

    .line 1830
    :pswitch_28
    const-string/jumbo v0, "setForcedDisplaySizeDensityWithInfo"

    return-object v0

    .line 1826
    :pswitch_29
    const-string/jumbo v0, "setForcedDisplaySizeDensity"

    return-object v0

    .line 1822
    :pswitch_2a
    const-string v0, "clearForcedDisplaySizeDensity"

    return-object v0

    .line 1818
    :pswitch_2b
    const-string v0, "getUserDisplayDensity"

    return-object v0

    .line 1814
    :pswitch_2c
    const-string v0, "getUserDisplaySize"

    return-object v0

    .line 1810
    :pswitch_2d
    const-string v0, "dispatchSmartClipRemoteRequest"

    return-object v0

    .line 1806
    :pswitch_2e
    const-string v0, "getVisibleWindowInfoList"

    return-object v0

    .line 1802
    :pswitch_2f
    const-string v0, "getVisibleWindowInfo"

    return-object v0

    .line 1798
    :pswitch_30
    const-string/jumbo v0, "setRecentsAppBehindSystemBars"

    return-object v0

    .line 1794
    :pswitch_31
    const-string/jumbo v0, "snapshotTaskForRecents"

    return-object v0

    .line 1790
    :pswitch_32
    const-string/jumbo v0, "unregisterTaskFpsCallback"

    return-object v0

    .line 1786
    :pswitch_33
    const-string/jumbo v0, "registerTaskFpsCallback"

    return-object v0

    .line 1782
    :pswitch_34
    const-string v0, "clearTaskTransitionSpec"

    return-object v0

    .line 1778
    :pswitch_35
    const-string/jumbo v0, "setTaskTransitionSpec"

    return-object v0

    .line 1774
    :pswitch_36
    const-string/jumbo v0, "setTaskSnapshotEnabled"

    return-object v0

    .line 1770
    :pswitch_37
    const-string v0, "getImeDisplayId"

    return-object v0

    .line 1766
    :pswitch_38
    const-string v0, "isTaskSnapshotSupported"

    return-object v0

    .line 1762
    :pswitch_39
    const-string/jumbo v0, "unregisterCrossWindowBlurEnabledListener"

    return-object v0

    .line 1758
    :pswitch_3a
    const-string/jumbo v0, "registerCrossWindowBlurEnabledListener"

    return-object v0

    .line 1754
    :pswitch_3b
    const-string v0, "detachWindowContextFromWindowContainer"

    return-object v0

    .line 1750
    :pswitch_3c
    const-string v0, "attachToDisplayContent"

    return-object v0

    .line 1746
    :pswitch_3d
    const-string v0, "attachWindowContextToWindowToken"

    return-object v0

    .line 1742
    :pswitch_3e
    const-string v0, "attachWindowContextToDisplayArea"

    return-object v0

    .line 1738
    :pswitch_3f
    const-string/jumbo v0, "setDisplayHashThrottlingEnabled"

    return-object v0

    .line 1734
    :pswitch_40
    const-string/jumbo v0, "verifyDisplayHash"

    return-object v0

    .line 1730
    :pswitch_41
    const-string v0, "getSupportedDisplayHashAlgorithms"

    return-object v0

    .line 1726
    :pswitch_42
    const-string v0, "holdLock"

    return-object v0

    .line 1722
    :pswitch_43
    const-string/jumbo v0, "requestScrollCapture"

    return-object v0

    .line 1718
    :pswitch_44
    const-string/jumbo v0, "setLayerTracingFlags"

    return-object v0

    .line 1714
    :pswitch_45
    const-string/jumbo v0, "showGlobalActions"

    return-object v0

    .line 1710
    :pswitch_46
    const-string v0, "getPossibleDisplayInfo"

    return-object v0

    .line 1706
    :pswitch_47
    const-string v0, "getWindowInsets"

    return-object v0

    .line 1702
    :pswitch_48
    const-string/jumbo v0, "updateDisplayWindowRequestedVisibilities"

    return-object v0

    .line 1698
    :pswitch_49
    const-string/jumbo v0, "setDisplayWindowInsetsController"

    return-object v0

    .line 1694
    :pswitch_4a
    const-string/jumbo v0, "mirrorDisplay"

    return-object v0

    .line 1690
    :pswitch_4b
    const-string/jumbo v0, "setLayerTracing"

    return-object v0

    .line 1686
    :pswitch_4c
    const-string v0, "isLayerTracing"

    return-object v0

    .line 1682
    :pswitch_4d
    const-string/jumbo v0, "syncInputTransactions"

    return-object v0

    .line 1678
    :pswitch_4e
    const-string/jumbo v0, "setDisplayImePolicy"

    return-object v0

    .line 1674
    :pswitch_4f
    const-string v0, "getDisplayImePolicy"

    return-object v0

    .line 1670
    :pswitch_50
    const-string/jumbo v0, "setShouldShowSystemDecors"

    return-object v0

    .line 1666
    :pswitch_51
    const-string/jumbo v0, "shouldShowSystemDecors"

    return-object v0

    .line 1662
    :pswitch_52
    const-string/jumbo v0, "setShouldShowWithInsecureKeyguard"

    return-object v0

    .line 1658
    :pswitch_53
    const-string/jumbo v0, "shouldShowWithInsecureKeyguard"

    return-object v0

    .line 1654
    :pswitch_54
    const-string/jumbo v0, "setRemoveContentMode"

    return-object v0

    .line 1650
    :pswitch_55
    const-string v0, "getRemoveContentMode"

    return-object v0

    .line 1646
    :pswitch_56
    const-string/jumbo v0, "setWindowingMode"

    return-object v0

    .line 1642
    :pswitch_57
    const-string v0, "getWindowingMode"

    return-object v0

    .line 1638
    :pswitch_58
    const-string/jumbo v0, "startSurfaceAnimation"

    return-object v0

    .line 1634
    :pswitch_59
    const-string v0, "isWindowTraceEnabled"

    return-object v0

    .line 1630
    :pswitch_5a
    const-string/jumbo v0, "saveWindowTraceToFile"

    return-object v0

    .line 1626
    :pswitch_5b
    const-string/jumbo v0, "stopWindowTrace"

    return-object v0

    .line 1622
    :pswitch_5c
    const-string/jumbo v0, "startWindowTrace"

    return-object v0

    .line 1618
    :pswitch_5d
    const-string/jumbo v0, "unregisterDisplayWindowListener"

    return-object v0

    .line 1614
    :pswitch_5e
    const-string/jumbo v0, "registerDisplayWindowListener"

    return-object v0

    .line 1610
    :pswitch_5f
    const-string/jumbo v0, "unregisterDisplayFoldListener"

    return-object v0

    .line 1606
    :pswitch_60
    const-string/jumbo v0, "registerDisplayFoldListener"

    return-object v0

    .line 1602
    :pswitch_61
    const-string v0, "getCurrentImeTouchRegion"

    return-object v0

    .line 1598
    :pswitch_62
    const-string v0, "destroyInputConsumer"

    return-object v0

    .line 1594
    :pswitch_63
    const-string v0, "createInputConsumer"

    return-object v0

    .line 1590
    :pswitch_64
    const-string/jumbo v0, "registerShortcutKey"

    return-object v0

    .line 1586
    :pswitch_65
    const-string v0, "getStableInsets"

    return-object v0

    .line 1582
    :pswitch_66
    const-string/jumbo v0, "requestAppKeyboardShortcuts"

    return-object v0

    .line 1578
    :pswitch_67
    const-string/jumbo v0, "registerPinnedTaskListener"

    return-object v0

    .line 1574
    :pswitch_68
    const-string/jumbo v0, "setDockedTaskDividerTouchRegion"

    return-object v0

    .line 1570
    :pswitch_69
    const-string v0, "getDockedStackSide"

    return-object v0

    .line 1566
    :pswitch_6a
    const-string v0, "getWindowContentFrameStats"

    return-object v0

    .line 1562
    :pswitch_6b
    const-string v0, "clearWindowContentFrameStats"

    return-object v0

    .line 1558
    :pswitch_6c
    const-string v0, "enableScreenIfNeeded"

    return-object v0

    .line 1554
    :pswitch_6d
    const-string v0, "isSafeModeEnabled"

    return-object v0

    .line 1550
    :pswitch_6e
    const-string/jumbo v0, "lockNow"

    return-object v0

    .line 1546
    :pswitch_6f
    const-string v0, "getNavBarPosition"

    return-object v0

    .line 1542
    :pswitch_70
    const-string v0, "hasNavigationBar"

    return-object v0

    .line 1538
    :pswitch_71
    const-string/jumbo v0, "setNavBarVirtualKeyHapticFeedbackEnabled"

    return-object v0

    .line 1534
    :pswitch_72
    const-string/jumbo v0, "updateStaticPrivacyIndicatorBounds"

    return-object v0

    .line 1530
    :pswitch_73
    const-string/jumbo v0, "setRecentsVisibility"

    return-object v0

    .line 1526
    :pswitch_74
    const-string v0, "hideTransientBars"

    return-object v0

    .line 1522
    :pswitch_75
    const-string/jumbo v0, "requestAssistScreenshot"

    return-object v0

    .line 1518
    :pswitch_76
    const-string/jumbo v0, "unregisterSystemGestureExclusionListener"

    return-object v0

    .line 1514
    :pswitch_77
    const-string/jumbo v0, "registerSystemGestureExclusionListener"

    return-object v0

    .line 1510
    :pswitch_78
    const-string/jumbo v0, "unregisterWallpaperVisibilityListener"

    return-object v0

    .line 1506
    :pswitch_79
    const-string/jumbo v0, "registerWallpaperVisibilityListener"

    return-object v0

    .line 1502
    :pswitch_7a
    const-string/jumbo v0, "mirrorWallpaperSurface"

    return-object v0

    .line 1498
    :pswitch_7b
    const-string/jumbo v0, "screenshotWallpaper"

    return-object v0

    .line 1494
    :pswitch_7c
    const-string/jumbo v0, "setIgnoreOrientationRequest"

    return-object v0

    .line 1490
    :pswitch_7d
    const-string/jumbo v0, "setFixedToUserRotation"

    return-object v0

    .line 1486
    :pswitch_7e
    const-string v0, "isDisplayRotationFrozen"

    return-object v0

    .line 1482
    :pswitch_7f
    const-string/jumbo v0, "thawDisplayRotation"

    return-object v0

    .line 1478
    :pswitch_80
    const-string v0, "freezeDisplayRotation"

    return-object v0

    .line 1474
    :pswitch_81
    const-string v0, "isRotationFrozen"

    return-object v0

    .line 1470
    :pswitch_82
    const-string/jumbo v0, "thawRotation"

    return-object v0

    .line 1466
    :pswitch_83
    const-string v0, "freezeRotation"

    return-object v0

    .line 1462
    :pswitch_84
    const-string v0, "getPreferredOptionsPanelGravity"

    return-object v0

    .line 1458
    :pswitch_85
    const-string/jumbo v0, "removeRotationWatcher"

    return-object v0

    .line 1454
    :pswitch_86
    const-string/jumbo v0, "watchRotation"

    return-object v0

    .line 1450
    :pswitch_87
    const-string v0, "getDefaultDisplayRotation"

    return-object v0

    .line 1446
    :pswitch_88
    const-string/jumbo v0, "updateRotation"

    return-object v0

    .line 1442
    :pswitch_89
    const-string/jumbo v0, "refreshScreenCaptureDisabled"

    return-object v0

    .line 1438
    :pswitch_8a
    const-string/jumbo v0, "setStrictModeVisualIndicatorPreference"

    return-object v0

    .line 1434
    :pswitch_8b
    const-string/jumbo v0, "showStrictModeViolation"

    return-object v0

    .line 1430
    :pswitch_8c
    const-string/jumbo v0, "setInTouchMode"

    return-object v0

    .line 1426
    :pswitch_8d
    const-string v0, "getCurrentAnimatorScale"

    return-object v0

    .line 1422
    :pswitch_8e
    const-string/jumbo v0, "setAnimationScales"

    return-object v0

    .line 1418
    :pswitch_8f
    const-string/jumbo v0, "setAnimationScale"

    return-object v0

    .line 1414
    :pswitch_90
    const-string v0, "getAnimationScales"

    return-object v0

    .line 1410
    :pswitch_91
    const-string v0, "getAnimationScale"

    return-object v0

    .line 1406
    :pswitch_92
    const-string v0, "closeSystemDialogsInDisplay"

    return-object v0

    .line 1402
    :pswitch_93
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 1398
    :pswitch_94
    const-string/jumbo v0, "setSwitchingUser"

    return-object v0

    .line 1394
    :pswitch_95
    const-string/jumbo v0, "removeKeyguardLockedStateListener"

    return-object v0

    .line 1390
    :pswitch_96
    const-string v0, "addKeyguardLockedStateListener"

    return-object v0

    .line 1386
    :pswitch_97
    const-string v0, "dismissKeyguard"

    return-object v0

    .line 1382
    :pswitch_98
    const-string v0, "isKeyguardSecure"

    return-object v0

    .line 1378
    :pswitch_99
    const-string v0, "isKeyguardLocked"

    return-object v0

    .line 1374
    :pswitch_9a
    const-string v0, "exitKeyguardSecurely"

    return-object v0

    .line 1370
    :pswitch_9b
    const-string/jumbo v0, "reenableKeyguard"

    return-object v0

    .line 1366
    :pswitch_9c
    const-string v0, "disableKeyguard"

    return-object v0

    .line 1362
    :pswitch_9d
    const-string/jumbo v0, "stopFreezingScreen"

    return-object v0

    .line 1358
    :pswitch_9e
    const-string/jumbo v0, "startFreezingScreen"

    return-object v0

    .line 1354
    :pswitch_9f
    const-string v0, "endProlongedAnimations"

    return-object v0

    .line 1350
    :pswitch_a0
    const-string/jumbo v0, "overridePendingAppTransitionRemote"

    return-object v0

    .line 1346
    :pswitch_a1
    const-string/jumbo v0, "overridePendingAppTransitionMultiThumbFuture"

    return-object v0

    .line 1342
    :pswitch_a2
    const-string/jumbo v0, "setShellRootAccessibilityWindow"

    return-object v0

    .line 1338
    :pswitch_a3
    const-string v0, "addShellRoot"

    return-object v0

    .line 1334
    :pswitch_a4
    const-string/jumbo v0, "setDisplayWindowRotationController"

    return-object v0

    .line 1330
    :pswitch_a5
    const-string/jumbo v0, "removeWindowToken"

    return-object v0

    .line 1326
    :pswitch_a6
    const-string v0, "addWindowToken"

    return-object v0

    .line 1322
    :pswitch_a7
    const-string v0, "isWindowToken"

    return-object v0

    .line 1318
    :pswitch_a8
    const-string/jumbo v0, "setEventDispatching"

    return-object v0

    .line 1314
    :pswitch_a9
    const-string/jumbo v0, "setForcedDisplayScalingMode"

    return-object v0

    .line 1310
    :pswitch_aa
    const-string v0, "clearForcedDisplayDensityForUser"

    return-object v0

    .line 1306
    :pswitch_ab
    const-string/jumbo v0, "setForcedDisplayDensityForUser"

    return-object v0

    .line 1302
    :pswitch_ac
    const-string v0, "getBaseDisplayDensity"

    return-object v0

    .line 1298
    :pswitch_ad
    const-string v0, "getInitialDisplayDensity"

    return-object v0

    .line 1294
    :pswitch_ae
    const-string v0, "clearForcedDisplaySize"

    return-object v0

    .line 1290
    :pswitch_af
    const-string/jumbo v0, "setForcedDisplaySize"

    return-object v0

    .line 1286
    :pswitch_b0
    const-string v0, "getBaseDisplaySize"

    return-object v0

    .line 1282
    :pswitch_b1
    const-string v0, "getInitialDisplaySize"

    return-object v0

    .line 1278
    :pswitch_b2
    const-string/jumbo v0, "useBLAST"

    return-object v0

    .line 1274
    :pswitch_b3
    const-string/jumbo v0, "openSession"

    return-object v0

    .line 1270
    :pswitch_b4
    const-string v0, "isViewServerRunning"

    return-object v0

    .line 1266
    :pswitch_b5
    const-string/jumbo v0, "stopViewServer"

    return-object v0

    .line 1262
    :pswitch_b6
    const-string/jumbo v0, "startViewServer"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1253
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 7706
    const/16 v0, 0xb6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 2001
    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 2005
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.view.IWindowManager"

    .line 2006
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 2007
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2009
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 2017
    packed-switch v10, :pswitch_data_1

    .line 3865
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2013
    :pswitch_0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2014
    return v14

    .line 3857
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3858
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3859
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setDragSurfaceToOverlay(Z)V

    .line 3860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3861
    goto/16 :goto_0

    .line 3850
    .end local v0    # "_arg0":Z
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->startLockscreenFingerprintAuth()V

    .line 3851
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3852
    goto/16 :goto_0

    .line 3843
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 3844
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3845
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3846
    goto/16 :goto_0

    .line 3831
    .end local v0    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3833
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3835
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3836
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3837
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppContinuityMode(ILjava/lang/String;Z)V

    .line 3838
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3839
    goto/16 :goto_0

    .line 3817
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3819
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3821
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 3822
    .local v2, "_arg2":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3823
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->getAppContinuityMode(ILjava/lang/String;Landroid/content/pm/ActivityInfo;)I

    move-result v3

    .line 3824
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3825
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3826
    goto/16 :goto_0

    .line 3809
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/pm/ActivityInfo;
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isTableMode()Z

    move-result v0

    .line 3810
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3811
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3812
    goto/16 :goto_0

    .line 3801
    .end local v0    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3802
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3803
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setTableModeEnabled(Z)V

    .line 3804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3805
    goto/16 :goto_0

    .line 3792
    .end local v0    # "_arg0":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3793
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3794
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->requestDeviceFolded(Z)V

    .line 3795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3796
    goto/16 :goto_0

    .line 3784
    .end local v0    # "_arg0":Z
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isFolded()Z

    move-result v0

    .line 3785
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3786
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3787
    goto/16 :goto_0

    .line 3770
    .end local v0    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3772
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3774
    .local v1, "_arg1":I
    sget-object v2, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/InputEvent;

    .line 3776
    .local v2, "_arg2":[Landroid/view/InputEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3777
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3778
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->dispatchSPenGestureEvent(II[Landroid/view/InputEvent;Landroid/os/IBinder;)V

    .line 3779
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3780
    goto/16 :goto_0

    .line 3762
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Landroid/view/InputEvent;
    .end local v3    # "_arg3":Landroid/os/IBinder;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getFullScreenAppsSupportMode()I

    move-result v0

    .line 3763
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3764
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3765
    goto/16 :goto_0

    .line 3739
    .end local v0    # "_result":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3741
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3743
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 3745
    .local v17, "_arg2":Z
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Rect;

    .line 3747
    .local v18, "_arg3":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 3749
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 3751
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 3753
    .local v21, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 3754
    .local v22, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3755
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowManager$Stub;->takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3756
    .local v0, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3757
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3758
    goto/16 :goto_0

    .line 3729
    .end local v0    # "_result":Landroid/graphics/Bitmap;
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Z
    .end local v18    # "_arg3":Landroid/graphics/Rect;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Z
    .end local v22    # "_arg7":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3730
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3731
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getRotationLockOrientation(I)I

    move-result v1

    .line 3732
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3733
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3734
    goto/16 :goto_0

    .line 3718
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3720
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3721
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3722
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->moveDisplayToTop(ILjava/lang/String;)V

    .line 3723
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3724
    goto/16 :goto_0

    .line 3710
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getTopFocusedDisplayId()I

    move-result v0

    .line 3711
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3712
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3713
    goto/16 :goto_0

    .line 3702
    .end local v0    # "_result":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3703
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3704
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setDisplayColorToSystemProperties(I)V

    .line 3705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3706
    goto/16 :goto_0

    .line 3692
    .end local v0    # "_arg0":I
    :pswitch_11
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3693
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3694
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->isMetaKeyEventRequested(Landroid/content/ComponentName;)Z

    move-result v1

    .line 3695
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3696
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3697
    goto/16 :goto_0

    .line 3680
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":Z
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3682
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3683
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3684
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v2

    .line 3685
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3686
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3687
    goto/16 :goto_0

    .line 3666
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3668
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3670
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3671
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3672
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v3

    .line 3673
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3674
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3675
    goto/16 :goto_0

    .line 3655
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_14
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3657
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3658
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3659
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->requestMetaKeyEvent(Landroid/content/ComponentName;Z)V

    .line 3660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3661
    goto/16 :goto_0

    .line 3642
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3644
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3646
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3647
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3648
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setSupportsFlexPanel(ILjava/lang/String;Z)V

    .line 3649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3650
    goto/16 :goto_0

    .line 3630
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3632
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3633
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3634
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->getSupportsFlexPanel(ILjava/lang/String;)I

    move-result v2

    .line 3635
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3636
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3637
    goto/16 :goto_0

    .line 3615
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3617
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3619
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3621
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3622
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3623
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->setMaxAspectRatioPolicy(Ljava/lang/String;IZI)V

    .line 3624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3625
    goto/16 :goto_0

    .line 3603
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3605
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3606
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3607
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->getMaxAspectRatioPolicy(Ljava/lang/String;I)I

    move-result v2

    .line 3608
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3609
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3610
    goto/16 :goto_0

    .line 3591
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_19
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3593
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3594
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3595
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->getMaxAspectRatioPolicyByComponent(Landroid/content/ComponentName;I)I

    move-result v2

    .line 3596
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3597
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3598
    goto/16 :goto_0

    .line 3580
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_1a
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 3582
    .local v0, "_arg0":Landroid/app/PendingIntent;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 3583
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3584
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 3585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3586
    goto/16 :goto_0

    .line 3571
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":Landroid/content/Intent;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    move-result-object v0

    .line 3572
    .local v0, "_arg0":Lcom/samsung/android/onehandop/IOneHandOpWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3573
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->unregisterOneHandOpWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V

    .line 3574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3575
    goto/16 :goto_0

    .line 3562
    .end local v0    # "_arg0":Lcom/samsung/android/onehandop/IOneHandOpWatcher;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    move-result-object v0

    .line 3563
    .restart local v0    # "_arg0":Lcom/samsung/android/onehandop/IOneHandOpWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3564
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->registerOneHandOpWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V

    .line 3565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3566
    goto/16 :goto_0

    .line 3549
    .end local v0    # "_arg0":Lcom/samsung/android/onehandop/IOneHandOpWatcher;
    :pswitch_1d
    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MagnificationSpec;

    .line 3551
    .local v0, "_arg0":Landroid/view/MagnificationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3553
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IInputFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IInputFilter;

    move-result-object v2

    .line 3554
    .local v2, "_arg2":Landroid/view/IInputFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3555
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->changeDisplayScale(Landroid/view/MagnificationSpec;ZLandroid/view/IInputFilter;)V

    .line 3556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3557
    goto/16 :goto_0

    .line 3540
    .end local v0    # "_arg0":Landroid/view/MagnificationSpec;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/view/IInputFilter;
    :pswitch_1e
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 3541
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3542
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setDeadzoneHole(Landroid/os/Bundle;)V

    .line 3543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3544
    goto/16 :goto_0

    .line 3531
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_1f
    sget-object v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3532
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3533
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->restoreKeyCustomizationInfo(Ljava/util/List;)V

    .line 3534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3535
    goto/16 :goto_0

    .line 3523
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;>;"
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getBackupKeyCustomizationInfoList()Ljava/util/List;

    move-result-object v0

    .line 3524
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3525
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3526
    goto/16 :goto_0

    .line 3511
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;>;"
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3513
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3515
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3516
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3517
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->clearKeyCustomizationInfoByAction(III)V

    .line 3518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3519
    goto/16 :goto_0

    .line 3500
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3502
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3503
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3504
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->clearKeyCustomizationInfoByKeyCode(II)V

    .line 3505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3506
    goto/16 :goto_0

    .line 3487
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3489
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3491
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3492
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3493
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->removeKeyCustomizationInfoByPackage(Ljava/lang/String;II)V

    .line 3494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3495
    goto/16 :goto_0

    .line 3474
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3476
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3478
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3479
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3480
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->removeKeyCustomizationInfo(III)V

    .line 3481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3482
    goto/16 :goto_0

    .line 3462
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3464
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3465
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3466
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v2

    .line 3467
    .local v2, "_result":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3468
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3469
    goto/16 :goto_0

    .line 3448
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3450
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3452
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3453
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3454
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->getKeyCustomizationInfoByPackage(Ljava/lang/String;II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v3

    .line 3455
    .local v3, "_result":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3456
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3457
    goto/16 :goto_0

    .line 3434
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3436
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3438
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3439
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3440
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->getKeyCustomizationInfo(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v3

    .line 3441
    .restart local v3    # "_result":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3442
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3443
    goto/16 :goto_0

    .line 3425
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    :pswitch_28
    sget-object v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 3426
    .local v0, "_arg0":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3427
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    .line 3428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3429
    goto/16 :goto_0

    .line 3416
    .end local v0    # "_arg0":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    :pswitch_29
    sget-object v0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;

    .line 3417
    .local v0, "_arg0":Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3418
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySizeDensityWithInfo(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V

    .line 3419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3420
    goto/16 :goto_0

    .line 3397
    .end local v0    # "_arg0":Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3399
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3401
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3403
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3405
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 3407
    .local v17, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 3408
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3409
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySizeDensity(IIIIZI)V

    .line 3410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3411
    goto/16 :goto_0

    .line 3388
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":I
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3389
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3390
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySizeDensity(I)V

    .line 3391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3392
    goto/16 :goto_0

    .line 3380
    .end local v0    # "_arg0":I
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getUserDisplayDensity()I

    move-result v0

    .line 3381
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3382
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3383
    goto/16 :goto_0

    .line 3371
    .end local v0    # "_result":I
    :pswitch_2d
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3372
    .local v0, "_arg0":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3373
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getUserDisplaySize(Landroid/graphics/Point;)V

    .line 3374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3375
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3376
    goto/16 :goto_0

    .line 3356
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3358
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3360
    .restart local v1    # "_arg1":I
    sget-object v2, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .line 3362
    .local v2, "_arg2":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3363
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3364
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 3365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3366
    goto/16 :goto_0

    .line 3348
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    .end local v3    # "_arg3":Landroid/os/IBinder;
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getVisibleWindowInfoList()Ljava/util/List;

    move-result-object v0

    .line 3349
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3350
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3351
    goto/16 :goto_0

    .line 3341
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;>;"
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getVisibleWindowInfo()Ljava/util/List;

    move-result-object v0

    .line 3342
    .restart local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3343
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3344
    goto/16 :goto_0

    .line 3333
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;>;"
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3334
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3335
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setRecentsAppBehindSystemBars(Z)V

    .line 3336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3337
    goto/16 :goto_0

    .line 3323
    .end local v0    # "_arg0":Z
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3324
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3325
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->snapshotTaskForRecents(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3326
    .local v1, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3327
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3328
    goto/16 :goto_0

    .line 3314
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Bitmap;
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/ITaskFpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFpsCallback;

    move-result-object v0

    .line 3315
    .local v0, "_arg0":Landroid/window/ITaskFpsCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3316
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->unregisterTaskFpsCallback(Landroid/window/ITaskFpsCallback;)V

    .line 3317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3318
    goto/16 :goto_0

    .line 3303
    .end local v0    # "_arg0":Landroid/window/ITaskFpsCallback;
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3305
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/ITaskFpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFpsCallback;

    move-result-object v1

    .line 3306
    .local v1, "_arg1":Landroid/window/ITaskFpsCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3307
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->registerTaskFpsCallback(ILandroid/window/ITaskFpsCallback;)V

    .line 3308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3309
    goto/16 :goto_0

    .line 3296
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/window/ITaskFpsCallback;
    :pswitch_35
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->clearTaskTransitionSpec()V

    .line 3297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3298
    goto/16 :goto_0

    .line 3288
    :pswitch_36
    sget-object v0, Landroid/view/TaskTransitionSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TaskTransitionSpec;

    .line 3289
    .local v0, "_arg0":Landroid/view/TaskTransitionSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3290
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setTaskTransitionSpec(Landroid/view/TaskTransitionSpec;)V

    .line 3291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3292
    goto/16 :goto_0

    .line 3279
    .end local v0    # "_arg0":Landroid/view/TaskTransitionSpec;
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3280
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3281
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setTaskSnapshotEnabled(Z)V

    .line 3282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3283
    goto/16 :goto_0

    .line 3271
    .end local v0    # "_arg0":Z
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getImeDisplayId()I

    move-result v0

    .line 3272
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3273
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3274
    goto/16 :goto_0

    .line 3264
    .end local v0    # "_result":I
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isTaskSnapshotSupported()Z

    move-result v0

    .line 3265
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3266
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3267
    goto/16 :goto_0

    .line 3256
    .end local v0    # "_result":Z
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object v0

    .line 3257
    .local v0, "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3258
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V

    .line 3259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3260
    goto/16 :goto_0

    .line 3246
    .end local v0    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object v0

    .line 3247
    .restart local v0    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3248
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z

    move-result v1

    .line 3249
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3250
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3251
    goto/16 :goto_0

    .line 3237
    .end local v0    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    .end local v1    # "_result":Z
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3238
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3239
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->detachWindowContextFromWindowContainer(Landroid/os/IBinder;)V

    .line 3240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3241
    goto/16 :goto_0

    .line 3225
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3227
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3228
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3229
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->attachToDisplayContent(Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 3230
    .local v2, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3231
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3232
    goto/16 :goto_0

    .line 3214
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/res/Configuration;
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3216
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3217
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3218
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->attachWindowContextToWindowToken(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 3219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3220
    goto/16 :goto_0

    .line 3198
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3200
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3202
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3204
    .local v2, "_arg2":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 3205
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3206
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->attachWindowContextToDisplayArea(Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/content/res/Configuration;

    move-result-object v4

    .line 3207
    .local v4, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3208
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3209
    goto/16 :goto_0

    .line 3189
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/content/res/Configuration;
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3190
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3191
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setDisplayHashThrottlingEnabled(Z)V

    .line 3192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3193
    goto/16 :goto_0

    .line 3179
    .end local v0    # "_arg0":Z
    :pswitch_41
    sget-object v0, Landroid/view/displayhash/DisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/displayhash/DisplayHash;

    .line 3180
    .local v0, "_arg0":Landroid/view/displayhash/DisplayHash;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3181
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->verifyDisplayHash(Landroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;

    move-result-object v1

    .line 3182
    .local v1, "_result":Landroid/view/displayhash/VerifiedDisplayHash;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3183
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3184
    goto/16 :goto_0

    .line 3171
    .end local v0    # "_arg0":Landroid/view/displayhash/DisplayHash;
    .end local v1    # "_result":Landroid/view/displayhash/VerifiedDisplayHash;
    :pswitch_42
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getSupportedDisplayHashAlgorithms()[Ljava/lang/String;

    move-result-object v0

    .line 3172
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3173
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3174
    goto/16 :goto_0

    .line 3161
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3163
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3164
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3165
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    .line 3166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3167
    goto/16 :goto_0

    .line 3146
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3148
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3150
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3152
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureResponseListener;

    move-result-object v3

    .line 3153
    .local v3, "_arg3":Landroid/view/IScrollCaptureResponseListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3154
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->requestScrollCapture(ILandroid/os/IBinder;ILandroid/view/IScrollCaptureResponseListener;)V

    .line 3155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3156
    goto/16 :goto_0

    .line 3137
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/view/IScrollCaptureResponseListener;
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3138
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3139
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setLayerTracingFlags(I)V

    .line 3140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3141
    goto/16 :goto_0

    .line 3130
    .end local v0    # "_arg0":I
    :pswitch_46
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->showGlobalActions()V

    .line 3131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3132
    goto/16 :goto_0

    .line 3119
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3121
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3122
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3123
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->getPossibleDisplayInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 3124
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3125
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3126
    goto/16 :goto_0

    .line 3104
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    :pswitch_48
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 3106
    .local v0, "_arg0":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3108
    .local v1, "_arg1":I
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2}, Landroid/view/InsetsState;-><init>()V

    .line 3109
    .local v2, "_arg2":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3110
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->getWindowInsets(Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;)Z

    move-result v3

    .line 3111
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3112
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3113
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3114
    goto/16 :goto_0

    .line 3093
    .end local v0    # "_arg0":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/view/InsetsState;
    .end local v3    # "_result":Z
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3095
    .local v0, "_arg0":I
    sget-object v1, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsVisibilities;

    .line 3096
    .local v1, "_arg1":Landroid/view/InsetsVisibilities;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3097
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->updateDisplayWindowRequestedVisibilities(ILandroid/view/InsetsVisibilities;)V

    .line 3098
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3099
    goto/16 :goto_0

    .line 3082
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/InsetsVisibilities;
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3084
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IDisplayWindowInsetsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowInsetsController;

    move-result-object v1

    .line 3085
    .local v1, "_arg1":Landroid/view/IDisplayWindowInsetsController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3086
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setDisplayWindowInsetsController(ILandroid/view/IDisplayWindowInsetsController;)V

    .line 3087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3088
    goto/16 :goto_0

    .line 3069
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/IDisplayWindowInsetsController;
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3071
    .restart local v0    # "_arg0":I
    new-instance v1, Landroid/view/SurfaceControl;

    invoke-direct {v1}, Landroid/view/SurfaceControl;-><init>()V

    .line 3072
    .local v1, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3073
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->mirrorDisplay(ILandroid/view/SurfaceControl;)Z

    move-result v2

    .line 3074
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3075
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3076
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3077
    goto/16 :goto_0

    .line 3060
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/SurfaceControl;
    .end local v2    # "_result":Z
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3061
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3062
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setLayerTracing(Z)V

    .line 3063
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3064
    goto/16 :goto_0

    .line 3052
    .end local v0    # "_arg0":Z
    :pswitch_4d
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isLayerTracing()Z

    move-result v0

    .line 3053
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3054
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3055
    goto/16 :goto_0

    .line 3044
    .end local v0    # "_result":Z
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3045
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3046
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->syncInputTransactions(Z)V

    .line 3047
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3048
    goto/16 :goto_0

    .line 3033
    .end local v0    # "_arg0":Z
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3035
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3036
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3037
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setDisplayImePolicy(II)V

    .line 3038
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3039
    goto/16 :goto_0

    .line 3023
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3024
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3025
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getDisplayImePolicy(I)I

    move-result v1

    .line 3026
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3027
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3028
    goto/16 :goto_0

    .line 3012
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3014
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3015
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3016
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setShouldShowSystemDecors(IZ)V

    .line 3017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3018
    goto/16 :goto_0

    .line 3002
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3003
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3004
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->shouldShowSystemDecors(I)Z

    move-result v1

    .line 3005
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3006
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3007
    goto/16 :goto_0

    .line 2991
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2993
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2994
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2995
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setShouldShowWithInsecureKeyguard(IZ)V

    .line 2996
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2997
    goto/16 :goto_0

    .line 2981
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2982
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2983
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->shouldShowWithInsecureKeyguard(I)Z

    move-result v1

    .line 2984
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2985
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2986
    goto/16 :goto_0

    .line 2970
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2972
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2973
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2974
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setRemoveContentMode(II)V

    .line 2975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2976
    goto/16 :goto_0

    .line 2960
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2961
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2962
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getRemoveContentMode(I)I

    move-result v1

    .line 2963
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2964
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2965
    goto/16 :goto_0

    .line 2949
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2951
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2952
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2953
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setWindowingMode(II)V

    .line 2954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2955
    goto/16 :goto_0

    .line 2939
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2940
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2941
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getWindowingMode(I)I

    move-result v1

    .line 2942
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2943
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2944
    goto/16 :goto_0

    .line 2929
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2931
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2932
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2933
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->startSurfaceAnimation(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2934
    goto/16 :goto_0

    .line 2921
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5a
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isWindowTraceEnabled()Z

    move-result v0

    .line 2922
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2923
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2924
    goto/16 :goto_0

    .line 2915
    .end local v0    # "_result":Z
    :pswitch_5b
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->saveWindowTraceToFile()V

    .line 2916
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2917
    goto/16 :goto_0

    .line 2909
    :pswitch_5c
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopWindowTrace()V

    .line 2910
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2911
    goto/16 :goto_0

    .line 2903
    :pswitch_5d
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->startWindowTrace()V

    .line 2904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2905
    goto/16 :goto_0

    .line 2895
    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object v0

    .line 2896
    .local v0, "_arg0":Landroid/view/IDisplayWindowListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2897
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V

    .line 2898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2899
    goto/16 :goto_0

    .line 2885
    .end local v0    # "_arg0":Landroid/view/IDisplayWindowListener;
    :pswitch_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object v0

    .line 2886
    .restart local v0    # "_arg0":Landroid/view/IDisplayWindowListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2887
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object v1

    .line 2888
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2889
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2890
    goto/16 :goto_0

    .line 2876
    .end local v0    # "_arg0":Landroid/view/IDisplayWindowListener;
    .end local v1    # "_result":[I
    :pswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object v0

    .line 2877
    .local v0, "_arg0":Landroid/view/IDisplayFoldListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2878
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 2879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2880
    goto/16 :goto_0

    .line 2867
    .end local v0    # "_arg0":Landroid/view/IDisplayFoldListener;
    :pswitch_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object v0

    .line 2868
    .restart local v0    # "_arg0":Landroid/view/IDisplayFoldListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2869
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 2870
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2871
    goto/16 :goto_0

    .line 2859
    .end local v0    # "_arg0":Landroid/view/IDisplayFoldListener;
    :pswitch_62
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object v0

    .line 2860
    .local v0, "_result":Landroid/graphics/Region;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2861
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2862
    goto/16 :goto_0

    .line 2848
    .end local v0    # "_result":Landroid/graphics/Region;
    :pswitch_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2850
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2851
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2852
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->destroyInputConsumer(Ljava/lang/String;I)Z

    move-result v2

    .line 2853
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2854
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2855
    goto/16 :goto_0

    .line 2832
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2834
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2836
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2838
    .local v2, "_arg2":I
    new-instance v3, Landroid/view/InputChannel;

    invoke-direct {v3}, Landroid/view/InputChannel;-><init>()V

    .line 2839
    .local v3, "_arg3":Landroid/view/InputChannel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2840
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V

    .line 2841
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2842
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2843
    goto/16 :goto_0

    .line 2821
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/view/InputChannel;
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 2823
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IShortcutService;

    move-result-object v2

    .line 2824
    .local v2, "_arg1":Lcom/android/internal/policy/IShortcutService;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2825
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 2826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2827
    goto/16 :goto_0

    .line 2809
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Lcom/android/internal/policy/IShortcutService;
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2811
    .local v0, "_arg0":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2812
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2813
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->getStableInsets(ILandroid/graphics/Rect;)V

    .line 2814
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2815
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2816
    goto/16 :goto_0

    .line 2798
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :pswitch_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 2800
    .local v0, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2801
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2802
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 2803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2804
    goto/16 :goto_0

    .line 2787
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v1    # "_arg1":I
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2789
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IPinnedTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedTaskListener;

    move-result-object v1

    .line 2790
    .local v1, "_arg1":Landroid/view/IPinnedTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2791
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->registerPinnedTaskListener(ILandroid/view/IPinnedTaskListener;)V

    .line 2792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2793
    goto/16 :goto_0

    .line 2778
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/IPinnedTaskListener;
    :pswitch_69
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 2779
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2780
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setDockedTaskDividerTouchRegion(Landroid/graphics/Rect;)V

    .line 2781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2782
    goto/16 :goto_0

    .line 2770
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :pswitch_6a
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getDockedStackSide()I

    move-result v0

    .line 2771
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2772
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2773
    goto/16 :goto_0

    .line 2761
    .end local v0    # "_result":I
    :pswitch_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2762
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2763
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v1

    .line 2764
    .local v1, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2765
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2766
    goto/16 :goto_0

    .line 2751
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Landroid/view/WindowContentFrameStats;
    :pswitch_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2752
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2753
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v1

    .line 2754
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2755
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2756
    goto/16 :goto_0

    .line 2744
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_6d
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->enableScreenIfNeeded()V

    .line 2745
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2746
    goto/16 :goto_0

    .line 2737
    :pswitch_6e
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result v0

    .line 2738
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2739
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2740
    goto/16 :goto_0

    .line 2729
    .end local v0    # "_result":Z
    :pswitch_6f
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 2730
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2731
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 2732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2733
    goto/16 :goto_0

    .line 2719
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2720
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2721
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getNavBarPosition(I)I

    move-result v1

    .line 2722
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2723
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2724
    goto/16 :goto_0

    .line 2709
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2710
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2711
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar(I)Z

    move-result v1

    .line 2712
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2713
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2714
    goto/16 :goto_0

    .line 2700
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2701
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2702
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    .line 2703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2704
    goto/16 :goto_0

    .line 2690
    .end local v0    # "_arg0":Z
    :pswitch_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2692
    .local v0, "_arg0":I
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Rect;

    .line 2693
    .local v1, "_arg1":[Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2694
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V

    .line 2695
    goto/16 :goto_0

    .line 2682
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/graphics/Rect;
    :pswitch_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2683
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2684
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setRecentsVisibility(Z)V

    .line 2685
    goto/16 :goto_0

    .line 2674
    .end local v0    # "_arg0":Z
    :pswitch_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2675
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2676
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->hideTransientBars(I)V

    .line 2677
    goto/16 :goto_0

    .line 2664
    .end local v0    # "_arg0":I
    :pswitch_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    .line 2665
    .local v0, "_arg0":Landroid/app/IAssistDataReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2666
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z

    move-result v1

    .line 2667
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2668
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2669
    goto/16 :goto_0

    .line 2653
    .end local v0    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v1    # "_result":Z
    :pswitch_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object v0

    .line 2655
    .local v0, "_arg0":Landroid/view/ISystemGestureExclusionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2656
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2657
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 2658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2659
    goto/16 :goto_0

    .line 2642
    .end local v0    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    .end local v1    # "_arg1":I
    :pswitch_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object v0

    .line 2644
    .restart local v0    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2645
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2646
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 2647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2648
    goto/16 :goto_0

    .line 2631
    .end local v0    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    .end local v1    # "_arg1":I
    :pswitch_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v0

    .line 2633
    .local v0, "_arg0":Landroid/view/IWallpaperVisibilityListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2634
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2635
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 2636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2637
    goto/16 :goto_0

    .line 2619
    .end local v0    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    .end local v1    # "_arg1":I
    :pswitch_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v0

    .line 2621
    .restart local v0    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2622
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2623
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result v2

    .line 2624
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2625
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2626
    goto/16 :goto_0

    .line 2609
    .end local v0    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2610
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2611
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;

    move-result-object v1

    .line 2612
    .local v1, "_result":Landroid/view/SurfaceControl;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2613
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2614
    goto/16 :goto_0

    .line 2601
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/view/SurfaceControl;
    :pswitch_7c
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2602
    .local v0, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2603
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2604
    goto/16 :goto_0

    .line 2591
    .end local v0    # "_result":Landroid/graphics/Bitmap;
    :pswitch_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2593
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2594
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2595
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setIgnoreOrientationRequest(IZ)V

    .line 2596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2597
    goto/16 :goto_0

    .line 2580
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2582
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2583
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2584
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setFixedToUserRotation(II)V

    .line 2585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2586
    goto/16 :goto_0

    .line 2570
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2571
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2572
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->isDisplayRotationFrozen(I)Z

    move-result v1

    .line 2573
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2574
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2575
    goto/16 :goto_0

    .line 2561
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2562
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2563
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->thawDisplayRotation(I)V

    .line 2564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2565
    goto/16 :goto_0

    .line 2550
    .end local v0    # "_arg0":I
    :pswitch_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2552
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2553
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2554
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->freezeDisplayRotation(II)V

    .line 2555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2556
    goto/16 :goto_0

    .line 2542
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_82
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result v0

    .line 2543
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2544
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2545
    goto/16 :goto_0

    .line 2536
    .end local v0    # "_result":Z
    :pswitch_83
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 2537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2538
    goto/16 :goto_0

    .line 2528
    :pswitch_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2529
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2530
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 2531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2532
    goto/16 :goto_0

    .line 2518
    .end local v0    # "_arg0":I
    :pswitch_85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2519
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2520
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity(I)I

    move-result v1

    .line 2521
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2522
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2523
    goto/16 :goto_0

    .line 2509
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v0

    .line 2510
    .local v0, "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2511
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 2512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2513
    goto/16 :goto_0

    .line 2497
    .end local v0    # "_arg0":Landroid/view/IRotationWatcher;
    :pswitch_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v0

    .line 2499
    .restart local v0    # "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2500
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2501
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result v2

    .line 2502
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2503
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2504
    goto/16 :goto_0

    .line 2489
    .end local v0    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_88
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getDefaultDisplayRotation()I

    move-result v0

    .line 2490
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2491
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2492
    goto/16 :goto_0

    .line 2479
    .end local v0    # "_result":I
    :pswitch_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2481
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2482
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2483
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    .line 2484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2485
    goto/16 :goto_0

    .line 2472
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_8a
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->refreshScreenCaptureDisabled()V

    .line 2473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2474
    goto/16 :goto_0

    .line 2464
    :pswitch_8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2465
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2466
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 2467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2468
    goto/16 :goto_0

    .line 2455
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2456
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2457
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 2458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2459
    goto/16 :goto_0

    .line 2446
    .end local v0    # "_arg0":Z
    :pswitch_8d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2447
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2448
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 2449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2450
    goto/16 :goto_0

    .line 2438
    .end local v0    # "_arg0":Z
    :pswitch_8e
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result v0

    .line 2439
    .local v0, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2440
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2441
    goto/16 :goto_0

    .line 2430
    .end local v0    # "_result":F
    :pswitch_8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 2431
    .local v0, "_arg0":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2432
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 2433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2434
    goto/16 :goto_0

    .line 2419
    .end local v0    # "_arg0":[F
    :pswitch_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2421
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 2422
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2423
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 2424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2425
    goto/16 :goto_0

    .line 2411
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    :pswitch_91
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v0

    .line 2412
    .local v0, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2413
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2414
    goto/16 :goto_0

    .line 2402
    .end local v0    # "_result":[F
    :pswitch_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2403
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2404
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v1

    .line 2405
    .local v1, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2406
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2407
    goto/16 :goto_0

    .line 2391
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    :pswitch_93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2393
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2394
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2395
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->closeSystemDialogsInDisplay(Ljava/lang/String;I)V

    .line 2396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2397
    goto/16 :goto_0

    .line 2382
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2383
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2384
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 2385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2386
    goto/16 :goto_0

    .line 2373
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2374
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2375
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setSwitchingUser(Z)V

    .line 2376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2377
    goto/16 :goto_0

    .line 2364
    .end local v0    # "_arg0":Z
    :pswitch_96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object v0

    .line 2365
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2366
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->removeKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    .line 2367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2368
    goto/16 :goto_0

    .line 2355
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    :pswitch_97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object v0

    .line 2356
    .restart local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2357
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->addKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    .line 2358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2359
    goto/16 :goto_0

    .line 2344
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    :pswitch_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v0

    .line 2346
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 2347
    .local v1, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2348
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 2349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2350
    goto/16 :goto_0

    .line 2334
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .end local v1    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2335
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2336
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure(I)Z

    move-result v1

    .line 2337
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2338
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2339
    goto/16 :goto_0

    .line 2326
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_9a
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v0

    .line 2327
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2328
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2329
    goto/16 :goto_0

    .line 2318
    .end local v0    # "_result":Z
    :pswitch_9b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v0

    .line 2319
    .local v0, "_arg0":Landroid/view/IOnKeyguardExitResult;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2320
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 2321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2322
    goto/16 :goto_0

    .line 2307
    .end local v0    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :pswitch_9c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2309
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2310
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2311
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;I)V

    .line 2312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2313
    goto/16 :goto_0

    .line 2294
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2296
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2298
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2299
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2300
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 2301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2302
    goto/16 :goto_0

    .line 2287
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_9e
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    .line 2288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2289
    goto/16 :goto_0

    .line 2277
    :pswitch_9f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2279
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2280
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2281
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    .line 2282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2283
    goto/16 :goto_0

    .line 2270
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_a0
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->endProlongedAnimations()V

    .line 2271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2272
    goto/16 :goto_0

    .line 2260
    :pswitch_a1
    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    .line 2262
    .local v0, "_arg0":Landroid/view/RemoteAnimationAdapter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2263
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2264
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V

    .line 2265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2266
    goto/16 :goto_0

    .line 2245
    .end local v0    # "_arg0":Landroid/view/RemoteAnimationAdapter;
    .end local v1    # "_arg1":I
    :pswitch_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v0

    .line 2247
    .local v0, "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v1

    .line 2249
    .local v1, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2251
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2252
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2253
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;ZI)V

    .line 2254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2255
    goto/16 :goto_0

    .line 2232
    .end local v0    # "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v1    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    :pswitch_a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2234
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2236
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 2237
    .local v2, "_arg2":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2238
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setShellRootAccessibilityWindow(IILandroid/view/IWindow;)V

    .line 2239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2240
    goto/16 :goto_0

    .line 2218
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/view/IWindow;
    :pswitch_a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2220
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 2222
    .local v1, "_arg1":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2223
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2224
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->addShellRoot(ILandroid/view/IWindow;I)Landroid/view/SurfaceControl;

    move-result-object v3

    .line 2225
    .local v3, "_result":Landroid/view/SurfaceControl;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2226
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2227
    goto/16 :goto_0

    .line 2209
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/IWindow;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/view/SurfaceControl;
    :pswitch_a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IDisplayWindowRotationController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowRotationController;

    move-result-object v0

    .line 2210
    .local v0, "_arg0":Landroid/view/IDisplayWindowRotationController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2211
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setDisplayWindowRotationController(Landroid/view/IDisplayWindowRotationController;)V

    .line 2212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2213
    goto/16 :goto_0

    .line 2198
    .end local v0    # "_arg0":Landroid/view/IDisplayWindowRotationController;
    :pswitch_a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2200
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2201
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2202
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;I)V

    .line 2203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2204
    goto/16 :goto_0

    .line 2183
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2185
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2187
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2189
    .restart local v2    # "_arg2":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 2190
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2191
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 2192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2193
    goto/16 :goto_0

    .line 2173
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2174
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2175
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->isWindowToken(Landroid/os/IBinder;)Z

    move-result v1

    .line 2176
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2177
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2178
    goto/16 :goto_0

    .line 2164
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2165
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2166
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 2167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2168
    goto/16 :goto_0

    .line 2153
    .end local v0    # "_arg0":Z
    :pswitch_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2155
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2156
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2157
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    .line 2158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2159
    goto/16 :goto_0

    .line 2142
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2144
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2145
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2146
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensityForUser(II)V

    .line 2147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2148
    goto/16 :goto_0

    .line 2129
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2131
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2133
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2134
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2135
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityForUser(III)V

    .line 2136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2137
    goto/16 :goto_0

    .line 2119
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2120
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2121
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result v1

    .line 2122
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2123
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2124
    goto/16 :goto_0

    .line 2109
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2110
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2111
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result v1

    .line 2112
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2113
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2114
    goto/16 :goto_0

    .line 2100
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2101
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2102
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 2103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2104
    goto/16 :goto_0

    .line 2087
    .end local v0    # "_arg0":I
    :pswitch_b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2089
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2091
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2092
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2093
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 2094
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2095
    goto/16 :goto_0

    .line 2075
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2077
    .restart local v0    # "_arg0":I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2078
    .local v1, "_arg1":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2079
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 2080
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2081
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2082
    goto :goto_0

    .line 2063
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Point;
    :pswitch_b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2065
    .restart local v0    # "_arg0":I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2066
    .restart local v1    # "_arg1":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2067
    invoke-virtual {v9, v0, v1}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 2068
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2069
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2070
    goto :goto_0

    .line 2055
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Point;
    :pswitch_b3
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->useBLAST()Z

    move-result v0

    .line 2056
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2057
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2058
    goto :goto_0

    .line 2046
    .end local v0    # "_result":Z
    :pswitch_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object v0

    .line 2047
    .local v0, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2048
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;

    move-result-object v1

    .line 2049
    .local v1, "_result":Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2050
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2051
    goto :goto_0

    .line 2038
    .end local v0    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v1    # "_result":Landroid/view/IWindowSession;
    :pswitch_b5
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v0

    .line 2039
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2040
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2041
    goto :goto_0

    .line 2031
    .end local v0    # "_result":Z
    :pswitch_b6
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v0

    .line 2032
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2033
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2034
    goto :goto_0

    .line 2022
    .end local v0    # "_result":Z
    :pswitch_b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2023
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2024
    invoke-virtual {v9, v0}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v1

    .line 2025
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2026
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2027
    nop

    .line 3868
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :goto_0
    return v14

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
