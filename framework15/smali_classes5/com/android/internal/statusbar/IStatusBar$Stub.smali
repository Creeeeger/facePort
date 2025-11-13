.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final blacklist TRANSACTION_abortTransient:I = 0x37

.field static final greylist-max-o TRANSACTION_addQsTile:I = 0x23

.field static final blacklist TRANSACTION_addQsTileToFrontOrEnd:I = 0x24

.field static final greylist-max-o TRANSACTION_animateCollapsePanels:I = 0x6

.field static final greylist-max-o TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final greylist-max-o TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final greylist-max-o TRANSACTION_appTransitionCancelled:I = 0x18

.field static final greylist-max-o TRANSACTION_appTransitionFinished:I = 0x1a

.field static final greylist-max-o TRANSACTION_appTransitionPending:I = 0x17

.field static final greylist-max-o TRANSACTION_appTransitionStarting:I = 0x19

.field static final greylist-max-o TRANSACTION_cancelPreloadRecentApps:I = 0x11

.field static final blacklist TRANSACTION_cancelRequestAddTile:I = 0x45

.field static final greylist-max-o TRANSACTION_clickQsTile:I = 0x27

.field static final blacklist TRANSACTION_confirmImmersivePrompt:I = 0x13

.field static final greylist-max-o TRANSACTION_disable:I = 0x3

.field static final blacklist TRANSACTION_dismissInattentiveSleepWarning:I = 0x39

.field static final greylist-max-o TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x15

.field static final blacklist TRANSACTION_dumpProto:I = 0x4a

.field static final greylist-max-o TRANSACTION_handleSystemKey:I = 0x28

.field static final blacklist TRANSACTION_hideAuthenticationDialog:I = 0x30

.field static final greylist-max-o TRANSACTION_hideRecentApps:I = 0xc

.field static final blacklist TRANSACTION_hideToast:I = 0x3b

.field static final blacklist TRANSACTION_immersiveModeChanged:I = 0x14

.field static final blacklist TRANSACTION_moveFocusedTaskToDesktop:I = 0x50

.field static final blacklist TRANSACTION_moveFocusedTaskToFullscreen:I = 0x4c

.field static final blacklist TRANSACTION_moveFocusedTaskToStageSplit:I = 0x4d

.field static final blacklist TRANSACTION_notifyRequestedGameToolsWin:I = 0x58

.field static final blacklist TRANSACTION_notifyRequestedSystemKey:I = 0x56

.field static final blacklist TRANSACTION_notifySamsungPayInfo:I = 0x54

.field static final blacklist TRANSACTION_onBiometricAuthenticated:I = 0x2d

.field static final blacklist TRANSACTION_onBiometricError:I = 0x2f

.field static final blacklist TRANSACTION_onBiometricHelp:I = 0x2e

.field static final greylist-max-o TRANSACTION_onCameraLaunchGestureDetected:I = 0x1d

.field static final blacklist TRANSACTION_onDisplayReady:I = 0x33

.field static final blacklist TRANSACTION_onEmergencyActionLaunchGestureDetected:I = 0x1e

.field static final blacklist TRANSACTION_onFlashlightKeyPressed:I = 0x5a

.field static final blacklist TRANSACTION_onFocusedDisplayChanged:I = 0x55

.field static final greylist-max-o TRANSACTION_onProposedRotationChanged:I = 0x21

.field static final blacklist TRANSACTION_onRecentsAnimationStateChanged:I = 0x34

.field static final blacklist TRANSACTION_onSystemBarAttributesChanged:I = 0x35

.field static final blacklist TRANSACTION_passThroughShellCommand:I = 0x40

.field static final greylist-max-o TRANSACTION_preloadRecentApps:I = 0x10

.field static final blacklist TRANSACTION_registerNearbyMediaDevicesProvider:I = 0x48

.field static final greylist-max-o TRANSACTION_remQsTile:I = 0x25

.field static final greylist-max-o TRANSACTION_removeIcon:I = 0x2

.field static final blacklist TRANSACTION_requestAddTile:I = 0x44

.field static final blacklist TRANSACTION_requestMagnificationConnection:I = 0x3f

.field static final blacklist TRANSACTION_requestTileServiceListeningState:I = 0x43

.field static final blacklist TRANSACTION_resetScheduleAutoHide:I = 0x53

.field static final blacklist TRANSACTION_runGcForTest:I = 0x42

.field static final blacklist TRANSACTION_sendKeyEventToDesktopTaskbar:I = 0x5b

.field static final blacklist TRANSACTION_sendThreeFingerGestureKeyEvent:I = 0x57

.field static final blacklist TRANSACTION_setBiometicContextListener:I = 0x31

.field static final blacklist TRANSACTION_setBlueLightFilter:I = 0x51

.field static final greylist-max-o TRANSACTION_setIcon:I = 0x1

.field static final greylist-max-o TRANSACTION_setImeWindowStatus:I = 0x9

.field static final blacklist TRANSACTION_setNavigationBarLumaSamplingEnabled:I = 0x41

.field static final blacklist TRANSACTION_setNavigationBarShortcut:I = 0x52

.field static final blacklist TRANSACTION_setQsTiles:I = 0x26

.field static final blacklist TRANSACTION_setSplitscreenFocus:I = 0x4e

.field static final greylist-max-o TRANSACTION_setTopAppHidesStatusBar:I = 0x22

.field static final blacklist TRANSACTION_setUdfpsRefreshRateCallback:I = 0x32

.field static final greylist-max-o TRANSACTION_setWindowState:I = 0xa

.field static final greylist-max-o TRANSACTION_showAssistDisclosure:I = 0x1b

.field static final blacklist TRANSACTION_showAuthenticationDialog:I = 0x2c

.field static final greylist-max-o TRANSACTION_showGlobalActionsMenu:I = 0x20

.field static final blacklist TRANSACTION_showInattentiveSleepWarning:I = 0x38

.field static final blacklist TRANSACTION_showMediaOutputSwitcher:I = 0x4f

.field static final greylist-max-o TRANSACTION_showPictureInPictureMenu:I = 0x1f

.field static final greylist-max-o TRANSACTION_showPinningEnterExitToast:I = 0x29

.field static final greylist-max-o TRANSACTION_showPinningEscapeToast:I = 0x2a

.field static final blacklist TRANSACTION_showRearDisplayDialog:I = 0x4b

.field static final greylist-max-o TRANSACTION_showRecentApps:I = 0xb

.field static final greylist-max-o TRANSACTION_showScreenPinningRequest:I = 0x12

.field static final greylist-max-o TRANSACTION_showShutdownUi:I = 0x2b

.field static final blacklist TRANSACTION_showToast:I = 0x3a

.field static final blacklist TRANSACTION_showTransient:I = 0x36

.field static final greylist-max-o TRANSACTION_showWirelessChargingAnimation:I = 0x8

.field static final greylist-max-o TRANSACTION_startAssist:I = 0x1c

.field static final blacklist TRANSACTION_startSearcleByHomeKey:I = 0x59

.field static final blacklist TRANSACTION_startTracing:I = 0x3c

.field static final blacklist TRANSACTION_stopTracing:I = 0x3d

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x3e

.field static final greylist-max-o TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x16

.field static final blacklist TRANSACTION_toggleNotificationsPanel:I = 0x7

.field static final greylist-max-o TRANSACTION_toggleRecentApps:I = 0xd

.field static final greylist-max-o TRANSACTION_toggleSplitScreen:I = 0xf

.field static final blacklist TRANSACTION_toggleTaskbar:I = 0xe

.field static final blacklist TRANSACTION_unregisterNearbyMediaDevicesProvider:I = 0x49

.field static final blacklist TRANSACTION_updateMediaTapToTransferReceiverDisplay:I = 0x47

.field static final blacklist TRANSACTION_updateMediaTapToTransferSenderDisplay:I = 0x46


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "sendKeyEventToDesktopTaskbar"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "onFlashlightKeyPressed"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "startSearcleByHomeKey"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "notifyRequestedGameToolsWin"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "sendThreeFingerGestureKeyEvent"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "notifyRequestedSystemKey"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "onFocusedDisplayChanged"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "notifySamsungPayInfo"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "resetScheduleAutoHide"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "setNavigationBarShortcut"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "setBlueLightFilter"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "moveFocusedTaskToDesktop"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "showMediaOutputSwitcher"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "setSplitscreenFocus"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "moveFocusedTaskToStageSplit"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "moveFocusedTaskToFullscreen"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "showRearDisplayDialog"

    return-object v0

    :pswitch_11
    const-string v0, "dumpProto"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "unregisterNearbyMediaDevicesProvider"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "registerNearbyMediaDevicesProvider"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "updateMediaTapToTransferReceiverDisplay"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "updateMediaTapToTransferSenderDisplay"

    return-object v0

    :pswitch_16
    const-string v0, "cancelRequestAddTile"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "requestAddTile"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "requestTileServiceListeningState"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "runGcForTest"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "setNavigationBarLumaSamplingEnabled"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "passThroughShellCommand"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "requestMagnificationConnection"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "suppressAmbientDisplay"

    return-object v0

    :pswitch_1e
    const-string/jumbo v0, "stopTracing"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "startTracing"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "hideToast"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "showToast"

    return-object v0

    :pswitch_22
    const-string v0, "dismissInattentiveSleepWarning"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "showInattentiveSleepWarning"

    return-object v0

    :pswitch_24
    const-string v0, "abortTransient"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "showTransient"

    return-object v0

    :pswitch_26
    const-string/jumbo v0, "onSystemBarAttributesChanged"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "onRecentsAnimationStateChanged"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "onDisplayReady"

    return-object v0

    :pswitch_29
    const-string/jumbo v0, "setUdfpsRefreshRateCallback"

    return-object v0

    :pswitch_2a
    const-string/jumbo v0, "setBiometicContextListener"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "hideAuthenticationDialog"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "onBiometricError"

    return-object v0

    :pswitch_2d
    const-string/jumbo v0, "onBiometricHelp"

    return-object v0

    :pswitch_2e
    const-string/jumbo v0, "onBiometricAuthenticated"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "showAuthenticationDialog"

    return-object v0

    :pswitch_30
    const-string/jumbo v0, "showShutdownUi"

    return-object v0

    :pswitch_31
    const-string/jumbo v0, "showPinningEscapeToast"

    return-object v0

    :pswitch_32
    const-string/jumbo v0, "showPinningEnterExitToast"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "handleSystemKey"

    return-object v0

    :pswitch_34
    const-string v0, "clickQsTile"

    return-object v0

    :pswitch_35
    const-string/jumbo v0, "setQsTiles"

    return-object v0

    :pswitch_36
    const-string/jumbo v0, "remQsTile"

    return-object v0

    :pswitch_37
    const-string v0, "addQsTileToFrontOrEnd"

    return-object v0

    :pswitch_38
    const-string v0, "addQsTile"

    return-object v0

    :pswitch_39
    const-string/jumbo v0, "setTopAppHidesStatusBar"

    return-object v0

    :pswitch_3a
    const-string/jumbo v0, "onProposedRotationChanged"

    return-object v0

    :pswitch_3b
    const-string/jumbo v0, "showGlobalActionsMenu"

    return-object v0

    :pswitch_3c
    const-string/jumbo v0, "showPictureInPictureMenu"

    return-object v0

    :pswitch_3d
    const-string/jumbo v0, "onEmergencyActionLaunchGestureDetected"

    return-object v0

    :pswitch_3e
    const-string/jumbo v0, "onCameraLaunchGestureDetected"

    return-object v0

    :pswitch_3f
    const-string/jumbo v0, "startAssist"

    return-object v0

    :pswitch_40
    const-string/jumbo v0, "showAssistDisclosure"

    return-object v0

    :pswitch_41
    const-string v0, "appTransitionFinished"

    return-object v0

    :pswitch_42
    const-string v0, "appTransitionStarting"

    return-object v0

    :pswitch_43
    const-string v0, "appTransitionCancelled"

    return-object v0

    :pswitch_44
    const-string v0, "appTransitionPending"

    return-object v0

    :pswitch_45
    const-string/jumbo v0, "toggleKeyboardShortcutsMenu"

    return-object v0

    :pswitch_46
    const-string v0, "dismissKeyboardShortcutsMenu"

    return-object v0

    :pswitch_47
    const-string/jumbo v0, "immersiveModeChanged"

    return-object v0

    :pswitch_48
    const-string v0, "confirmImmersivePrompt"

    return-object v0

    :pswitch_49
    const-string/jumbo v0, "showScreenPinningRequest"

    return-object v0

    :pswitch_4a
    const-string v0, "cancelPreloadRecentApps"

    return-object v0

    :pswitch_4b
    const-string/jumbo v0, "preloadRecentApps"

    return-object v0

    :pswitch_4c
    const-string/jumbo v0, "toggleSplitScreen"

    return-object v0

    :pswitch_4d
    const-string/jumbo v0, "toggleTaskbar"

    return-object v0

    :pswitch_4e
    const-string/jumbo v0, "toggleRecentApps"

    return-object v0

    :pswitch_4f
    const-string/jumbo v0, "hideRecentApps"

    return-object v0

    :pswitch_50
    const-string/jumbo v0, "showRecentApps"

    return-object v0

    :pswitch_51
    const-string/jumbo v0, "setWindowState"

    return-object v0

    :pswitch_52
    const-string/jumbo v0, "setImeWindowStatus"

    return-object v0

    :pswitch_53
    const-string/jumbo v0, "showWirelessChargingAnimation"

    return-object v0

    :pswitch_54
    const-string/jumbo v0, "toggleNotificationsPanel"

    return-object v0

    :pswitch_55
    const-string v0, "animateCollapsePanels"

    return-object v0

    :pswitch_56
    const-string v0, "animateExpandSettingsPanel"

    return-object v0

    :pswitch_57
    const-string v0, "animateExpandNotificationsPanel"

    return-object v0

    :pswitch_58
    const-string v0, "disable"

    return-object v0

    :pswitch_59
    const-string/jumbo v0, "removeIcon"

    return-object v0

    :pswitch_5a
    const-string/jumbo v0, "setIcon"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x5a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    const-string v15, "com.android.internal.statusbar.IStatusBar"

    const/4 v10, 0x1

    if-lt v13, v10, :cond_0

    const v0, 0xffffff

    if-gt v13, v0, :cond_0

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v0, 0x5f4e5446

    if-ne v13, v0, :cond_1

    move-object/from16 v11, p3

    invoke-virtual {v11, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_1
    move-object/from16 v11, p3

    packed-switch v13, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->sendKeyEventToDesktopTaskbar(Landroid/view/KeyEvent;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onFlashlightKeyPressed(I)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startSearcleByHomeKey(ZZ)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifyRequestedGameToolsWin(Z)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_4
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifyRequestedSystemKey(ZZ)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onFocusedDisplayChanged(I)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifySamsungPayInfo(IZLandroid/graphics/Rect;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->resetScheduleAutoHide()V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setBlueLightFilter(ZI)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToDesktop(I)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showMediaOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSplitscreenFocus(Z)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToStageSplit(IZ)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToFullscreen(I)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRearDisplayDialog(I)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dumpProto([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    sget-object v2, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelRequestAddTile(Ljava/lang/String;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/ComponentName;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/CharSequence;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/CharSequence;

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/drawable/Icon;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAddTileResultCallback;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestAddTile(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_18
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestTileServiceListeningState(Landroid/content/ComponentName;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->runGcForTest()V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavigationBarLumaSamplingEnabled(IZ)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestMagnificationConnection(Z)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->suppressAmbientDisplay(Z)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->stopTracing()V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startTracing()V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/CharSequence;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotificationCallback;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissInattentiveSleepWarning(Z)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showInattentiveSleepWarning()V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->abortTransient(II)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showTransient(IIZ)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    sget-object v0, Lcom/android/internal/view/AppearanceRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [Lcom/android/internal/view/AppearanceRegion;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    sget-object v0, Lcom/android/internal/statusbar/LetterboxDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, [Lcom/android/internal/statusbar/LetterboxDetails;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onRecentsAnimationStateChanged(Z)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onDisplayReady(I)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideAuthenticationDialog(J)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricError(III)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricHelp(ILjava/lang/String;)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricAuthenticated(I)V

    move/from16 v27, v10

    goto/16 :goto_0

    :pswitch_2f
    sget-object v0, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-wide/from16 v7, v22

    move-object/from16 v9, v24

    move/from16 v27, v10

    move-wide/from16 v10, v25

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_30
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showShutdownUi(ZLjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_31
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEscapeToast()V

    goto/16 :goto_0

    :pswitch_32
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEnterExitToast(Z)V

    goto/16 :goto_0

    :pswitch_33
    move/from16 v27, v10

    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemKey(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    :pswitch_34
    move/from16 v27, v10

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    :pswitch_35
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setQsTiles([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_36
    move/from16 v27, v10

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    :pswitch_37
    move/from16 v27, v10

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V

    goto/16 :goto_0

    :pswitch_38
    move/from16 v27, v10

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    :pswitch_39
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setTopAppHidesStatusBar(Z)V

    goto/16 :goto_0

    :pswitch_3a
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onProposedRotationChanged(IZ)V

    goto/16 :goto_0

    :pswitch_3b
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showGlobalActionsMenu(I)V

    goto/16 :goto_0

    :pswitch_3c
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPictureInPictureMenu()V

    goto/16 :goto_0

    :pswitch_3d
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onEmergencyActionLaunchGestureDetected()V

    goto/16 :goto_0

    :pswitch_3e
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    goto/16 :goto_0

    :pswitch_3f
    move/from16 v27, v10

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_40
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    goto/16 :goto_0

    :pswitch_41
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished(I)V

    goto/16 :goto_0

    :pswitch_42
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v7

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(IJJ)V

    goto/16 :goto_0

    :pswitch_43
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled(I)V

    goto/16 :goto_0

    :pswitch_44
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending(I)V

    goto/16 :goto_0

    :pswitch_45
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    goto/16 :goto_0

    :pswitch_46
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    goto/16 :goto_0

    :pswitch_47
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->immersiveModeChanged(IZ)V

    goto/16 :goto_0

    :pswitch_48
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->confirmImmersivePrompt()V

    goto/16 :goto_0

    :pswitch_49
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    goto/16 :goto_0

    :pswitch_4a
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    goto/16 :goto_0

    :pswitch_4b
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    goto/16 :goto_0

    :pswitch_4c
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    goto/16 :goto_0

    :pswitch_4d
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleTaskbar()V

    goto/16 :goto_0

    :pswitch_4e
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    goto/16 :goto_0

    :pswitch_4f
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    goto/16 :goto_0

    :pswitch_50
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    goto/16 :goto_0

    :pswitch_51
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(III)V

    goto/16 :goto_0

    :pswitch_52
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    goto :goto_0

    :pswitch_53
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showWirelessChargingAnimation(I)V

    goto :goto_0

    :pswitch_54
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleNotificationsPanel()V

    goto :goto_0

    :pswitch_55
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    goto :goto_0

    :pswitch_56
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_57
    move/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    goto :goto_0

    :pswitch_58
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(III)V

    goto :goto_0

    :pswitch_59
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5a
    move/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    nop

    :goto_0
    return v27

    :pswitch_data_0
    .packed-switch 0x1
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
