.class public abstract Lcom/android/internal/statusbar/IStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field static final greylist-max-o TRANSACTION_addTile:I = 0x29

.field static final blacklist TRANSACTION_cancelRequestAddTile:I = 0x3e

.field static final blacklist TRANSACTION_clearInlineReplyUriPermissions:I = 0x21

.field static final greylist-max-o TRANSACTION_clearNotificationEffects:I = 0x11

.field static final greylist-max-o TRANSACTION_clickTile:I = 0x2b

.field static final greylist-max-o TRANSACTION_collapsePanels:I = 0x2

.field static final blacklist TRANSACTION_collapsePanelsToType:I = 0x56

.field static final greylist-max-o TRANSACTION_disable:I = 0x4

.field static final greylist-max-o TRANSACTION_disable2:I = 0x6

.field static final greylist-max-o TRANSACTION_disable2ForUser:I = 0x7

.field static final blacklist TRANSACTION_disable2ForUserToType:I = 0x4f

.field static final blacklist TRANSACTION_disable2ToType:I = 0x4e

.field static final greylist-max-o TRANSACTION_disableForUser:I = 0x5

.field static final blacklist TRANSACTION_disableForUserToType:I = 0x4d

.field static final blacklist TRANSACTION_disableToType:I = 0x4c

.field static final blacklist TRANSACTION_dismissInattentiveSleepWarning:I = 0x37

.field static final greylist-max-o TRANSACTION_expandNotificationsPanel:I = 0x1

.field static final blacklist TRANSACTION_expandNotificationsPanelToType:I = 0x55

.field static final greylist-max-o TRANSACTION_expandSettingsPanel:I = 0xd

.field static final blacklist TRANSACTION_expandSettingsPanelToType:I = 0x57

.field static final blacklist TRANSACTION_getDisableFlags:I = 0x8

.field static final blacklist TRANSACTION_getDisableFlagsToType:I = 0x50

.field static final blacklist TRANSACTION_getNavBarMode:I = 0x40

.field static final blacklist TRANSACTION_getPanelExpandState:I = 0x4a

.field static final blacklist TRANSACTION_getPanelExpandStateToType:I = 0x53

.field static final blacklist TRANSACTION_getQuickSettingPanelExpandState:I = 0x4b

.field static final blacklist TRANSACTION_getQuickSettingPanelExpandStateToType:I = 0x54

.field static final blacklist TRANSACTION_grantInlineReplyUriPermission:I = 0x20

.field static final greylist-max-o TRANSACTION_handleSystemKey:I = 0x2c

.field static final blacklist TRANSACTION_hideAuthenticationDialog:I = 0x33

.field static final blacklist TRANSACTION_hideCurrentInputMethodForBubbles:I = 0x1f

.field static final blacklist TRANSACTION_isFOTAAvailableForGlobalActions:I = 0x27

.field static final blacklist TRANSACTION_isSysUiSafeModeEnabled:I = 0x5c

.field static final blacklist TRANSACTION_isTracing:I = 0x3a

.field static final blacklist TRANSACTION_onBiometricAuthenticated:I = 0x30

.field static final blacklist TRANSACTION_onBiometricError:I = 0x32

.field static final blacklist TRANSACTION_onBiometricHelp:I = 0x31

.field static final blacklist TRANSACTION_onBubbleMetadataFlagChanged:I = 0x1e

.field static final greylist-max-o TRANSACTION_onClearAllNotifications:I = 0x15

.field static final greylist-max-o TRANSACTION_onGlobalActionsHidden:I = 0x24

.field static final greylist-max-o TRANSACTION_onGlobalActionsShown:I = 0x23

.field static final greylist-max-o TRANSACTION_onNotificationActionClick:I = 0x13

.field static final blacklist TRANSACTION_onNotificationBubbleChanged:I = 0x1d

.field static final greylist-max-o TRANSACTION_onNotificationClear:I = 0x16

.field static final greylist-max-o TRANSACTION_onNotificationClick:I = 0x12

.field static final greylist-max-o TRANSACTION_onNotificationDirectReplied:I = 0x19

.field static final greylist-max-o TRANSACTION_onNotificationError:I = 0x14

.field static final greylist-max-o TRANSACTION_onNotificationExpansionChanged:I = 0x18

.field static final blacklist TRANSACTION_onNotificationFeedbackReceived:I = 0x22

.field static final greylist-max-o TRANSACTION_onNotificationSettingsViewed:I = 0x1c

.field static final greylist-max-o TRANSACTION_onNotificationSmartReplySent:I = 0x1b

.field static final blacklist TRANSACTION_onNotificationSmartSuggestionsAdded:I = 0x1a

.field static final greylist-max-o TRANSACTION_onNotificationVisibilityChanged:I = 0x17

.field static final greylist-max-o TRANSACTION_onPanelHidden:I = 0x10

.field static final greylist-max-o TRANSACTION_onPanelRevealed:I = 0xf

.field static final blacklist TRANSACTION_onSessionEnded:I = 0x44

.field static final blacklist TRANSACTION_onSessionStarted:I = 0x43

.field static final greylist-max-o TRANSACTION_reboot:I = 0x26

.field static final blacklist TRANSACTION_rebootByBixby:I = 0x5f

.field static final blacklist TRANSACTION_registerNearbyMediaDevicesProvider:I = 0x47

.field static final blacklist TRANSACTION_registerSessionListener:I = 0x41

.field static final greylist-max-o TRANSACTION_registerStatusBar:I = 0xe

.field static final blacklist TRANSACTION_registerStatusBarAsType:I = 0x51

.field static final blacklist TRANSACTION_registerStatusBarForCarLife:I = 0x60

.field static final greylist-max-o TRANSACTION_remTile:I = 0x2a

.field static final greylist-max-o TRANSACTION_removeIcon:I = 0xb

.field static final blacklist TRANSACTION_requestAddTile:I = 0x3d

.field static final blacklist TRANSACTION_requestTileServiceListeningState:I = 0x3c

.field static final blacklist TRANSACTION_resetScheduleAutoHide:I = 0x59

.field static final blacklist TRANSACTION_restart:I = 0x28

.field static final blacklist TRANSACTION_sendKeyEventToDesktopTaskbar:I = 0x5b

.field static final blacklist TRANSACTION_setBiometicContextListener:I = 0x34

.field static final blacklist TRANSACTION_setBlueLightFilter:I = 0x5d

.field static final greylist-max-o TRANSACTION_setIcon:I = 0x9

.field static final greylist-max-o TRANSACTION_setIconVisibility:I = 0xa

.field static final greylist-max-o TRANSACTION_setImeWindowStatus:I = 0xc

.field static final blacklist TRANSACTION_setIndicatorBgColor:I = 0x5a

.field static final blacklist TRANSACTION_setNavBarMode:I = 0x3f

.field static final blacklist TRANSACTION_setNavigationBarShortcut:I = 0x58

.field static final blacklist TRANSACTION_setPanelExpandState:I = 0x49

.field static final blacklist TRANSACTION_setPanelExpandStateToType:I = 0x52

.field static final blacklist TRANSACTION_setUdfpsHbmListener:I = 0x35

.field static final blacklist TRANSACTION_showAuthenticationDialog:I = 0x2f

.field static final blacklist TRANSACTION_showInattentiveSleepWarning:I = 0x36

.field static final greylist-max-o TRANSACTION_showPinningEnterExitToast:I = 0x2d

.field static final greylist-max-o TRANSACTION_showPinningEscapeToast:I = 0x2e

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x25

.field static final blacklist TRANSACTION_shutdownByBixby:I = 0x5e

.field static final blacklist TRANSACTION_startTracing:I = 0x38

.field static final blacklist TRANSACTION_stopTracing:I = 0x39

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x3b

.field static final greylist-max-o TRANSACTION_togglePanel:I = 0x3

.field static final blacklist TRANSACTION_unregisterNearbyMediaDevicesProvider:I = 0x48

.field static final blacklist TRANSACTION_unregisterSessionListener:I = 0x42

.field static final blacklist TRANSACTION_updateMediaTapToTransferReceiverDisplay:I = 0x46

.field static final blacklist TRANSACTION_updateMediaTapToTransferSenderDisplay:I = 0x45


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 395
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 396
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 404
    if-nez p0, :cond_0

    .line 405
    const/4 v0, 0x0

    return-object v0

    .line 407
    :cond_0
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 408
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_1

    .line 409
    move-object v1, v0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBarService;

    return-object v1

    .line 411
    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 420
    packed-switch p0, :pswitch_data_0

    .line 808
    const/4 v0, 0x0

    return-object v0

    .line 804
    :pswitch_0
    const-string/jumbo v0, "registerStatusBarForCarLife"

    return-object v0

    .line 800
    :pswitch_1
    const-string/jumbo v0, "rebootByBixby"

    return-object v0

    .line 796
    :pswitch_2
    const-string/jumbo v0, "shutdownByBixby"

    return-object v0

    .line 792
    :pswitch_3
    const-string/jumbo v0, "setBlueLightFilter"

    return-object v0

    .line 788
    :pswitch_4
    const-string/jumbo v0, "isSysUiSafeModeEnabled"

    return-object v0

    .line 784
    :pswitch_5
    const-string/jumbo v0, "sendKeyEventToDesktopTaskbar"

    return-object v0

    .line 780
    :pswitch_6
    const-string/jumbo v0, "setIndicatorBgColor"

    return-object v0

    .line 776
    :pswitch_7
    const-string/jumbo v0, "resetScheduleAutoHide"

    return-object v0

    .line 772
    :pswitch_8
    const-string/jumbo v0, "setNavigationBarShortcut"

    return-object v0

    .line 768
    :pswitch_9
    const-string v0, "expandSettingsPanelToType"

    return-object v0

    .line 764
    :pswitch_a
    const-string v0, "collapsePanelsToType"

    return-object v0

    .line 760
    :pswitch_b
    const-string v0, "expandNotificationsPanelToType"

    return-object v0

    .line 756
    :pswitch_c
    const-string/jumbo v0, "getQuickSettingPanelExpandStateToType"

    return-object v0

    .line 752
    :pswitch_d
    const-string/jumbo v0, "getPanelExpandStateToType"

    return-object v0

    .line 748
    :pswitch_e
    const-string/jumbo v0, "setPanelExpandStateToType"

    return-object v0

    .line 744
    :pswitch_f
    const-string/jumbo v0, "registerStatusBarAsType"

    return-object v0

    .line 740
    :pswitch_10
    const-string v0, "getDisableFlagsToType"

    return-object v0

    .line 736
    :pswitch_11
    const-string v0, "disable2ForUserToType"

    return-object v0

    .line 732
    :pswitch_12
    const-string v0, "disable2ToType"

    return-object v0

    .line 728
    :pswitch_13
    const-string v0, "disableForUserToType"

    return-object v0

    .line 724
    :pswitch_14
    const-string v0, "disableToType"

    return-object v0

    .line 720
    :pswitch_15
    const-string/jumbo v0, "getQuickSettingPanelExpandState"

    return-object v0

    .line 716
    :pswitch_16
    const-string/jumbo v0, "getPanelExpandState"

    return-object v0

    .line 712
    :pswitch_17
    const-string/jumbo v0, "setPanelExpandState"

    return-object v0

    .line 708
    :pswitch_18
    const-string/jumbo v0, "unregisterNearbyMediaDevicesProvider"

    return-object v0

    .line 704
    :pswitch_19
    const-string/jumbo v0, "registerNearbyMediaDevicesProvider"

    return-object v0

    .line 700
    :pswitch_1a
    const-string/jumbo v0, "updateMediaTapToTransferReceiverDisplay"

    return-object v0

    .line 696
    :pswitch_1b
    const-string/jumbo v0, "updateMediaTapToTransferSenderDisplay"

    return-object v0

    .line 692
    :pswitch_1c
    const-string/jumbo v0, "onSessionEnded"

    return-object v0

    .line 688
    :pswitch_1d
    const-string/jumbo v0, "onSessionStarted"

    return-object v0

    .line 684
    :pswitch_1e
    const-string/jumbo v0, "unregisterSessionListener"

    return-object v0

    .line 680
    :pswitch_1f
    const-string/jumbo v0, "registerSessionListener"

    return-object v0

    .line 676
    :pswitch_20
    const-string/jumbo v0, "getNavBarMode"

    return-object v0

    .line 672
    :pswitch_21
    const-string/jumbo v0, "setNavBarMode"

    return-object v0

    .line 668
    :pswitch_22
    const-string v0, "cancelRequestAddTile"

    return-object v0

    .line 664
    :pswitch_23
    const-string/jumbo v0, "requestAddTile"

    return-object v0

    .line 660
    :pswitch_24
    const-string/jumbo v0, "requestTileServiceListeningState"

    return-object v0

    .line 656
    :pswitch_25
    const-string/jumbo v0, "suppressAmbientDisplay"

    return-object v0

    .line 652
    :pswitch_26
    const-string/jumbo v0, "isTracing"

    return-object v0

    .line 648
    :pswitch_27
    const-string/jumbo v0, "stopTracing"

    return-object v0

    .line 644
    :pswitch_28
    const-string/jumbo v0, "startTracing"

    return-object v0

    .line 640
    :pswitch_29
    const-string v0, "dismissInattentiveSleepWarning"

    return-object v0

    .line 636
    :pswitch_2a
    const-string/jumbo v0, "showInattentiveSleepWarning"

    return-object v0

    .line 632
    :pswitch_2b
    const-string/jumbo v0, "setUdfpsHbmListener"

    return-object v0

    .line 628
    :pswitch_2c
    const-string/jumbo v0, "setBiometicContextListener"

    return-object v0

    .line 624
    :pswitch_2d
    const-string/jumbo v0, "hideAuthenticationDialog"

    return-object v0

    .line 620
    :pswitch_2e
    const-string/jumbo v0, "onBiometricError"

    return-object v0

    .line 616
    :pswitch_2f
    const-string/jumbo v0, "onBiometricHelp"

    return-object v0

    .line 612
    :pswitch_30
    const-string/jumbo v0, "onBiometricAuthenticated"

    return-object v0

    .line 608
    :pswitch_31
    const-string/jumbo v0, "showAuthenticationDialog"

    return-object v0

    .line 604
    :pswitch_32
    const-string/jumbo v0, "showPinningEscapeToast"

    return-object v0

    .line 600
    :pswitch_33
    const-string/jumbo v0, "showPinningEnterExitToast"

    return-object v0

    .line 596
    :pswitch_34
    const-string/jumbo v0, "handleSystemKey"

    return-object v0

    .line 592
    :pswitch_35
    const-string v0, "clickTile"

    return-object v0

    .line 588
    :pswitch_36
    const-string/jumbo v0, "remTile"

    return-object v0

    .line 584
    :pswitch_37
    const-string v0, "addTile"

    return-object v0

    .line 580
    :pswitch_38
    const-string/jumbo v0, "restart"

    return-object v0

    .line 576
    :pswitch_39
    const-string/jumbo v0, "isFOTAAvailableForGlobalActions"

    return-object v0

    .line 572
    :pswitch_3a
    const-string/jumbo v0, "reboot"

    return-object v0

    .line 568
    :pswitch_3b
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 564
    :pswitch_3c
    const-string/jumbo v0, "onGlobalActionsHidden"

    return-object v0

    .line 560
    :pswitch_3d
    const-string/jumbo v0, "onGlobalActionsShown"

    return-object v0

    .line 556
    :pswitch_3e
    const-string/jumbo v0, "onNotificationFeedbackReceived"

    return-object v0

    .line 552
    :pswitch_3f
    const-string v0, "clearInlineReplyUriPermissions"

    return-object v0

    .line 548
    :pswitch_40
    const-string/jumbo v0, "grantInlineReplyUriPermission"

    return-object v0

    .line 544
    :pswitch_41
    const-string/jumbo v0, "hideCurrentInputMethodForBubbles"

    return-object v0

    .line 540
    :pswitch_42
    const-string/jumbo v0, "onBubbleMetadataFlagChanged"

    return-object v0

    .line 536
    :pswitch_43
    const-string/jumbo v0, "onNotificationBubbleChanged"

    return-object v0

    .line 532
    :pswitch_44
    const-string/jumbo v0, "onNotificationSettingsViewed"

    return-object v0

    .line 528
    :pswitch_45
    const-string/jumbo v0, "onNotificationSmartReplySent"

    return-object v0

    .line 524
    :pswitch_46
    const-string/jumbo v0, "onNotificationSmartSuggestionsAdded"

    return-object v0

    .line 520
    :pswitch_47
    const-string/jumbo v0, "onNotificationDirectReplied"

    return-object v0

    .line 516
    :pswitch_48
    const-string/jumbo v0, "onNotificationExpansionChanged"

    return-object v0

    .line 512
    :pswitch_49
    const-string/jumbo v0, "onNotificationVisibilityChanged"

    return-object v0

    .line 508
    :pswitch_4a
    const-string/jumbo v0, "onNotificationClear"

    return-object v0

    .line 504
    :pswitch_4b
    const-string/jumbo v0, "onClearAllNotifications"

    return-object v0

    .line 500
    :pswitch_4c
    const-string/jumbo v0, "onNotificationError"

    return-object v0

    .line 496
    :pswitch_4d
    const-string/jumbo v0, "onNotificationActionClick"

    return-object v0

    .line 492
    :pswitch_4e
    const-string/jumbo v0, "onNotificationClick"

    return-object v0

    .line 488
    :pswitch_4f
    const-string v0, "clearNotificationEffects"

    return-object v0

    .line 484
    :pswitch_50
    const-string/jumbo v0, "onPanelHidden"

    return-object v0

    .line 480
    :pswitch_51
    const-string/jumbo v0, "onPanelRevealed"

    return-object v0

    .line 476
    :pswitch_52
    const-string/jumbo v0, "registerStatusBar"

    return-object v0

    .line 472
    :pswitch_53
    const-string v0, "expandSettingsPanel"

    return-object v0

    .line 468
    :pswitch_54
    const-string/jumbo v0, "setImeWindowStatus"

    return-object v0

    .line 464
    :pswitch_55
    const-string/jumbo v0, "removeIcon"

    return-object v0

    .line 460
    :pswitch_56
    const-string/jumbo v0, "setIconVisibility"

    return-object v0

    .line 456
    :pswitch_57
    const-string/jumbo v0, "setIcon"

    return-object v0

    .line 452
    :pswitch_58
    const-string v0, "getDisableFlags"

    return-object v0

    .line 448
    :pswitch_59
    const-string v0, "disable2ForUser"

    return-object v0

    .line 444
    :pswitch_5a
    const-string v0, "disable2"

    return-object v0

    .line 440
    :pswitch_5b
    const-string v0, "disableForUser"

    return-object v0

    .line 436
    :pswitch_5c
    const-string v0, "disable"

    return-object v0

    .line 432
    :pswitch_5d
    const-string/jumbo v0, "togglePanel"

    return-object v0

    .line 428
    :pswitch_5e
    const-string v0, "collapsePanels"

    return-object v0

    .line 424
    :pswitch_5f
    const-string v0, "expandNotificationsPanel"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 415
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 3618
    const/16 v0, 0x5f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 815
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 819
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v10, "com.android.internal.statusbar.IStatusBarService"

    .line 820
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v14, v11, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 821
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 831
    packed-switch v14, :pswitch_data_1

    .line 1853
    move-object v14, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 827
    :pswitch_0
    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 828
    return v11

    .line 1845
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/carlife/IStatusBarCarLife$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/carlife/IStatusBarCarLife;

    move-result-object v0

    .line 1846
    .local v0, "_arg0":Lcom/android/internal/carlife/IStatusBarCarLife;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1847
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBarForCarLife(Lcom/android/internal/carlife/IStatusBarCarLife;)V

    .line 1848
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1849
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1836
    .end local v0    # "_arg0":Lcom/android/internal/carlife/IStatusBarCarLife;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1837
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1838
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->rebootByBixby(Z)V

    .line 1839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1840
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1829
    .end local v0    # "_arg0":Z
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->shutdownByBixby()V

    .line 1830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1831
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1819
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1821
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1822
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1823
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setBlueLightFilter(ZI)V

    .line 1824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1825
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1811
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->isSysUiSafeModeEnabled()Z

    move-result v0

    .line 1812
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1813
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1814
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1803
    .end local v0    # "_result":Z
    :pswitch_6
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 1804
    .local v0, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1805
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->sendKeyEventToDesktopTaskbar(Landroid/view/KeyEvent;)V

    .line 1806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1807
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1794
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1795
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1796
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIndicatorBgColor(I)V

    .line 1797
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1787
    .end local v0    # "_arg0":I
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->resetScheduleAutoHide()V

    .line 1788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1789
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1773
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1775
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 1777
    .local v1, "_arg1":Landroid/widget/RemoteViews;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1779
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1780
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1781
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    .line 1782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1762
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/widget/RemoteViews;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1764
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1765
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1766
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanelToType(Ljava/lang/String;I)V

    .line 1767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1768
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1753
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1754
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1755
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanelsToType(I)V

    .line 1756
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1757
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1744
    .end local v0    # "_arg0":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1745
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1746
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanelToType(I)V

    .line 1747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1734
    .end local v0    # "_arg0":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1735
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1736
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getQuickSettingPanelExpandStateToType(I)Z

    move-result v1

    .line 1737
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1739
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1724
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1725
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1726
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getPanelExpandStateToType(I)Z

    move-result v1

    .line 1727
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1728
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1729
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1713
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1715
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1716
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1717
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setPanelExpandStateToType(ZI)V

    .line 1718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1719
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1701
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    .line 1703
    .local v0, "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1704
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1705
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBarAsType(Lcom/android/internal/statusbar/IStatusBar;I)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object v2

    .line 1706
    .local v2, "_result":Lcom/android/internal/statusbar/RegisterStatusBarResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1707
    invoke-virtual {v12, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1708
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1687
    .end local v0    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Lcom/android/internal/statusbar/RegisterStatusBarResult;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1689
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1691
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1692
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1693
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDisableFlagsToType(Landroid/os/IBinder;II)[I

    move-result-object v3

    .line 1694
    .local v3, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1695
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1696
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1670
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1672
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1674
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1676
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1678
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1679
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1680
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1681
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1682
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1655
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1657
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1659
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1661
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1662
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1663
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ToType(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 1664
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1665
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1638
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1640
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1642
    .restart local v7    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1644
    .restart local v8    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1646
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1647
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1648
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1650
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1623
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1625
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1627
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1629
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1630
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1631
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableToType(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 1632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1615
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getQuickSettingPanelExpandState()Z

    move-result v0

    .line 1616
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1617
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1618
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1608
    .end local v0    # "_result":Z
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getPanelExpandState()Z

    move-result v0

    .line 1609
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1610
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1611
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1600
    .end local v0    # "_result":Z
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1601
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1602
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setPanelExpandState(Z)V

    .line 1603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1604
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1591
    .end local v0    # "_arg0":Z
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v0

    .line 1592
    .local v0, "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1593
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1595
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1582
    .end local v0    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v0

    .line 1583
    .restart local v0    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1584
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1586
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1567
    .end local v0    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1569
    .local v0, "_arg0":I
    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 1571
    .local v1, "_arg1":Landroid/media/MediaRoute2Info;
    sget-object v2, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    .line 1573
    .local v2, "_arg2":Landroid/graphics/drawable/Icon;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1574
    .local v3, "_arg3":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1575
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    .line 1576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1577
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1554
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v2    # "_arg2":Landroid/graphics/drawable/Icon;
    .end local v3    # "_arg3":Ljava/lang/CharSequence;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1556
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 1558
    .restart local v1    # "_arg1":Landroid/media/MediaRoute2Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    move-result-object v2

    .line 1559
    .local v2, "_arg2":Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1560
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    .line 1561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1562
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1543
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v2    # "_arg2":Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1545
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/InstanceId;

    .line 1546
    .local v1, "_arg1":Lcom/android/internal/logging/InstanceId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1547
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onSessionEnded(ILcom/android/internal/logging/InstanceId;)V

    .line 1548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1532
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/logging/InstanceId;
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1534
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/InstanceId;

    .line 1535
    .restart local v1    # "_arg1":Lcom/android/internal/logging/InstanceId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1536
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onSessionStarted(ILcom/android/internal/logging/InstanceId;)V

    .line 1537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1521
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/logging/InstanceId;
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1523
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/ISessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/ISessionListener;

    move-result-object v1

    .line 1524
    .local v1, "_arg1":Lcom/android/internal/statusbar/ISessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1525
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->unregisterSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    .line 1526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1527
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1510
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/statusbar/ISessionListener;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1512
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/ISessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/ISessionListener;

    move-result-object v1

    .line 1513
    .restart local v1    # "_arg1":Lcom/android/internal/statusbar/ISessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1514
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    .line 1515
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1516
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1502
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/statusbar/ISessionListener;
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getNavBarMode()I

    move-result v0

    .line 1503
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1504
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1505
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1494
    .end local v0    # "_result":I
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1495
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1496
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setNavBarMode(I)V

    .line 1497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1498
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1485
    .end local v0    # "_arg0":I
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1486
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1487
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->cancelRequestAddTile(Ljava/lang/String;)V

    .line 1488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1468
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_24
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/ComponentName;

    .line 1470
    .local v6, "_arg0":Landroid/content/ComponentName;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    .line 1472
    .local v7, "_arg1":Ljava/lang/CharSequence;
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/graphics/drawable/Icon;

    .line 1474
    .local v8, "_arg2":Landroid/graphics/drawable/Icon;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1476
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAddTileResultCallback;

    move-result-object v16

    .line 1477
    .local v16, "_arg4":Lcom/android/internal/statusbar/IAddTileResultCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1478
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;ILcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 1479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1480
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1457
    .end local v6    # "_arg0":Landroid/content/ComponentName;
    .end local v7    # "_arg1":Ljava/lang/CharSequence;
    .end local v8    # "_arg2":Landroid/graphics/drawable/Icon;
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":Lcom/android/internal/statusbar/IAddTileResultCallback;
    :pswitch_25
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1459
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1460
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1461
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->requestTileServiceListeningState(Landroid/content/ComponentName;I)V

    .line 1462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1448
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1449
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1450
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->suppressAmbientDisplay(Z)V

    .line 1451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1440
    .end local v0    # "_arg0":Z
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->isTracing()Z

    move-result v0

    .line 1441
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1442
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1443
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1434
    .end local v0    # "_result":Z
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->stopTracing()V

    .line 1435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1436
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1428
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->startTracing()V

    .line 1429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1420
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1421
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1422
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->dismissInattentiveSleepWarning(Z)V

    .line 1423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1424
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1413
    .end local v0    # "_arg0":Z
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showInattentiveSleepWarning()V

    .line 1414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1415
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1405
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IUdfpsHbmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsHbmListener;

    move-result-object v0

    .line 1406
    .local v0, "_arg0":Landroid/hardware/fingerprint/IUdfpsHbmListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1407
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V

    .line 1408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1396
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/IUdfpsHbmListener;
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object v0

    .line 1397
    .local v0, "_arg0":Landroid/hardware/biometrics/IBiometricContextListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1398
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 1399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1400
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1387
    .end local v0    # "_arg0":Landroid/hardware/biometrics/IBiometricContextListener;
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1388
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1389
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideAuthenticationDialog(J)V

    .line 1390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1391
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1374
    .end local v0    # "_arg0":J
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1376
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1378
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1379
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1380
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricError(III)V

    .line 1381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1363
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1365
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1366
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1367
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricHelp(ILjava/lang/String;)V

    .line 1368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1354
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1355
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1356
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricAuthenticated(I)V

    .line 1357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    move-object/from16 v28, v10

    move-object v14, v12

    goto/16 :goto_0

    .line 1327
    .end local v0    # "_arg0":I
    :pswitch_32
    sget-object v0, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/hardware/biometrics/PromptInfo;

    .line 1329
    .local v16, "_arg0":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v17

    .line 1331
    .local v17, "_arg1":Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v18

    .line 1333
    .local v18, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 1335
    .local v19, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 1337
    .local v20, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1339
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 1341
    .local v22, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1343
    .local v24, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 1345
    .local v25, "_arg8":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1346
    .local v27, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1347
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-wide/from16 v7, v22

    move-object/from16 v9, v24

    move-object/from16 v28, v10

    move v14, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move-wide/from16 v10, v25

    move-object v14, v12

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V

    .line 1348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1349
    goto/16 :goto_0

    .line 1320
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
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_33
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showPinningEscapeToast()V

    .line 1321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    goto/16 :goto_0

    .line 1312
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_34
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1313
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1314
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showPinningEnterExitToast(Z)V

    .line 1315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1316
    goto/16 :goto_0

    .line 1303
    .end local v0    # "_arg0":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_35
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1304
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1305
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->handleSystemKey(I)V

    .line 1306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    goto/16 :goto_0

    .line 1294
    .end local v0    # "_arg0":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_36
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1295
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1296
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clickTile(Landroid/content/ComponentName;)V

    .line 1297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    goto/16 :goto_0

    .line 1285
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_37
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1286
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1287
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->remTile(Landroid/content/ComponentName;)V

    .line 1288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    goto/16 :goto_0

    .line 1276
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_38
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1277
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1278
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->addTile(Landroid/content/ComponentName;)V

    .line 1279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    goto/16 :goto_0

    .line 1269
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_39
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->restart()V

    .line 1270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    goto/16 :goto_0

    .line 1262
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3a
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->isFOTAAvailableForGlobalActions()Z

    move-result v0

    .line 1263
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1265
    goto/16 :goto_0

    .line 1254
    .end local v0    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3b
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1255
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1256
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->reboot(Z)V

    .line 1257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    goto/16 :goto_0

    .line 1247
    .end local v0    # "_arg0":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3c
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->shutdown()V

    .line 1248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    goto/16 :goto_0

    .line 1241
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3d
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onGlobalActionsHidden()V

    .line 1242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    goto/16 :goto_0

    .line 1235
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3e
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onGlobalActionsShown()V

    .line 1236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    goto/16 :goto_0

    .line 1225
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3f
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1227
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1228
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1229
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    goto/16 :goto_0

    .line 1217
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_40
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1218
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1219
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearInlineReplyUriPermissions(Ljava/lang/String;)V

    .line 1220
    goto/16 :goto_0

    .line 1202
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_41
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1204
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1206
    .local v1, "_arg1":Landroid/net/Uri;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1208
    .local v2, "_arg2":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1209
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1210
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    goto/16 :goto_0

    .line 1195
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_42
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideCurrentInputMethodForBubbles()V

    .line 1196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    goto/16 :goto_0

    .line 1185
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_43
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1187
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1188
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1189
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBubbleMetadataFlagChanged(Ljava/lang/String;I)V

    .line 1190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1191
    goto/16 :goto_0

    .line 1172
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_44
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1174
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1176
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1177
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V

    .line 1179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    goto/16 :goto_0

    .line 1163
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_45
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1164
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSettingsViewed(Ljava/lang/String;)V

    .line 1166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    goto/16 :goto_0

    .line 1146
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_46
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1148
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1150
    .local v7, "_arg1":I
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    .line 1152
    .local v8, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1154
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 1155
    .local v10, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1156
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V

    .line 1157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1158
    goto/16 :goto_0

    .line 1129
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/CharSequence;
    .end local v9    # "_arg3":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_47
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1131
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1133
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1135
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 1137
    .local v9, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 1138
    .local v10, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1139
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V

    .line 1140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    goto/16 :goto_0

    .line 1120
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_48
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1121
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1122
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationDirectReplied(Ljava/lang/String;)V

    .line 1123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    goto/16 :goto_0

    .line 1105
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_49
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1107
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1109
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1111
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1112
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1113
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V

    .line 1114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    goto/16 :goto_0

    .line 1094
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_4a
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 1096
    .local v0, "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    sget-object v1, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 1097
    .local v1, "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 1099
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    goto/16 :goto_0

    .line 1075
    .end local v0    # "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v1    # "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_4b
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1077
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1079
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1081
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1083
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1085
    .local v11, "_arg4":I
    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 1086
    .local v12, "_arg5":Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1087
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V

    .line 1088
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    goto/16 :goto_0

    .line 1066
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg4":I
    .end local v12    # "_arg5":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_4c
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1067
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1068
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onClearAllNotifications(I)V

    .line 1069
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    goto/16 :goto_0

    .line 1045
    .end local v0    # "_arg0":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_4d
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1047
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1049
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1051
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1053
    .local v11, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1055
    .local v12, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1057
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1058
    .local v17, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1059
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 1060
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    goto/16 :goto_0

    .line 1028
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg3":I
    .end local v12    # "_arg4":I
    .end local v16    # "_arg5":Ljava/lang/String;
    .end local v17    # "_arg6":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_4e
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1030
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1032
    .local v7, "_arg1":I
    sget-object v0, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/Notification$Action;

    .line 1034
    .local v8, "_arg2":Landroid/app/Notification$Action;
    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 1036
    .local v9, "_arg3":Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 1037
    .local v10, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1038
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V

    .line 1039
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    goto/16 :goto_0

    .line 1017
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Landroid/app/Notification$Action;
    .end local v9    # "_arg3":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_4f
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1019
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 1020
    .local v1, "_arg1":Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 1022
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    goto/16 :goto_0

    .line 1011
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_50
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearNotificationEffects()V

    .line 1012
    goto/16 :goto_0

    .line 1005
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_51
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelHidden()V

    .line 1006
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    goto/16 :goto_0

    .line 995
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_52
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 997
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 998
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelRevealed(ZI)V

    .line 1000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    goto/16 :goto_0

    .line 985
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_53
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    .line 986
    .local v0, "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 987
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object v1

    .line 988
    .local v1, "_result":Lcom/android/internal/statusbar/RegisterStatusBarResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    const/4 v2, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 990
    goto/16 :goto_0

    .line 976
    .end local v0    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v1    # "_result":Lcom/android/internal/statusbar/RegisterStatusBarResult;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_54
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 977
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanel(Ljava/lang/String;)V

    .line 979
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    goto/16 :goto_0

    .line 959
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_55
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 961
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 963
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 965
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 967
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 968
    .local v10, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 969
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    .line 970
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    goto/16 :goto_0

    .line 950
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_56
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 951
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {v13, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->removeIcon(Ljava/lang/String;)V

    .line 953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    goto/16 :goto_0

    .line 939
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_57
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 941
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 942
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIconVisibility(Ljava/lang/String;Z)V

    .line 944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    goto/16 :goto_0

    .line 922
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_58
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 924
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 926
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 928
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 930
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 931
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 932
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    goto/16 :goto_0

    .line 910
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_59
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 912
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 913
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDisableFlags(Landroid/os/IBinder;I)[I

    move-result-object v2

    .line 915
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 917
    goto/16 :goto_0

    .line 895
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_5a
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 897
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 899
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 901
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 902
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    goto/16 :goto_0

    .line 882
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_5b
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 884
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 886
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 887
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 888
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    goto :goto_0

    .line 867
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_5c
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 869
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 871
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 873
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 874
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    goto :goto_0

    .line 854
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_5d
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 856
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 858
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 859
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 861
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    goto :goto_0

    .line 847
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_5e
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->togglePanel()V

    .line 848
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    goto :goto_0

    .line 841
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_5f
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanels()V

    .line 842
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    goto :goto_0

    .line 835
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_60
    move-object/from16 v28, v10

    move-object v14, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanel()V

    .line 836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    nop

    .line 1856
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
