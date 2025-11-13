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

.field static final blacklist TRANSACTION_abortTransient:I = 0x32

.field static final greylist-max-o TRANSACTION_addQsTile:I = 0x20

.field static final greylist-max-o TRANSACTION_animateCollapsePanels:I = 0x6

.field static final greylist-max-o TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final greylist-max-o TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final greylist-max-o TRANSACTION_appTransitionCancelled:I = 0x15

.field static final greylist-max-o TRANSACTION_appTransitionFinished:I = 0x17

.field static final greylist-max-o TRANSACTION_appTransitionPending:I = 0x14

.field static final greylist-max-o TRANSACTION_appTransitionStarting:I = 0x16

.field static final greylist-max-o TRANSACTION_cancelPreloadRecentApps:I = 0x10

.field static final blacklist TRANSACTION_cancelRequestAddTile:I = 0x41

.field static final greylist-max-o TRANSACTION_clickQsTile:I = 0x22

.field static final greylist-max-o TRANSACTION_disable:I = 0x3

.field static final blacklist TRANSACTION_dismissInattentiveSleepWarning:I = 0x34

.field static final greylist-max-o TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x12

.field static final greylist-max-o TRANSACTION_handleSystemKey:I = 0x23

.field static final blacklist TRANSACTION_handleWindowManagerLoggingCommand:I = 0x39

.field static final blacklist TRANSACTION_hideAuthenticationDialog:I = 0x2b

.field static final greylist-max-o TRANSACTION_hideRecentApps:I = 0xc

.field static final blacklist TRANSACTION_hideToast:I = 0x36

.field static final blacklist TRANSACTION_notifyRequestedGameToolsWin:I = 0x46

.field static final blacklist TRANSACTION_notifyRequestedSystemKey:I = 0x49

.field static final blacklist TRANSACTION_notifySamsungPayInfo:I = 0x4e

.field static final blacklist TRANSACTION_onBiometricAuthenticated:I = 0x28

.field static final blacklist TRANSACTION_onBiometricError:I = 0x2a

.field static final blacklist TRANSACTION_onBiometricHelp:I = 0x29

.field static final greylist-max-o TRANSACTION_onCameraLaunchGestureDetected:I = 0x1a

.field static final blacklist TRANSACTION_onDisplayReady:I = 0x2e

.field static final blacklist TRANSACTION_onEmergencyActionLaunchGestureDetected:I = 0x1b

.field static final blacklist TRANSACTION_onFocusedDisplayChanged:I = 0x48

.field static final greylist-max-o TRANSACTION_onProposedRotationChanged:I = 0x1e

.field static final blacklist TRANSACTION_onRecentsAnimationStateChanged:I = 0x2f

.field static final blacklist TRANSACTION_onSystemBarAttributesChanged:I = 0x30

.field static final blacklist TRANSACTION_passThroughShellCommand:I = 0x3c

.field static final greylist-max-o TRANSACTION_preloadRecentApps:I = 0xf

.field static final blacklist TRANSACTION_registerNearbyMediaDevicesProvider:I = 0x44

.field static final greylist-max-o TRANSACTION_remQsTile:I = 0x21

.field static final greylist-max-o TRANSACTION_removeIcon:I = 0x2

.field static final blacklist TRANSACTION_requestAddTile:I = 0x40

.field static final blacklist TRANSACTION_requestTileServiceListeningState:I = 0x3f

.field static final blacklist TRANSACTION_requestWindowMagnificationConnection:I = 0x3b

.field static final blacklist TRANSACTION_resetScheduleAutoHide:I = 0x4d

.field static final blacklist TRANSACTION_runGcForTest:I = 0x3e

.field static final blacklist TRANSACTION_sendKeyEventToDesktopTaskbar:I = 0x47

.field static final blacklist TRANSACTION_sendThreeFingerGestureKeyEvent:I = 0x4a

.field static final blacklist TRANSACTION_setBiometicContextListener:I = 0x2c

.field static final blacklist TRANSACTION_setBlueLightFilter:I = 0x4b

.field static final greylist-max-o TRANSACTION_setIcon:I = 0x1

.field static final greylist-max-o TRANSACTION_setImeWindowStatus:I = 0x9

.field static final blacklist TRANSACTION_setIndicatorBgColor:I = 0x4f

.field static final blacklist TRANSACTION_setNavigationBarLumaSamplingEnabled:I = 0x3d

.field static final blacklist TRANSACTION_setNavigationBarShortcut:I = 0x4c

.field static final greylist-max-o TRANSACTION_setTopAppHidesStatusBar:I = 0x1f

.field static final blacklist TRANSACTION_setUdfpsHbmListener:I = 0x2d

.field static final greylist-max-o TRANSACTION_setWindowState:I = 0xa

.field static final greylist-max-o TRANSACTION_showAssistDisclosure:I = 0x18

.field static final blacklist TRANSACTION_showAuthenticationDialog:I = 0x27

.field static final greylist-max-o TRANSACTION_showGlobalActionsMenu:I = 0x1d

.field static final blacklist TRANSACTION_showInattentiveSleepWarning:I = 0x33

.field static final greylist-max-o TRANSACTION_showPictureInPictureMenu:I = 0x1c

.field static final greylist-max-o TRANSACTION_showPinningEnterExitToast:I = 0x24

.field static final greylist-max-o TRANSACTION_showPinningEscapeToast:I = 0x25

.field static final greylist-max-o TRANSACTION_showRecentApps:I = 0xb

.field static final greylist-max-o TRANSACTION_showScreenPinningRequest:I = 0x11

.field static final greylist-max-o TRANSACTION_showShutdownUi:I = 0x26

.field static final blacklist TRANSACTION_showToast:I = 0x35

.field static final blacklist TRANSACTION_showTransient:I = 0x31

.field static final greylist-max-o TRANSACTION_showWirelessChargingAnimation:I = 0x8

.field static final greylist-max-o TRANSACTION_startAssist:I = 0x19

.field static final blacklist TRANSACTION_startTracing:I = 0x37

.field static final blacklist TRANSACTION_stopTracing:I = 0x38

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x3a

.field static final greylist-max-o TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x13

.field static final greylist-max-o TRANSACTION_togglePanel:I = 0x7

.field static final greylist-max-o TRANSACTION_toggleRecentApps:I = 0xd

.field static final greylist-max-o TRANSACTION_toggleSplitScreen:I = 0xe

.field static final blacklist TRANSACTION_unregisterNearbyMediaDevicesProvider:I = 0x45

.field static final blacklist TRANSACTION_updateMediaTapToTransferReceiverDisplay:I = 0x43

.field static final blacklist TRANSACTION_updateMediaTapToTransferSenderDisplay:I = 0x42


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 408
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 409
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 417
    if-nez p0, :cond_0

    .line 418
    const/4 v0, 0x0

    return-object v0

    .line 420
    :cond_0
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 421
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    .line 422
    move-object v1, v0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    return-object v1

    .line 424
    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 433
    packed-switch p0, :pswitch_data_0

    .line 753
    const/4 v0, 0x0

    return-object v0

    .line 749
    :pswitch_0
    const-string/jumbo v0, "setIndicatorBgColor"

    return-object v0

    .line 745
    :pswitch_1
    const-string/jumbo v0, "notifySamsungPayInfo"

    return-object v0

    .line 741
    :pswitch_2
    const-string/jumbo v0, "resetScheduleAutoHide"

    return-object v0

    .line 737
    :pswitch_3
    const-string/jumbo v0, "setNavigationBarShortcut"

    return-object v0

    .line 733
    :pswitch_4
    const-string/jumbo v0, "setBlueLightFilter"

    return-object v0

    .line 729
    :pswitch_5
    const-string/jumbo v0, "sendThreeFingerGestureKeyEvent"

    return-object v0

    .line 725
    :pswitch_6
    const-string/jumbo v0, "notifyRequestedSystemKey"

    return-object v0

    .line 721
    :pswitch_7
    const-string/jumbo v0, "onFocusedDisplayChanged"

    return-object v0

    .line 717
    :pswitch_8
    const-string/jumbo v0, "sendKeyEventToDesktopTaskbar"

    return-object v0

    .line 713
    :pswitch_9
    const-string/jumbo v0, "notifyRequestedGameToolsWin"

    return-object v0

    .line 709
    :pswitch_a
    const-string/jumbo v0, "unregisterNearbyMediaDevicesProvider"

    return-object v0

    .line 705
    :pswitch_b
    const-string/jumbo v0, "registerNearbyMediaDevicesProvider"

    return-object v0

    .line 701
    :pswitch_c
    const-string/jumbo v0, "updateMediaTapToTransferReceiverDisplay"

    return-object v0

    .line 697
    :pswitch_d
    const-string/jumbo v0, "updateMediaTapToTransferSenderDisplay"

    return-object v0

    .line 693
    :pswitch_e
    const-string v0, "cancelRequestAddTile"

    return-object v0

    .line 689
    :pswitch_f
    const-string/jumbo v0, "requestAddTile"

    return-object v0

    .line 685
    :pswitch_10
    const-string/jumbo v0, "requestTileServiceListeningState"

    return-object v0

    .line 681
    :pswitch_11
    const-string/jumbo v0, "runGcForTest"

    return-object v0

    .line 677
    :pswitch_12
    const-string/jumbo v0, "setNavigationBarLumaSamplingEnabled"

    return-object v0

    .line 673
    :pswitch_13
    const-string/jumbo v0, "passThroughShellCommand"

    return-object v0

    .line 669
    :pswitch_14
    const-string/jumbo v0, "requestWindowMagnificationConnection"

    return-object v0

    .line 665
    :pswitch_15
    const-string/jumbo v0, "suppressAmbientDisplay"

    return-object v0

    .line 661
    :pswitch_16
    const-string/jumbo v0, "handleWindowManagerLoggingCommand"

    return-object v0

    .line 657
    :pswitch_17
    const-string/jumbo v0, "stopTracing"

    return-object v0

    .line 653
    :pswitch_18
    const-string/jumbo v0, "startTracing"

    return-object v0

    .line 649
    :pswitch_19
    const-string/jumbo v0, "hideToast"

    return-object v0

    .line 645
    :pswitch_1a
    const-string/jumbo v0, "showToast"

    return-object v0

    .line 641
    :pswitch_1b
    const-string v0, "dismissInattentiveSleepWarning"

    return-object v0

    .line 637
    :pswitch_1c
    const-string/jumbo v0, "showInattentiveSleepWarning"

    return-object v0

    .line 633
    :pswitch_1d
    const-string v0, "abortTransient"

    return-object v0

    .line 629
    :pswitch_1e
    const-string/jumbo v0, "showTransient"

    return-object v0

    .line 625
    :pswitch_1f
    const-string/jumbo v0, "onSystemBarAttributesChanged"

    return-object v0

    .line 621
    :pswitch_20
    const-string/jumbo v0, "onRecentsAnimationStateChanged"

    return-object v0

    .line 617
    :pswitch_21
    const-string/jumbo v0, "onDisplayReady"

    return-object v0

    .line 613
    :pswitch_22
    const-string/jumbo v0, "setUdfpsHbmListener"

    return-object v0

    .line 609
    :pswitch_23
    const-string/jumbo v0, "setBiometicContextListener"

    return-object v0

    .line 605
    :pswitch_24
    const-string/jumbo v0, "hideAuthenticationDialog"

    return-object v0

    .line 601
    :pswitch_25
    const-string/jumbo v0, "onBiometricError"

    return-object v0

    .line 597
    :pswitch_26
    const-string/jumbo v0, "onBiometricHelp"

    return-object v0

    .line 593
    :pswitch_27
    const-string/jumbo v0, "onBiometricAuthenticated"

    return-object v0

    .line 589
    :pswitch_28
    const-string/jumbo v0, "showAuthenticationDialog"

    return-object v0

    .line 585
    :pswitch_29
    const-string/jumbo v0, "showShutdownUi"

    return-object v0

    .line 581
    :pswitch_2a
    const-string/jumbo v0, "showPinningEscapeToast"

    return-object v0

    .line 577
    :pswitch_2b
    const-string/jumbo v0, "showPinningEnterExitToast"

    return-object v0

    .line 573
    :pswitch_2c
    const-string/jumbo v0, "handleSystemKey"

    return-object v0

    .line 569
    :pswitch_2d
    const-string v0, "clickQsTile"

    return-object v0

    .line 565
    :pswitch_2e
    const-string/jumbo v0, "remQsTile"

    return-object v0

    .line 561
    :pswitch_2f
    const-string v0, "addQsTile"

    return-object v0

    .line 557
    :pswitch_30
    const-string/jumbo v0, "setTopAppHidesStatusBar"

    return-object v0

    .line 553
    :pswitch_31
    const-string/jumbo v0, "onProposedRotationChanged"

    return-object v0

    .line 549
    :pswitch_32
    const-string/jumbo v0, "showGlobalActionsMenu"

    return-object v0

    .line 545
    :pswitch_33
    const-string/jumbo v0, "showPictureInPictureMenu"

    return-object v0

    .line 541
    :pswitch_34
    const-string/jumbo v0, "onEmergencyActionLaunchGestureDetected"

    return-object v0

    .line 537
    :pswitch_35
    const-string/jumbo v0, "onCameraLaunchGestureDetected"

    return-object v0

    .line 533
    :pswitch_36
    const-string/jumbo v0, "startAssist"

    return-object v0

    .line 529
    :pswitch_37
    const-string/jumbo v0, "showAssistDisclosure"

    return-object v0

    .line 525
    :pswitch_38
    const-string v0, "appTransitionFinished"

    return-object v0

    .line 521
    :pswitch_39
    const-string v0, "appTransitionStarting"

    return-object v0

    .line 517
    :pswitch_3a
    const-string v0, "appTransitionCancelled"

    return-object v0

    .line 513
    :pswitch_3b
    const-string v0, "appTransitionPending"

    return-object v0

    .line 509
    :pswitch_3c
    const-string/jumbo v0, "toggleKeyboardShortcutsMenu"

    return-object v0

    .line 505
    :pswitch_3d
    const-string v0, "dismissKeyboardShortcutsMenu"

    return-object v0

    .line 501
    :pswitch_3e
    const-string/jumbo v0, "showScreenPinningRequest"

    return-object v0

    .line 497
    :pswitch_3f
    const-string v0, "cancelPreloadRecentApps"

    return-object v0

    .line 493
    :pswitch_40
    const-string/jumbo v0, "preloadRecentApps"

    return-object v0

    .line 489
    :pswitch_41
    const-string/jumbo v0, "toggleSplitScreen"

    return-object v0

    .line 485
    :pswitch_42
    const-string/jumbo v0, "toggleRecentApps"

    return-object v0

    .line 481
    :pswitch_43
    const-string/jumbo v0, "hideRecentApps"

    return-object v0

    .line 477
    :pswitch_44
    const-string/jumbo v0, "showRecentApps"

    return-object v0

    .line 473
    :pswitch_45
    const-string/jumbo v0, "setWindowState"

    return-object v0

    .line 469
    :pswitch_46
    const-string/jumbo v0, "setImeWindowStatus"

    return-object v0

    .line 465
    :pswitch_47
    const-string/jumbo v0, "showWirelessChargingAnimation"

    return-object v0

    .line 461
    :pswitch_48
    const-string/jumbo v0, "togglePanel"

    return-object v0

    .line 457
    :pswitch_49
    const-string v0, "animateCollapsePanels"

    return-object v0

    .line 453
    :pswitch_4a
    const-string v0, "animateExpandSettingsPanel"

    return-object v0

    .line 449
    :pswitch_4b
    const-string v0, "animateExpandNotificationsPanel"

    return-object v0

    .line 445
    :pswitch_4c
    const-string v0, "disable"

    return-object v0

    .line 441
    :pswitch_4d
    const-string/jumbo v0, "removeIcon"

    return-object v0

    .line 437
    :pswitch_4e
    const-string/jumbo v0, "setIcon"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 428
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2756
    const/16 v0, 0x4e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 760
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 30
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 764
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    const-string v12, "com.android.internal.statusbar.IStatusBar"

    .line 765
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 766
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 776
    move-object/from16 v11, p3

    packed-switch v14, :pswitch_data_1

    .line 1485
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 772
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 773
    return v10

    .line 1478
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1479
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1480
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIndicatorBgColor(I)V

    .line 1481
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1466
    .end local v0    # "_arg0":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1468
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1470
    .local v1, "_arg1":Z
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1471
    .local v2, "_arg2":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1472
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifySamsungPayInfo(IZLandroid/graphics/Rect;)V

    .line 1473
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1460
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/graphics/Rect;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->resetScheduleAutoHide()V

    .line 1461
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1447
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1449
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 1451
    .local v1, "_arg1":Landroid/widget/RemoteViews;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1453
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1454
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1455
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    .line 1456
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1437
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/widget/RemoteViews;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1439
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1440
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1441
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setBlueLightFilter(ZI)V

    .line 1442
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1429
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_6
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 1430
    .local v0, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1431
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V

    .line 1432
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1419
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1421
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1422
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1423
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifyRequestedSystemKey(ZZ)V

    .line 1424
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1411
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1412
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1413
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onFocusedDisplayChanged(I)V

    .line 1414
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1403
    .end local v0    # "_arg0":I
    :pswitch_9
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 1404
    .local v0, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1405
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->sendKeyEventToDesktopTaskbar(Landroid/view/KeyEvent;)V

    .line 1406
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1395
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1396
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1397
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifyRequestedGameToolsWin(Z)V

    .line 1398
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1387
    .end local v0    # "_arg0":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v0

    .line 1388
    .local v0, "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1389
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1390
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1379
    .end local v0    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v0

    .line 1380
    .restart local v0    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1381
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1382
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1365
    .end local v0    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1367
    .local v0, "_arg0":I
    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 1369
    .local v1, "_arg1":Landroid/media/MediaRoute2Info;
    sget-object v2, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    .line 1371
    .local v2, "_arg2":Landroid/graphics/drawable/Icon;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1372
    .local v3, "_arg3":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1373
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    .line 1374
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1353
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v2    # "_arg2":Landroid/graphics/drawable/Icon;
    .end local v3    # "_arg3":Ljava/lang/CharSequence;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1355
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 1357
    .restart local v1    # "_arg1":Landroid/media/MediaRoute2Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    move-result-object v2

    .line 1358
    .local v2, "_arg2":Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1359
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    .line 1360
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1345
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v2    # "_arg2":Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1346
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1347
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelRequestAddTile(Ljava/lang/String;)V

    .line 1348
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1329
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_10
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/ComponentName;

    .line 1331
    .local v6, "_arg0":Landroid/content/ComponentName;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    .line 1333
    .local v7, "_arg1":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    .line 1335
    .local v8, "_arg2":Ljava/lang/CharSequence;
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/graphics/drawable/Icon;

    .line 1337
    .local v9, "_arg3":Landroid/graphics/drawable/Icon;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAddTileResultCallback;

    move-result-object v16

    .line 1338
    .local v16, "_arg4":Lcom/android/internal/statusbar/IAddTileResultCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1339
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 1340
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1321
    .end local v6    # "_arg0":Landroid/content/ComponentName;
    .end local v7    # "_arg1":Ljava/lang/CharSequence;
    .end local v8    # "_arg2":Ljava/lang/CharSequence;
    .end local v9    # "_arg3":Landroid/graphics/drawable/Icon;
    .end local v16    # "_arg4":Lcom/android/internal/statusbar/IAddTileResultCallback;
    :pswitch_11
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1322
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1323
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestTileServiceListeningState(Landroid/content/ComponentName;)V

    .line 1324
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1315
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->runGcForTest()V

    .line 1316
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1306
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1308
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1309
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1310
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavigationBarLumaSamplingEnabled(IZ)V

    .line 1311
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1296
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1298
    .local v0, "_arg0":[Ljava/lang/String;
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1299
    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1300
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 1301
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1288
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1289
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1290
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestWindowMagnificationConnection(Z)V

    .line 1291
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1280
    .end local v0    # "_arg0":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1281
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1282
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->suppressAmbientDisplay(Z)V

    .line 1283
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1270
    .end local v0    # "_arg0":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1272
    .local v0, "_arg0":[Ljava/lang/String;
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1273
    .restart local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1274
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleWindowManagerLoggingCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 1275
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1264
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->stopTracing()V

    .line 1265
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1259
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startTracing()V

    .line 1260
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1250
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1252
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1253
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1254
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1255
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1228
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1230
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1232
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 1234
    .local v17, "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/CharSequence;

    .line 1236
    .local v18, "_arg3":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 1238
    .local v19, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1240
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotificationCallback;

    move-result-object v21

    .line 1242
    .local v21, "_arg6":Landroid/app/ITransientNotificationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1243
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1244
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

    .line 1245
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1220
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Landroid/os/IBinder;
    .end local v18    # "_arg3":Ljava/lang/CharSequence;
    .end local v19    # "_arg4":Landroid/os/IBinder;
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/app/ITransientNotificationCallback;
    .end local v22    # "_arg7":I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1221
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1222
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissInattentiveSleepWarning(Z)V

    .line 1223
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1214
    .end local v0    # "_arg0":Z
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showInattentiveSleepWarning()V

    .line 1215
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1205
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1207
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1208
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1209
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->abortTransient(I[I)V

    .line 1210
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1193
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1195
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1197
    .restart local v1    # "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1198
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showTransient(I[IZ)V

    .line 1200
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1173
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":Z
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1175
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1177
    .local v9, "_arg1":I
    sget-object v0, Lcom/android/internal/view/AppearanceRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [Lcom/android/internal/view/AppearanceRegion;

    .line 1179
    .local v16, "_arg2":[Lcom/android/internal/view/AppearanceRegion;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 1181
    .local v17, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1183
    .local v18, "_arg4":I
    sget-object v0, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/InsetsVisibilities;

    .line 1185
    .local v19, "_arg5":Landroid/view/InsetsVisibilities;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1186
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1187
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V

    .line 1188
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1165
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v16    # "_arg2":[Lcom/android/internal/view/AppearanceRegion;
    .end local v17    # "_arg3":Z
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":Landroid/view/InsetsVisibilities;
    .end local v20    # "_arg6":Ljava/lang/String;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1166
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1167
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onRecentsAnimationStateChanged(Z)V

    .line 1168
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1157
    .end local v0    # "_arg0":Z
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1158
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onDisplayReady(I)V

    .line 1160
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1149
    .end local v0    # "_arg0":I
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IUdfpsHbmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsHbmListener;

    move-result-object v0

    .line 1150
    .local v0, "_arg0":Landroid/hardware/fingerprint/IUdfpsHbmListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1151
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V

    .line 1152
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1141
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/IUdfpsHbmListener;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object v0

    .line 1142
    .local v0, "_arg0":Landroid/hardware/biometrics/IBiometricContextListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1143
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 1144
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1133
    .end local v0    # "_arg0":Landroid/hardware/biometrics/IBiometricContextListener;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1134
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1135
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideAuthenticationDialog(J)V

    .line 1136
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1121
    .end local v0    # "_arg0":J
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1123
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1125
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1126
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1127
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricError(III)V

    .line 1128
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1111
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1113
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1114
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1115
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricHelp(ILjava/lang/String;)V

    .line 1116
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1103
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1104
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1105
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricAuthenticated(I)V

    .line 1106
    move/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 1077
    .end local v0    # "_arg0":I
    :pswitch_29
    sget-object v0, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/hardware/biometrics/PromptInfo;

    .line 1079
    .local v16, "_arg0":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v17

    .line 1081
    .local v17, "_arg1":Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v18

    .line 1083
    .local v18, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 1085
    .local v19, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 1087
    .local v20, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1089
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 1091
    .local v22, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1093
    .local v24, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 1095
    .local v25, "_arg8":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1096
    .local v27, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-wide/from16 v7, v22

    move-object/from16 v9, v24

    move/from16 v28, v10

    move-wide/from16 v10, v25

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v29, "descriptor":Ljava/lang/String;
    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V

    .line 1098
    goto/16 :goto_0

    .line 1067
    .end local v16    # "_arg0":Landroid/hardware/biometrics/PromptInfo;
    .end local v17    # "_arg1":Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .end local v18    # "_arg2":[I
    .end local v19    # "_arg3":Z
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":Ljava/lang/String;
    .end local v25    # "_arg8":J
    .end local v27    # "_arg9":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1069
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1070
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showShutdownUi(ZLjava/lang/String;)V

    .line 1072
    goto/16 :goto_0

    .line 1061
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2b
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEscapeToast()V

    .line 1062
    goto/16 :goto_0

    .line 1054
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2c
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1055
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1056
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEnterExitToast(Z)V

    .line 1057
    goto/16 :goto_0

    .line 1046
    .end local v0    # "_arg0":Z
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2d
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1047
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1048
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemKey(I)V

    .line 1049
    goto/16 :goto_0

    .line 1038
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2e
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1039
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1040
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    .line 1041
    goto/16 :goto_0

    .line 1030
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_2f
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1031
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1032
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    .line 1033
    goto/16 :goto_0

    .line 1022
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_30
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1023
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1024
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    .line 1025
    goto/16 :goto_0

    .line 1014
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_31
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1015
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1016
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setTopAppHidesStatusBar(Z)V

    .line 1017
    goto/16 :goto_0

    .line 1004
    .end local v0    # "_arg0":Z
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_32
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1006
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1007
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1008
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onProposedRotationChanged(IZ)V

    .line 1009
    goto/16 :goto_0

    .line 996
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_33
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 997
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 998
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showGlobalActionsMenu(I)V

    .line 999
    goto/16 :goto_0

    .line 990
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_34
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPictureInPictureMenu()V

    .line 991
    goto/16 :goto_0

    .line 985
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_35
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onEmergencyActionLaunchGestureDetected()V

    .line 986
    goto/16 :goto_0

    .line 978
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_36
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 979
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 980
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    .line 981
    goto/16 :goto_0

    .line 970
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_37
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 971
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 972
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 973
    goto/16 :goto_0

    .line 964
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_38
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    .line 965
    goto/16 :goto_0

    .line 957
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_39
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 958
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 959
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished(I)V

    .line 960
    goto/16 :goto_0

    .line 945
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3a
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 947
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 949
    .local v7, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 950
    .local v9, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 951
    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v7

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(IJJ)V

    .line 952
    goto/16 :goto_0

    .line 937
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":J
    .end local v9    # "_arg2":J
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3b
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 938
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 939
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled(I)V

    .line 940
    goto/16 :goto_0

    .line 929
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3c
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 930
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending(I)V

    .line 932
    goto/16 :goto_0

    .line 921
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3d
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 922
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 923
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    .line 924
    goto/16 :goto_0

    .line 915
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3e
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    .line 916
    goto/16 :goto_0

    .line 908
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3f
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 909
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 910
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    .line 911
    goto/16 :goto_0

    .line 902
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_40
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    .line 903
    goto/16 :goto_0

    .line 897
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_41
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    .line 898
    goto/16 :goto_0

    .line 892
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_42
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    .line 893
    goto/16 :goto_0

    .line 887
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_43
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    .line 888
    goto/16 :goto_0

    .line 878
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_44
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 880
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 881
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    .line 883
    goto/16 :goto_0

    .line 870
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_45
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 871
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    .line 873
    goto/16 :goto_0

    .line 858
    .end local v0    # "_arg0":Z
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_46
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 860
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 862
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 863
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 864
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(III)V

    .line 865
    goto/16 :goto_0

    .line 842
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_47
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 844
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 846
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 848
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 850
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 851
    .local v10, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    .line 853
    goto/16 :goto_0

    .line 834
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Z
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_48
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 835
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showWirelessChargingAnimation(I)V

    .line 837
    goto/16 :goto_0

    .line 828
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_49
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->togglePanel()V

    .line 829
    goto :goto_0

    .line 823
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4a
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    .line 824
    goto :goto_0

    .line 816
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4b
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 819
    goto :goto_0

    .line 810
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4c
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    .line 811
    goto :goto_0

    .line 799
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4d
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 801
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 803
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 804
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 805
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(III)V

    .line 806
    goto :goto_0

    .line 791
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4e
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    .line 794
    goto :goto_0

    .line 781
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4f
    move/from16 v28, v10

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 783
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 784
    .local v1, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 785
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 786
    nop

    .line 1488
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :goto_0
    return v28

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
