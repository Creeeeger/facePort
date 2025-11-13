.class public abstract Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;
.super Landroid/os/Binder;
.source "IMultiTaskingBinder.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IMultiTaskingBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_changeSplitLayoutByNaturalSwitching:I = 0x1b

.field static final blacklist TRANSACTION_changeToHorizontalSplitLayout:I = 0x4d

.field static final blacklist TRANSACTION_disableDividerPanelFirstAutoOpen:I = 0x34

.field static final blacklist TRANSACTION_disableNonResizeableAppRestartDialog:I = 0x4a

.field static final blacklist TRANSACTION_dismissSplitTask:I = 0x1f

.field static final blacklist TRANSACTION_dismissTaskInSplitScreen:I = 0x29

.field static final blacklist TRANSACTION_enterSplitScreenTopActivity:I = 0x2c

.field static final blacklist TRANSACTION_exitMultiWindow:I = 0x20

.field static final blacklist TRANSACTION_finishNaturalSwitching:I = 0x1a

.field static final blacklist TRANSACTION_getAllowedMultiWindowPackageList:I = 0xd

.field static final blacklist TRANSACTION_getCornerGestureCustomValue:I = 0x3f

.field static final blacklist TRANSACTION_getDexTaskInfoFlags:I = 0x27

.field static final blacklist TRANSACTION_getEmbedActivityPackageEnabled:I = 0x47

.field static final blacklist TRANSACTION_getFreeformAlpha:I = 0xb

.field static final blacklist TRANSACTION_getFreeformContainerDefaultPoint:I = 0x8

.field static final blacklist TRANSACTION_getMWDisableRequesters:I = 0x14

.field static final blacklist TRANSACTION_getMinimizedFreeformTasksForCurrentUser:I = 0x9

.field static final blacklist TRANSACTION_getMultiSplitFlags:I = 0x28

.field static final blacklist TRANSACTION_getMultiWindowBlockListApp:I = 0x10

.field static final blacklist TRANSACTION_getMultiWindowModeStates:I = 0x21

.field static final blacklist TRANSACTION_getResizeMode:I = 0x12

.field static final blacklist TRANSACTION_getSplitActivityAllowPackages:I = 0x44

.field static final blacklist TRANSACTION_getSplitActivityPackageEnabled:I = 0x45

.field static final blacklist TRANSACTION_getSupportEmbedActivityPackages:I = 0x49

.field static final blacklist TRANSACTION_getSurfaceFreezerSnapshot:I = 0x18

.field static final blacklist TRANSACTION_getTaskInfoFromPackageName:I = 0x41

.field static final blacklist TRANSACTION_getVisibleTasks:I = 0x13

.field static final blacklist TRANSACTION_hasMinimizedToggleTasks:I = 0xc

.field static final blacklist TRANSACTION_hideInputMethod:I = 0x16

.field static final blacklist TRANSACTION_injectBackEventForDex:I = 0x50

.field static final blacklist TRANSACTION_isAllTasksResizable:I = 0x51

.field static final blacklist TRANSACTION_isAllowedMultiWindowPackage:I = 0xe

.field static final blacklist TRANSACTION_isDisabledNonResizeableAppRestartDialog:I = 0x4b

.field static final blacklist TRANSACTION_isFlexPanelRunning:I = 0x1e

.field static final blacklist TRANSACTION_isMultiWindowBlockListApp:I = 0xf

.field static final blacklist TRANSACTION_isSplitImmersiveModeEnabled:I = 0x39

.field static final blacklist TRANSACTION_isValidCornerGesture:I = 0x3e

.field static final blacklist TRANSACTION_minimizeAllTasks:I = 0x3

.field static final blacklist TRANSACTION_minimizeTaskById:I = 0x2

.field static final blacklist TRANSACTION_minimizeTaskByToken:I = 0x1

.field static final blacklist TRANSACTION_moveFreeformTaskToSplit:I = 0x2b

.field static final blacklist TRANSACTION_moveSplitTaskToFreeform:I = 0x2a

.field static final blacklist TRANSACTION_noMoreShowMultiWindowHandlerHelp:I = 0x25

.field static final blacklist TRANSACTION_notifyDragSplitAppIconHasDrawable:I = 0x17

.field static final blacklist TRANSACTION_notifyFreeformMinimizeAnimationEnd:I = 0x6

.field static final blacklist TRANSACTION_registerDexSnappingCallback:I = 0x3b

.field static final blacklist TRANSACTION_registerFreeformCallback:I = 0x4

.field static final blacklist TRANSACTION_registerNaturalSwitchingListener:I = 0x1c

.field static final blacklist TRANSACTION_registerRemoteAppTransitionListener:I = 0x31

.field static final blacklist TRANSACTION_registerSplitAdjacentCallback:I = 0x2f

.field static final blacklist TRANSACTION_removeFocusedTask:I = 0x42

.field static final blacklist TRANSACTION_reportDexHelpShown:I = 0x4c

.field static final blacklist TRANSACTION_reportFreeformContainerPoint:I = 0x7

.field static final blacklist TRANSACTION_reportMultiWindowHandlerHelpShown:I = 0x26

.field static final blacklist TRANSACTION_setBlockedMinimizeFreeformEnable:I = 0x35

.field static final blacklist TRANSACTION_setCornerGestureCustomValue:I = 0x40

.field static final blacklist TRANSACTION_setCornerGestureEnabledWithSettings:I = 0x3d

.field static final blacklist TRANSACTION_setCustomDensityEnabled:I = 0x36

.field static final blacklist TRANSACTION_setEmbedActivityPackageEnabled:I = 0x48

.field static final blacklist TRANSACTION_setFreeformAlpha:I = 0xa

.field static final blacklist TRANSACTION_setFreeformHeaderType:I = 0x33

.field static final blacklist TRANSACTION_setMaxVisibleFreeformCountForDex:I = 0x15

.field static final blacklist TRANSACTION_setMultiWindowEnabledForUser:I = 0x22

.field static final blacklist TRANSACTION_setNaviStarSplitImmersiveMode:I = 0x3a

.field static final blacklist TRANSACTION_setSplitActivityPackageEnabled:I = 0x46

.field static final blacklist TRANSACTION_setSplitImmersiveMode:I = 0x38

.field static final blacklist TRANSACTION_setStayFocusActivityEnabled:I = 0x43

.field static final blacklist TRANSACTION_showOverlayAllApps:I = 0x2d

.field static final blacklist TRANSACTION_startFreeformTaskPinning:I = 0x23

.field static final blacklist TRANSACTION_startNaturalSwitching:I = 0x19

.field static final blacklist TRANSACTION_startResizingFreeformTask:I = 0x2e

.field static final blacklist TRANSACTION_stopFreeformTaskPinning:I = 0x24

.field static final blacklist TRANSACTION_supportMultiSplitAppMinimumSize:I = 0x4e

.field static final blacklist TRANSACTION_supportsMultiWindow:I = 0x11

.field static final blacklist TRANSACTION_toggleFreeformWindowingMode:I = 0x37

.field static final blacklist TRANSACTION_unregisterDexSnappingCallback:I = 0x3c

.field static final blacklist TRANSACTION_unregisterFreeformCallback:I = 0x5

.field static final blacklist TRANSACTION_unregisterNaturalSwitchingListener:I = 0x1d

.field static final blacklist TRANSACTION_unregisterRemoteAppTransitionListener:I = 0x32

.field static final blacklist TRANSACTION_unregisterSplitAdjacentCallback:I = 0x30

.field static final blacklist TRANSACTION_updateMultiSplitAppMinimumSize:I = 0x4f


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 387
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 388
    const-string v0, "com.samsung.android.multiwindow.IMultiTaskingBinder"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 396
    if-nez p0, :cond_0

    .line 397
    const/4 v0, 0x0

    return-object v0

    .line 399
    :cond_0
    const-string v0, "com.samsung.android.multiwindow.IMultiTaskingBinder"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 400
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    if-eqz v1, :cond_1

    .line 401
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    return-object v1

    .line 403
    :cond_1
    new-instance v1, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 412
    packed-switch p0, :pswitch_data_0

    .line 740
    const/4 v0, 0x0

    return-object v0

    .line 736
    :pswitch_0
    const-string v0, "isAllTasksResizable"

    return-object v0

    .line 732
    :pswitch_1
    const-string v0, "injectBackEventForDex"

    return-object v0

    .line 728
    :pswitch_2
    const-string/jumbo v0, "updateMultiSplitAppMinimumSize"

    return-object v0

    .line 724
    :pswitch_3
    const-string/jumbo v0, "supportMultiSplitAppMinimumSize"

    return-object v0

    .line 720
    :pswitch_4
    const-string v0, "changeToHorizontalSplitLayout"

    return-object v0

    .line 716
    :pswitch_5
    const-string/jumbo v0, "reportDexHelpShown"

    return-object v0

    .line 712
    :pswitch_6
    const-string v0, "isDisabledNonResizeableAppRestartDialog"

    return-object v0

    .line 708
    :pswitch_7
    const-string v0, "disableNonResizeableAppRestartDialog"

    return-object v0

    .line 704
    :pswitch_8
    const-string v0, "getSupportEmbedActivityPackages"

    return-object v0

    .line 700
    :pswitch_9
    const-string/jumbo v0, "setEmbedActivityPackageEnabled"

    return-object v0

    .line 696
    :pswitch_a
    const-string v0, "getEmbedActivityPackageEnabled"

    return-object v0

    .line 692
    :pswitch_b
    const-string/jumbo v0, "setSplitActivityPackageEnabled"

    return-object v0

    .line 688
    :pswitch_c
    const-string v0, "getSplitActivityPackageEnabled"

    return-object v0

    .line 684
    :pswitch_d
    const-string v0, "getSplitActivityAllowPackages"

    return-object v0

    .line 680
    :pswitch_e
    const-string/jumbo v0, "setStayFocusActivityEnabled"

    return-object v0

    .line 676
    :pswitch_f
    const-string/jumbo v0, "removeFocusedTask"

    return-object v0

    .line 672
    :pswitch_10
    const-string v0, "getTaskInfoFromPackageName"

    return-object v0

    .line 668
    :pswitch_11
    const-string/jumbo v0, "setCornerGestureCustomValue"

    return-object v0

    .line 664
    :pswitch_12
    const-string v0, "getCornerGestureCustomValue"

    return-object v0

    .line 660
    :pswitch_13
    const-string v0, "isValidCornerGesture"

    return-object v0

    .line 656
    :pswitch_14
    const-string/jumbo v0, "setCornerGestureEnabledWithSettings"

    return-object v0

    .line 652
    :pswitch_15
    const-string/jumbo v0, "unregisterDexSnappingCallback"

    return-object v0

    .line 648
    :pswitch_16
    const-string/jumbo v0, "registerDexSnappingCallback"

    return-object v0

    .line 644
    :pswitch_17
    const-string/jumbo v0, "setNaviStarSplitImmersiveMode"

    return-object v0

    .line 640
    :pswitch_18
    const-string v0, "isSplitImmersiveModeEnabled"

    return-object v0

    .line 636
    :pswitch_19
    const-string/jumbo v0, "setSplitImmersiveMode"

    return-object v0

    .line 632
    :pswitch_1a
    const-string/jumbo v0, "toggleFreeformWindowingMode"

    return-object v0

    .line 628
    :pswitch_1b
    const-string/jumbo v0, "setCustomDensityEnabled"

    return-object v0

    .line 624
    :pswitch_1c
    const-string/jumbo v0, "setBlockedMinimizeFreeformEnable"

    return-object v0

    .line 620
    :pswitch_1d
    const-string v0, "disableDividerPanelFirstAutoOpen"

    return-object v0

    .line 616
    :pswitch_1e
    const-string/jumbo v0, "setFreeformHeaderType"

    return-object v0

    .line 612
    :pswitch_1f
    const-string/jumbo v0, "unregisterRemoteAppTransitionListener"

    return-object v0

    .line 608
    :pswitch_20
    const-string/jumbo v0, "registerRemoteAppTransitionListener"

    return-object v0

    .line 604
    :pswitch_21
    const-string/jumbo v0, "unregisterSplitAdjacentCallback"

    return-object v0

    .line 600
    :pswitch_22
    const-string/jumbo v0, "registerSplitAdjacentCallback"

    return-object v0

    .line 596
    :pswitch_23
    const-string/jumbo v0, "startResizingFreeformTask"

    return-object v0

    .line 592
    :pswitch_24
    const-string/jumbo v0, "showOverlayAllApps"

    return-object v0

    .line 588
    :pswitch_25
    const-string v0, "enterSplitScreenTopActivity"

    return-object v0

    .line 584
    :pswitch_26
    const-string v0, "moveFreeformTaskToSplit"

    return-object v0

    .line 580
    :pswitch_27
    const-string v0, "moveSplitTaskToFreeform"

    return-object v0

    .line 576
    :pswitch_28
    const-string v0, "dismissTaskInSplitScreen"

    return-object v0

    .line 572
    :pswitch_29
    const-string v0, "getMultiSplitFlags"

    return-object v0

    .line 568
    :pswitch_2a
    const-string v0, "getDexTaskInfoFlags"

    return-object v0

    .line 564
    :pswitch_2b
    const-string/jumbo v0, "reportMultiWindowHandlerHelpShown"

    return-object v0

    .line 560
    :pswitch_2c
    const-string v0, "noMoreShowMultiWindowHandlerHelp"

    return-object v0

    .line 556
    :pswitch_2d
    const-string/jumbo v0, "stopFreeformTaskPinning"

    return-object v0

    .line 552
    :pswitch_2e
    const-string/jumbo v0, "startFreeformTaskPinning"

    return-object v0

    .line 548
    :pswitch_2f
    const-string/jumbo v0, "setMultiWindowEnabledForUser"

    return-object v0

    .line 544
    :pswitch_30
    const-string v0, "getMultiWindowModeStates"

    return-object v0

    .line 540
    :pswitch_31
    const-string v0, "exitMultiWindow"

    return-object v0

    .line 536
    :pswitch_32
    const-string v0, "dismissSplitTask"

    return-object v0

    .line 532
    :pswitch_33
    const-string v0, "isFlexPanelRunning"

    return-object v0

    .line 528
    :pswitch_34
    const-string/jumbo v0, "unregisterNaturalSwitchingListener"

    return-object v0

    .line 524
    :pswitch_35
    const-string/jumbo v0, "registerNaturalSwitchingListener"

    return-object v0

    .line 520
    :pswitch_36
    const-string v0, "changeSplitLayoutByNaturalSwitching"

    return-object v0

    .line 516
    :pswitch_37
    const-string v0, "finishNaturalSwitching"

    return-object v0

    .line 512
    :pswitch_38
    const-string/jumbo v0, "startNaturalSwitching"

    return-object v0

    .line 508
    :pswitch_39
    const-string v0, "getSurfaceFreezerSnapshot"

    return-object v0

    .line 504
    :pswitch_3a
    const-string v0, "notifyDragSplitAppIconHasDrawable"

    return-object v0

    .line 500
    :pswitch_3b
    const-string v0, "hideInputMethod"

    return-object v0

    .line 496
    :pswitch_3c
    const-string/jumbo v0, "setMaxVisibleFreeformCountForDex"

    return-object v0

    .line 492
    :pswitch_3d
    const-string v0, "getMWDisableRequesters"

    return-object v0

    .line 488
    :pswitch_3e
    const-string v0, "getVisibleTasks"

    return-object v0

    .line 484
    :pswitch_3f
    const-string v0, "getResizeMode"

    return-object v0

    .line 480
    :pswitch_40
    const-string/jumbo v0, "supportsMultiWindow"

    return-object v0

    .line 476
    :pswitch_41
    const-string v0, "getMultiWindowBlockListApp"

    return-object v0

    .line 472
    :pswitch_42
    const-string v0, "isMultiWindowBlockListApp"

    return-object v0

    .line 468
    :pswitch_43
    const-string v0, "isAllowedMultiWindowPackage"

    return-object v0

    .line 464
    :pswitch_44
    const-string v0, "getAllowedMultiWindowPackageList"

    return-object v0

    .line 460
    :pswitch_45
    const-string v0, "hasMinimizedToggleTasks"

    return-object v0

    .line 456
    :pswitch_46
    const-string v0, "getFreeformAlpha"

    return-object v0

    .line 452
    :pswitch_47
    const-string/jumbo v0, "setFreeformAlpha"

    return-object v0

    .line 448
    :pswitch_48
    const-string v0, "getMinimizedFreeformTasksForCurrentUser"

    return-object v0

    .line 444
    :pswitch_49
    const-string v0, "getFreeformContainerDefaultPoint"

    return-object v0

    .line 440
    :pswitch_4a
    const-string/jumbo v0, "reportFreeformContainerPoint"

    return-object v0

    .line 436
    :pswitch_4b
    const-string v0, "notifyFreeformMinimizeAnimationEnd"

    return-object v0

    .line 432
    :pswitch_4c
    const-string/jumbo v0, "unregisterFreeformCallback"

    return-object v0

    .line 428
    :pswitch_4d
    const-string/jumbo v0, "registerFreeformCallback"

    return-object v0

    .line 424
    :pswitch_4e
    const-string v0, "minimizeAllTasks"

    return-object v0

    .line 420
    :pswitch_4f
    const-string v0, "minimizeTaskById"

    return-object v0

    .line 416
    :pswitch_50
    const-string v0, "minimizeTaskByToken"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 407
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 3026
    const/16 v0, 0x50

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 747
    invoke-static {p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    const-string v0, "com.samsung.android.multiwindow.IMultiTaskingBinder"

    .line 752
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 753
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 763
    packed-switch p1, :pswitch_data_1

    .line 1516
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 759
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 760
    return v1

    .line 1503
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1505
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1507
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1508
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1509
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isAllTasksResizable(III)Z

    move-result v5

    .line 1510
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1511
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1512
    goto/16 :goto_0

    .line 1491
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1493
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1494
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1495
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->injectBackEventForDex(Landroid/os/IBinder;I)Z

    move-result v4

    .line 1496
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1497
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1498
    goto/16 :goto_0

    .line 1484
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->updateMultiSplitAppMinimumSize()V

    .line 1485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1486
    goto/16 :goto_0

    .line 1477
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->supportMultiSplitAppMinimumSize()Z

    move-result v2

    .line 1478
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1479
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1480
    goto/16 :goto_0

    .line 1469
    .end local v2    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1470
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1471
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->changeToHorizontalSplitLayout(Landroid/os/IBinder;)V

    .line 1472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1473
    goto/16 :goto_0

    .line 1459
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1461
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1462
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1463
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->reportDexHelpShown(Landroid/os/IBinder;I)V

    .line 1464
    goto/16 :goto_0

    .line 1451
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isDisabledNonResizeableAppRestartDialog()Z

    move-result v2

    .line 1452
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1454
    goto/16 :goto_0

    .line 1445
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->disableNonResizeableAppRestartDialog()V

    .line 1446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1447
    goto/16 :goto_0

    .line 1438
    :pswitch_9
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getSupportEmbedActivityPackages()Ljava/util/List;

    move-result-object v2

    .line 1439
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1441
    goto/16 :goto_0

    .line 1426
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1428
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1430
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1431
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1432
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V

    .line 1433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    goto/16 :goto_0

    .line 1414
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1416
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1417
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1418
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    move-result v4

    .line 1419
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1421
    goto/16 :goto_0

    .line 1401
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1403
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1405
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1406
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1407
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setSplitActivityPackageEnabled(Ljava/lang/String;II)V

    .line 1408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    goto/16 :goto_0

    .line 1389
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1391
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1392
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1393
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result v4

    .line 1394
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1395
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    goto/16 :goto_0

    .line 1381
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_e
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getSplitActivityAllowPackages()Ljava/util/List;

    move-result-object v2

    .line 1382
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1384
    goto/16 :goto_0

    .line 1373
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1374
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1375
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setStayFocusActivityEnabled(Z)V

    .line 1376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1377
    goto/16 :goto_0

    .line 1363
    .end local v2    # "_arg0":Z
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1364
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1365
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->removeFocusedTask(I)Z

    move-result v3

    .line 1366
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1368
    goto/16 :goto_0

    .line 1353
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1354
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1355
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getTaskInfoFromPackageName(Ljava/lang/String;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    .line 1356
    .local v3, "_result":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1358
    goto/16 :goto_0

    .line 1345
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/app/ActivityManager$RecentTaskInfo;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1346
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1347
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setCornerGestureCustomValue(I)V

    .line 1348
    goto/16 :goto_0

    .line 1337
    .end local v2    # "_arg0":I
    :pswitch_13
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getCornerGestureCustomValue()I

    move-result v2

    .line 1338
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1340
    goto/16 :goto_0

    .line 1328
    .end local v2    # "_result":I
    :pswitch_14
    sget-object v2, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 1329
    .local v2, "_arg0":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1330
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isValidCornerGesture(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1331
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1333
    goto/16 :goto_0

    .line 1319
    .end local v2    # "_arg0":Landroid/view/MotionEvent;
    .end local v3    # "_result":Z
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1320
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1321
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setCornerGestureEnabledWithSettings(Z)V

    .line 1322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    goto/16 :goto_0

    .line 1310
    .end local v2    # "_arg0":Z
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IDexSnappingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    move-result-object v2

    .line 1311
    .local v2, "_arg0":Lcom/samsung/android/multiwindow/IDexSnappingCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1312
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V

    .line 1313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    goto/16 :goto_0

    .line 1301
    .end local v2    # "_arg0":Lcom/samsung/android/multiwindow/IDexSnappingCallback;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IDexSnappingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    move-result-object v2

    .line 1302
    .restart local v2    # "_arg0":Lcom/samsung/android/multiwindow/IDexSnappingCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1303
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V

    .line 1304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    goto/16 :goto_0

    .line 1292
    .end local v2    # "_arg0":Lcom/samsung/android/multiwindow/IDexSnappingCallback;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1293
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1294
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setNaviStarSplitImmersiveMode(Z)V

    .line 1295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    goto/16 :goto_0

    .line 1284
    .end local v2    # "_arg0":Z
    :pswitch_19
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isSplitImmersiveModeEnabled()Z

    move-result v2

    .line 1285
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1287
    goto/16 :goto_0

    .line 1276
    .end local v2    # "_result":Z
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1277
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1278
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setSplitImmersiveMode(Z)V

    .line 1279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    goto/16 :goto_0

    .line 1268
    .end local v2    # "_arg0":Z
    :pswitch_1b
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->toggleFreeformWindowingMode()Z

    move-result v2

    .line 1269
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1271
    goto/16 :goto_0

    .line 1260
    .end local v2    # "_result":Z
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1261
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1262
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setCustomDensityEnabled(I)V

    .line 1263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    goto/16 :goto_0

    .line 1252
    .end local v2    # "_arg0":I
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1253
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1254
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setBlockedMinimizeFreeformEnable(Z)V

    .line 1255
    goto/16 :goto_0

    .line 1245
    .end local v2    # "_arg0":Z
    :pswitch_1e
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->disableDividerPanelFirstAutoOpen()V

    .line 1246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    goto/16 :goto_0

    .line 1237
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1238
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1239
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setFreeformHeaderType(I)V

    .line 1240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    goto/16 :goto_0

    .line 1228
    .end local v2    # "_arg0":I
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;

    move-result-object v2

    .line 1229
    .local v2, "_arg0":Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1230
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->unregisterRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V

    .line 1231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    goto/16 :goto_0

    .line 1219
    .end local v2    # "_arg0":Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;

    move-result-object v2

    .line 1220
    .restart local v2    # "_arg0":Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1221
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V

    .line 1222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1223
    goto/16 :goto_0

    .line 1210
    .end local v2    # "_arg0":Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/ISplitAdjacentCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;

    move-result-object v2

    .line 1211
    .local v2, "_arg0":Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1212
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->unregisterSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V

    .line 1213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    goto/16 :goto_0

    .line 1201
    .end local v2    # "_arg0":Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/ISplitAdjacentCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;

    move-result-object v2

    .line 1202
    .restart local v2    # "_arg0":Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1203
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->registerSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V

    .line 1204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    goto/16 :goto_0

    .line 1186
    .end local v2    # "_arg0":Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1188
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1190
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1192
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1193
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1194
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->startResizingFreeformTask(Landroid/os/IBinder;IIZ)V

    .line 1195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    goto/16 :goto_0

    .line 1175
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1177
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1178
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1179
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->showOverlayAllApps(Landroid/os/IBinder;[I)V

    .line 1180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    goto/16 :goto_0

    .line 1168
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":[I
    :pswitch_26
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->enterSplitScreenTopActivity()V

    .line 1169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    goto/16 :goto_0

    .line 1158
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1160
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1161
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1162
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->moveFreeformTaskToSplit(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 1163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    goto/16 :goto_0

    .line 1149
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1150
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1151
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->moveSplitTaskToFreeform(Landroid/os/IBinder;)V

    .line 1152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    goto/16 :goto_0

    .line 1140
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1141
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1142
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->dismissTaskInSplitScreen(Landroid/os/IBinder;)V

    .line 1143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    goto/16 :goto_0

    .line 1132
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_2a
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getMultiSplitFlags()I

    move-result v2

    .line 1133
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1135
    goto/16 :goto_0

    .line 1123
    .end local v2    # "_result":I
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1124
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1125
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getDexTaskInfoFlags(Landroid/os/IBinder;)I

    move-result v3

    .line 1126
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    goto/16 :goto_0

    .line 1114
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1115
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1116
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->reportMultiWindowHandlerHelpShown(I)V

    .line 1117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    goto/16 :goto_0

    .line 1105
    .end local v2    # "_arg0":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1106
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->noMoreShowMultiWindowHandlerHelp(I)V

    .line 1108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    goto/16 :goto_0

    .line 1096
    .end local v2    # "_arg0":I
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1097
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->stopFreeformTaskPinning(Landroid/os/IBinder;)V

    .line 1099
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    goto/16 :goto_0

    .line 1087
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1088
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1089
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->startFreeformTaskPinning(Landroid/os/IBinder;)V

    .line 1090
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    goto/16 :goto_0

    .line 1072
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1074
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1076
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1078
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1079
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1080
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1081
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    goto/16 :goto_0

    .line 1062
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":I
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1063
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1064
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getMultiWindowModeStates(I)I

    move-result v3

    .line 1065
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    goto/16 :goto_0

    .line 1050
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1052
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1053
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->exitMultiWindow(Landroid/os/IBinder;Z)Z

    move-result v4

    .line 1055
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1057
    goto/16 :goto_0

    .line 1039
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1041
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1042
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->dismissSplitTask(Landroid/os/IBinder;Z)V

    .line 1044
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    goto/16 :goto_0

    .line 1031
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_34
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isFlexPanelRunning()Z

    move-result v2

    .line 1032
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1034
    goto/16 :goto_0

    .line 1023
    .end local v2    # "_result":Z
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/INaturalSwitchingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/INaturalSwitchingListener;

    move-result-object v2

    .line 1024
    .local v2, "_arg0":Lcom/samsung/android/multiwindow/INaturalSwitchingListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1025
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->unregisterNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V

    .line 1026
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    goto/16 :goto_0

    .line 1014
    .end local v2    # "_arg0":Lcom/samsung/android/multiwindow/INaturalSwitchingListener;
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/INaturalSwitchingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/INaturalSwitchingListener;

    move-result-object v2

    .line 1015
    .restart local v2    # "_arg0":Lcom/samsung/android/multiwindow/INaturalSwitchingListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1016
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->registerNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V

    .line 1017
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    goto/16 :goto_0

    .line 1001
    .end local v2    # "_arg0":Lcom/samsung/android/multiwindow/INaturalSwitchingListener;
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1003
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1005
    .local v3, "_arg1":Landroid/os/Bundle;
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 1006
    .local v4, "_arg2":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1007
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->changeSplitLayoutByNaturalSwitching(ILandroid/os/Bundle;Landroid/graphics/Rect;)V

    .line 1008
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    goto/16 :goto_0

    .line 994
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Landroid/graphics/Rect;
    :pswitch_38
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->finishNaturalSwitching()V

    .line 995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    goto/16 :goto_0

    .line 983
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 985
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 986
    .local v3, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 987
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->startNaturalSwitching(ILandroid/os/IRemoteCallback;)Z

    move-result v4

    .line 988
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 990
    goto/16 :goto_0

    .line 973
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v4    # "_result":Z
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 974
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    move-result-object v3

    .line 976
    .local v3, "_result":Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 978
    goto/16 :goto_0

    .line 964
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 965
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->notifyDragSplitAppIconHasDrawable(Z)V

    .line 967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    goto/16 :goto_0

    .line 955
    .end local v2    # "_arg0":Z
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 956
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 957
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->hideInputMethod(I)V

    .line 958
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    goto/16 :goto_0

    .line 944
    .end local v2    # "_arg0":I
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 946
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 947
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setMaxVisibleFreeformCountForDex(II)V

    .line 949
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    goto/16 :goto_0

    .line 936
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3e
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getMWDisableRequesters()Landroid/content/pm/StringParceledListSlice;

    move-result-object v2

    .line 937
    .local v2, "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 939
    goto/16 :goto_0

    .line 929
    .end local v2    # "_result":Landroid/content/pm/StringParceledListSlice;
    :pswitch_3f
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getVisibleTasks()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 930
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 932
    goto/16 :goto_0

    .line 920
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_40
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 921
    .local v2, "_arg0":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getResizeMode(Landroid/content/pm/ActivityInfo;)I

    move-result v3

    .line 923
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    goto/16 :goto_0

    .line 910
    .end local v2    # "_arg0":Landroid/content/pm/ActivityInfo;
    .end local v3    # "_result":I
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 911
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->supportsMultiWindow(Landroid/os/IBinder;)Z

    move-result v3

    .line 913
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 915
    goto/16 :goto_0

    .line 902
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_42
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getMultiWindowBlockListApp()Landroid/content/pm/StringParceledListSlice;

    move-result-object v2

    .line 903
    .local v2, "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 905
    goto/16 :goto_0

    .line 893
    .end local v2    # "_result":Landroid/content/pm/StringParceledListSlice;
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isMultiWindowBlockListApp(Ljava/lang/String;)Z

    move-result v3

    .line 896
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 898
    goto/16 :goto_0

    .line 883
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 884
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->isAllowedMultiWindowPackage(Ljava/lang/String;)Z

    move-result v3

    .line 886
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 888
    goto/16 :goto_0

    .line 875
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_45
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getAllowedMultiWindowPackageList()Ljava/util/List;

    move-result-object v2

    .line 876
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 878
    goto/16 :goto_0

    .line 868
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_46
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->hasMinimizedToggleTasks()Z

    move-result v2

    .line 869
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 871
    goto/16 :goto_0

    .line 859
    .end local v2    # "_result":Z
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 860
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getFreeformAlpha(Landroid/os/IBinder;)F

    move-result v3

    .line 862
    .local v3, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 864
    goto/16 :goto_0

    .line 848
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":F
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 850
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 851
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->setFreeformAlpha(Landroid/os/IBinder;F)V

    .line 853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    goto/16 :goto_0

    .line 840
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":F
    :pswitch_49
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getMinimizedFreeformTasksForCurrentUser()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 841
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 843
    goto/16 :goto_0

    .line 833
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_4a
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->getFreeformContainerDefaultPoint()Landroid/graphics/PointF;

    move-result-object v2

    .line 834
    .local v2, "_result":Landroid/graphics/PointF;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 836
    goto/16 :goto_0

    .line 825
    .end local v2    # "_result":Landroid/graphics/PointF;
    :pswitch_4b
    sget-object v2, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 826
    .local v2, "_arg0":Landroid/graphics/PointF;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 827
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->reportFreeformContainerPoint(Landroid/graphics/PointF;)V

    .line 828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    goto :goto_0

    .line 816
    .end local v2    # "_arg0":Landroid/graphics/PointF;
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 817
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->notifyFreeformMinimizeAnimationEnd(I)V

    .line 819
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    goto :goto_0

    .line 807
    .end local v2    # "_arg0":I
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IFreeformCallback;

    move-result-object v2

    .line 808
    .local v2, "_arg0":Lcom/samsung/android/multiwindow/IFreeformCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 809
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V

    .line 810
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    goto :goto_0

    .line 798
    .end local v2    # "_arg0":Lcom/samsung/android/multiwindow/IFreeformCallback;
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IFreeformCallback;

    move-result-object v2

    .line 799
    .restart local v2    # "_arg0":Lcom/samsung/android/multiwindow/IFreeformCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    goto :goto_0

    .line 788
    .end local v2    # "_arg0":Lcom/samsung/android/multiwindow/IFreeformCallback;
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 789
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->minimizeAllTasks(I)Z

    move-result v3

    .line 791
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 793
    goto :goto_0

    .line 778
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 779
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->minimizeTaskById(I)Z

    move-result v3

    .line 781
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 783
    goto :goto_0

    .line 768
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 769
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;->minimizeTaskByToken(Landroid/os/IBinder;)Z

    move-result v3

    .line 771
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 773
    nop

    .line 1519
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
