.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final blacklist TRANSACTION_addDeviceWirelessKeyboardShare:I = 0x46

.field static final greylist-max-o TRANSACTION_addKeyboardLayoutForInputDevice:I = 0x14

.field static final blacklist TRANSACTION_addPortAssociation:I = 0x4a

.field static final blacklist TRANSACTION_addUniqueIdAssociation:I = 0x4c

.field static final blacklist TRANSACTION_cancelCurrentTouch:I = 0x59

.field static final greylist-max-o TRANSACTION_cancelVibrate:I = 0x22

.field static final blacklist TRANSACTION_changeDeviceWirelessKeyboardShare:I = 0x45

.field static final blacklist TRANSACTION_checkInputFeature:I = 0x1c

.field static final blacklist TRANSACTION_closeLightSession:I = 0x58

.field static final blacklist TRANSACTION_connectByBtDevice:I = 0x49

.field static final greylist-max-o TRANSACTION_disableInputDevice:I = 0x5

.field static final blacklist TRANSACTION_disableSensor:I = 0x52

.field static final greylist-max-o TRANSACTION_enableInputDevice:I = 0x4

.field static final blacklist TRANSACTION_enableSensor:I = 0x51

.field static final blacklist TRANSACTION_flushSensor:I = 0x53

.field static final blacklist TRANSACTION_forceFadeIcon:I = 0x40

.field static final blacklist TRANSACTION_getBatteryCapacity:I = 0x28

.field static final blacklist TRANSACTION_getBatteryStatus:I = 0x27

.field static final greylist-max-o TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0x11

.field static final blacklist TRANSACTION_getDefaultPointerIcon:I = 0x2e

.field static final blacklist TRANSACTION_getDisplayIdForPointerIcon:I = 0x32

.field static final greylist-max-o TRANSACTION_getEnabledKeyboardLayoutsForInputDevice:I = 0x13

.field static final blacklist TRANSACTION_getGlobalMetaState:I = 0x3b

.field static final blacklist TRANSACTION_getInboundQueueLength:I = 0x38

.field static final greylist-max-o TRANSACTION_getInputDevice:I = 0x1

.field static final greylist-max-o TRANSACTION_getInputDeviceIds:I = 0x2

.field static final blacklist TRANSACTION_getKeyCodeForKeyLocation:I = 0x7

.field static final greylist-max-o TRANSACTION_getKeyboardLayout:I = 0x10

.field static final blacklist TRANSACTION_getKeyboardLayoutForInputDevice:I = 0x16

.field static final greylist-max-o TRANSACTION_getKeyboardLayouts:I = 0xe

.field static final greylist-max-o TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0xf

.field static final blacklist TRANSACTION_getLastLidEventTimeNanos:I = 0x3d

.field static final blacklist TRANSACTION_getLidState:I = 0x1a

.field static final blacklist TRANSACTION_getLightState:I = 0x55

.field static final blacklist TRANSACTION_getLights:I = 0x54

.field static final blacklist TRANSACTION_getScanCodeState:I = 0x39

.field static final blacklist TRANSACTION_getSensorList:I = 0x4e

.field static final blacklist TRANSACTION_getToolTypeForDefaultPointerIcon:I = 0x30

.field static final greylist-max-o TRANSACTION_getTouchCalibrationForInputDevice:I = 0xc

.field static final blacklist TRANSACTION_getVibratorIds:I = 0x23

.field static final greylist-max-o TRANSACTION_hasKeys:I = 0x6

.field static final greylist-max-r TRANSACTION_injectInputEvent:I = 0x9

.field static final blacklist TRANSACTION_injectInputEventToTarget:I = 0xa

.field static final blacklist TRANSACTION_isDefaultPointerIconChanged:I = 0x2f

.field static final greylist-max-o TRANSACTION_isInTabletMode:I = 0x19

.field static final greylist-max-o TRANSACTION_isInputDeviceEnabled:I = 0x3

.field static final blacklist TRANSACTION_isMicMuted:I = 0x1f

.field static final blacklist TRANSACTION_isUidTouched:I = 0x3f

.field static final blacklist TRANSACTION_isVibrating:I = 0x24

.field static final blacklist TRANSACTION_monitorGestureInput:I = 0x35

.field static final blacklist TRANSACTION_monitorInputForBinder:I = 0x36

.field static final blacklist TRANSACTION_openLightSession:I = 0x57

.field static final greylist-max-o TRANSACTION_registerInputDevicesChangedListener:I = 0x18

.field static final blacklist TRANSACTION_registerLidStateChangedListener:I = 0x1b

.field static final blacklist TRANSACTION_registerMultiFingerGestureListener:I = 0x1d

.field static final blacklist TRANSACTION_registerPointerIconChangedListener:I = 0x2b

.field static final blacklist TRANSACTION_registerSensorListener:I = 0x4f

.field static final greylist-max-o TRANSACTION_registerTabletModeChangedListener:I = 0x1e

.field static final blacklist TRANSACTION_registerVibratorStateListener:I = 0x25

.field static final blacklist TRANSACTION_registerWirelessKeyboardShareChangedListener:I = 0x42

.field static final blacklist TRANSACTION_removeDeviceWirelessKeyboardShare:I = 0x44

.field static final greylist-max-o TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0x15

.field static final blacklist TRANSACTION_removePortAssociation:I = 0x4b

.field static final blacklist TRANSACTION_removeUniqueIdAssociation:I = 0x4d

.field static final greylist-max-o TRANSACTION_requestPointerCapture:I = 0x34

.field static final blacklist TRANSACTION_semGetMotionIdleTimeMillis:I = 0x3c

.field static final blacklist TRANSACTION_setCoverVerify:I = 0x41

.field static final greylist-max-o TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0x12

.field static final blacklist TRANSACTION_setCustomHoverIcon:I = 0x2c

.field static final greylist-max-o TRANSACTION_setCustomPointerIcon:I = 0x2a

.field static final blacklist TRANSACTION_setDefaultPointerIcon:I = 0x2d

.field static final blacklist TRANSACTION_setDisplayIdForPointerIcon:I = 0x31

.field static final blacklist TRANSACTION_setEnableTSP:I = 0x37

.field static final blacklist TRANSACTION_setHostRoleWirelessKeyboardShare:I = 0x48

.field static final blacklist TRANSACTION_setKeyboardLayoutForInputDevice:I = 0x17

.field static final blacklist TRANSACTION_setLightStates:I = 0x56

.field static final greylist-max-o TRANSACTION_setPointerIconType:I = 0x29

.field static final blacklist TRANSACTION_setShowAllTouches:I = 0x33

.field static final blacklist TRANSACTION_setStartedShutdown:I = 0x3e

.field static final greylist-max-o TRANSACTION_setTouchCalibrationForInputDevice:I = 0xd

.field static final blacklist TRANSACTION_setWakeKeyDynamically:I = 0x3a

.field static final blacklist TRANSACTION_switchDeviceWirelessKeyboardShare:I = 0x47

.field static final greylist-max-o TRANSACTION_tryPointerSpeed:I = 0x8

.field static final blacklist TRANSACTION_unregisterSensorListener:I = 0x50

.field static final blacklist TRANSACTION_unregisterVibratorStateListener:I = 0x26

.field static final blacklist TRANSACTION_updateWirelessKeyboardShareStatus:I = 0x43

.field static final blacklist TRANSACTION_verifyInputEvent:I = 0xb

.field static final greylist-max-o TRANSACTION_vibrate:I = 0x20

.field static final blacklist TRANSACTION_vibrateCombined:I = 0x21


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 408
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 409
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 417
    if-nez p0, :cond_0

    .line 418
    const/4 v0, 0x0

    return-object v0

    .line 420
    :cond_0
    const-string v0, "android.hardware.input.IInputManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 421
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_1

    .line 422
    move-object v1, v0

    check-cast v1, Landroid/hardware/input/IInputManager;

    return-object v1

    .line 424
    :cond_1
    new-instance v1, Landroid/hardware/input/IInputManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 433
    packed-switch p0, :pswitch_data_0

    .line 793
    const/4 v0, 0x0

    return-object v0

    .line 789
    :pswitch_0
    const-string v0, "cancelCurrentTouch"

    return-object v0

    .line 785
    :pswitch_1
    const-string v0, "closeLightSession"

    return-object v0

    .line 781
    :pswitch_2
    const-string v0, "openLightSession"

    return-object v0

    .line 777
    :pswitch_3
    const-string/jumbo v0, "setLightStates"

    return-object v0

    .line 773
    :pswitch_4
    const-string v0, "getLightState"

    return-object v0

    .line 769
    :pswitch_5
    const-string v0, "getLights"

    return-object v0

    .line 765
    :pswitch_6
    const-string v0, "flushSensor"

    return-object v0

    .line 761
    :pswitch_7
    const-string v0, "disableSensor"

    return-object v0

    .line 757
    :pswitch_8
    const-string v0, "enableSensor"

    return-object v0

    .line 753
    :pswitch_9
    const-string/jumbo v0, "unregisterSensorListener"

    return-object v0

    .line 749
    :pswitch_a
    const-string v0, "registerSensorListener"

    return-object v0

    .line 745
    :pswitch_b
    const-string v0, "getSensorList"

    return-object v0

    .line 741
    :pswitch_c
    const-string v0, "removeUniqueIdAssociation"

    return-object v0

    .line 737
    :pswitch_d
    const-string v0, "addUniqueIdAssociation"

    return-object v0

    .line 733
    :pswitch_e
    const-string v0, "removePortAssociation"

    return-object v0

    .line 729
    :pswitch_f
    const-string v0, "addPortAssociation"

    return-object v0

    .line 725
    :pswitch_10
    const-string v0, "connectByBtDevice"

    return-object v0

    .line 721
    :pswitch_11
    const-string/jumbo v0, "setHostRoleWirelessKeyboardShare"

    return-object v0

    .line 717
    :pswitch_12
    const-string/jumbo v0, "switchDeviceWirelessKeyboardShare"

    return-object v0

    .line 713
    :pswitch_13
    const-string v0, "addDeviceWirelessKeyboardShare"

    return-object v0

    .line 709
    :pswitch_14
    const-string v0, "changeDeviceWirelessKeyboardShare"

    return-object v0

    .line 705
    :pswitch_15
    const-string v0, "removeDeviceWirelessKeyboardShare"

    return-object v0

    .line 701
    :pswitch_16
    const-string/jumbo v0, "updateWirelessKeyboardShareStatus"

    return-object v0

    .line 697
    :pswitch_17
    const-string v0, "registerWirelessKeyboardShareChangedListener"

    return-object v0

    .line 693
    :pswitch_18
    const-string v0, "setCoverVerify"

    return-object v0

    .line 689
    :pswitch_19
    const-string v0, "forceFadeIcon"

    return-object v0

    .line 685
    :pswitch_1a
    const-string v0, "isUidTouched"

    return-object v0

    .line 681
    :pswitch_1b
    const-string/jumbo v0, "setStartedShutdown"

    return-object v0

    .line 677
    :pswitch_1c
    const-string v0, "getLastLidEventTimeNanos"

    return-object v0

    .line 673
    :pswitch_1d
    const-string v0, "semGetMotionIdleTimeMillis"

    return-object v0

    .line 669
    :pswitch_1e
    const-string v0, "getGlobalMetaState"

    return-object v0

    .line 665
    :pswitch_1f
    const-string/jumbo v0, "setWakeKeyDynamically"

    return-object v0

    .line 661
    :pswitch_20
    const-string v0, "getScanCodeState"

    return-object v0

    .line 657
    :pswitch_21
    const-string v0, "getInboundQueueLength"

    return-object v0

    .line 653
    :pswitch_22
    const-string v0, "setEnableTSP"

    return-object v0

    .line 649
    :pswitch_23
    const-string v0, "monitorInputForBinder"

    return-object v0

    .line 645
    :pswitch_24
    const-string v0, "monitorGestureInput"

    return-object v0

    .line 641
    :pswitch_25
    const-string v0, "requestPointerCapture"

    return-object v0

    .line 637
    :pswitch_26
    const-string/jumbo v0, "setShowAllTouches"

    return-object v0

    .line 633
    :pswitch_27
    const-string v0, "getDisplayIdForPointerIcon"

    return-object v0

    .line 629
    :pswitch_28
    const-string v0, "setDisplayIdForPointerIcon"

    return-object v0

    .line 625
    :pswitch_29
    const-string v0, "getToolTypeForDefaultPointerIcon"

    return-object v0

    .line 621
    :pswitch_2a
    const-string v0, "isDefaultPointerIconChanged"

    return-object v0

    .line 617
    :pswitch_2b
    const-string v0, "getDefaultPointerIcon"

    return-object v0

    .line 613
    :pswitch_2c
    const-string v0, "setDefaultPointerIcon"

    return-object v0

    .line 609
    :pswitch_2d
    const-string v0, "setCustomHoverIcon"

    return-object v0

    .line 605
    :pswitch_2e
    const-string v0, "registerPointerIconChangedListener"

    return-object v0

    .line 601
    :pswitch_2f
    const-string v0, "setCustomPointerIcon"

    return-object v0

    .line 597
    :pswitch_30
    const-string/jumbo v0, "setPointerIconType"

    return-object v0

    .line 593
    :pswitch_31
    const-string v0, "getBatteryCapacity"

    return-object v0

    .line 589
    :pswitch_32
    const-string v0, "getBatteryStatus"

    return-object v0

    .line 585
    :pswitch_33
    const-string/jumbo v0, "unregisterVibratorStateListener"

    return-object v0

    .line 581
    :pswitch_34
    const-string v0, "registerVibratorStateListener"

    return-object v0

    .line 577
    :pswitch_35
    const-string v0, "isVibrating"

    return-object v0

    .line 573
    :pswitch_36
    const-string v0, "getVibratorIds"

    return-object v0

    .line 569
    :pswitch_37
    const-string v0, "cancelVibrate"

    return-object v0

    .line 565
    :pswitch_38
    const-string/jumbo v0, "vibrateCombined"

    return-object v0

    .line 561
    :pswitch_39
    const-string/jumbo v0, "vibrate"

    return-object v0

    .line 557
    :pswitch_3a
    const-string v0, "isMicMuted"

    return-object v0

    .line 553
    :pswitch_3b
    const-string v0, "registerTabletModeChangedListener"

    return-object v0

    .line 549
    :pswitch_3c
    const-string v0, "registerMultiFingerGestureListener"

    return-object v0

    .line 545
    :pswitch_3d
    const-string v0, "checkInputFeature"

    return-object v0

    .line 541
    :pswitch_3e
    const-string v0, "registerLidStateChangedListener"

    return-object v0

    .line 537
    :pswitch_3f
    const-string v0, "getLidState"

    return-object v0

    .line 533
    :pswitch_40
    const-string v0, "isInTabletMode"

    return-object v0

    .line 529
    :pswitch_41
    const-string v0, "registerInputDevicesChangedListener"

    return-object v0

    .line 525
    :pswitch_42
    const-string/jumbo v0, "setKeyboardLayoutForInputDevice"

    return-object v0

    .line 521
    :pswitch_43
    const-string v0, "getKeyboardLayoutForInputDevice"

    return-object v0

    .line 517
    :pswitch_44
    const-string v0, "removeKeyboardLayoutForInputDevice"

    return-object v0

    .line 513
    :pswitch_45
    const-string v0, "addKeyboardLayoutForInputDevice"

    return-object v0

    .line 509
    :pswitch_46
    const-string v0, "getEnabledKeyboardLayoutsForInputDevice"

    return-object v0

    .line 505
    :pswitch_47
    const-string v0, "setCurrentKeyboardLayoutForInputDevice"

    return-object v0

    .line 501
    :pswitch_48
    const-string v0, "getCurrentKeyboardLayoutForInputDevice"

    return-object v0

    .line 497
    :pswitch_49
    const-string v0, "getKeyboardLayout"

    return-object v0

    .line 493
    :pswitch_4a
    const-string v0, "getKeyboardLayoutsForInputDevice"

    return-object v0

    .line 489
    :pswitch_4b
    const-string v0, "getKeyboardLayouts"

    return-object v0

    .line 485
    :pswitch_4c
    const-string/jumbo v0, "setTouchCalibrationForInputDevice"

    return-object v0

    .line 481
    :pswitch_4d
    const-string v0, "getTouchCalibrationForInputDevice"

    return-object v0

    .line 477
    :pswitch_4e
    const-string/jumbo v0, "verifyInputEvent"

    return-object v0

    .line 473
    :pswitch_4f
    const-string v0, "injectInputEventToTarget"

    return-object v0

    .line 469
    :pswitch_50
    const-string v0, "injectInputEvent"

    return-object v0

    .line 465
    :pswitch_51
    const-string/jumbo v0, "tryPointerSpeed"

    return-object v0

    .line 461
    :pswitch_52
    const-string v0, "getKeyCodeForKeyLocation"

    return-object v0

    .line 457
    :pswitch_53
    const-string v0, "hasKeys"

    return-object v0

    .line 453
    :pswitch_54
    const-string v0, "disableInputDevice"

    return-object v0

    .line 449
    :pswitch_55
    const-string v0, "enableInputDevice"

    return-object v0

    .line 445
    :pswitch_56
    const-string v0, "isInputDeviceEnabled"

    return-object v0

    .line 441
    :pswitch_57
    const-string v0, "getInputDeviceIds"

    return-object v0

    .line 437
    :pswitch_58
    const-string v0, "getInputDevice"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 428
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 3440
    const/16 v0, 0x58

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 800
    invoke-static {p1}, Landroid/hardware/input/IInputManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 804
    const-string v0, "android.hardware.input.IInputManager"

    .line 805
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 806
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 816
    packed-switch p1, :pswitch_data_1

    .line 1737
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 812
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 813
    return v1

    .line 1731
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->cancelCurrentTouch()V

    .line 1732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1733
    goto/16 :goto_1

    .line 1721
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1723
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1724
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1725
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->closeLightSession(ILandroid/os/IBinder;)V

    .line 1726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1727
    goto/16 :goto_1

    .line 1708
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1710
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1712
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1713
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1714
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1716
    goto/16 :goto_1

    .line 1693
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1695
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1697
    .local v3, "_arg1":[I
    sget-object v4, Landroid/hardware/lights/LightState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/lights/LightState;

    .line 1699
    .local v4, "_arg2":[Landroid/hardware/lights/LightState;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1700
    .local v5, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1701
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/input/IInputManager$Stub;->setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V

    .line 1702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1703
    goto/16 :goto_1

    .line 1681
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":[Landroid/hardware/lights/LightState;
    .end local v5    # "_arg3":Landroid/os/IBinder;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1683
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1684
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1685
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->getLightState(II)Landroid/hardware/lights/LightState;

    move-result-object v4

    .line 1686
    .local v4, "_result":Landroid/hardware/lights/LightState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1688
    goto/16 :goto_1

    .line 1671
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/hardware/lights/LightState;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1672
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1673
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getLights(I)Ljava/util/List;

    move-result-object v3

    .line 1674
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1675
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1676
    goto/16 :goto_1

    .line 1659
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1661
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1662
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1663
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->flushSensor(II)Z

    move-result v4

    .line 1664
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1665
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1666
    goto/16 :goto_1

    .line 1648
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1650
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1651
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1652
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->disableSensor(II)V

    .line 1653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1654
    goto/16 :goto_1

    .line 1632
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1634
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1636
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1638
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1639
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1640
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/input/IInputManager$Stub;->enableSensor(IIII)Z

    move-result v6

    .line 1641
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1643
    goto/16 :goto_1

    .line 1623
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputSensorEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputSensorEventListener;

    move-result-object v2

    .line 1624
    .local v2, "_arg0":Landroid/hardware/input/IInputSensorEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1625
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V

    .line 1626
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1627
    goto/16 :goto_1

    .line 1613
    .end local v2    # "_arg0":Landroid/hardware/input/IInputSensorEventListener;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputSensorEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputSensorEventListener;

    move-result-object v2

    .line 1614
    .restart local v2    # "_arg0":Landroid/hardware/input/IInputSensorEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1615
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z

    move-result v3

    .line 1616
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1617
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1618
    goto/16 :goto_1

    .line 1603
    .end local v2    # "_arg0":Landroid/hardware/input/IInputSensorEventListener;
    .end local v3    # "_result":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1604
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1605
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object v3

    .line 1606
    .local v3, "_result":[Landroid/hardware/input/InputSensorInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1607
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1608
    goto/16 :goto_1

    .line 1594
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Landroid/hardware/input/InputSensorInfo;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1595
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1596
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->removeUniqueIdAssociation(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1598
    goto/16 :goto_1

    .line 1583
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1585
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1586
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1587
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->addUniqueIdAssociation(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1589
    goto/16 :goto_1

    .line 1574
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1575
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1576
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->removePortAssociation(Ljava/lang/String;)V

    .line 1577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    goto/16 :goto_1

    .line 1563
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1565
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1566
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1567
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->addPortAssociation(Ljava/lang/String;I)V

    .line 1568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    goto/16 :goto_1

    .line 1554
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_11
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1555
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1556
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->connectByBtDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    goto/16 :goto_1

    .line 1547
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :pswitch_12
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->setHostRoleWirelessKeyboardShare()V

    .line 1548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    goto/16 :goto_1

    .line 1536
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1538
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1539
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1540
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->switchDeviceWirelessKeyboardShare(Ljava/lang/String;I)Z

    move-result v4

    .line 1541
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1542
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1543
    goto/16 :goto_1

    .line 1526
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1527
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1528
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->addDeviceWirelessKeyboardShare(I)Z

    move-result v3

    .line 1529
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1531
    goto/16 :goto_1

    .line 1515
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1517
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1518
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1519
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->changeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V

    .line 1520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1521
    goto/16 :goto_1

    .line 1504
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1506
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1507
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1508
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->removeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V

    .line 1509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1510
    goto/16 :goto_1

    .line 1497
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_17
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->updateWirelessKeyboardShareStatus()V

    .line 1498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1499
    goto/16 :goto_1

    .line 1489
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IWirelessKeyboardShareChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IWirelessKeyboardShareChangedListener;

    move-result-object v2

    .line 1490
    .local v2, "_arg0":Landroid/hardware/input/IWirelessKeyboardShareChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1491
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->registerWirelessKeyboardShareChangedListener(Landroid/hardware/input/IWirelessKeyboardShareChangedListener;)V

    .line 1492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    goto/16 :goto_1

    .line 1480
    .end local v2    # "_arg0":Landroid/hardware/input/IWirelessKeyboardShareChangedListener;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1481
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1482
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->setCoverVerify(I)V

    .line 1483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1484
    goto/16 :goto_1

    .line 1471
    .end local v2    # "_arg0":I
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1472
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1473
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->forceFadeIcon(I)V

    .line 1474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1475
    goto/16 :goto_1

    .line 1461
    .end local v2    # "_arg0":I
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1462
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1463
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->isUidTouched(I)Z

    move-result v3

    .line 1464
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1465
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1466
    goto/16 :goto_1

    .line 1452
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1453
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1454
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->setStartedShutdown(Z)V

    .line 1455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1456
    goto/16 :goto_1

    .line 1444
    .end local v2    # "_arg0":Z
    :pswitch_1d
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getLastLidEventTimeNanos()J

    move-result-wide v2

    .line 1445
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1447
    goto/16 :goto_1

    .line 1435
    .end local v2    # "_result":J
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1436
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1437
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->semGetMotionIdleTimeMillis(Z)J

    move-result-wide v3

    .line 1438
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1439
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1440
    goto/16 :goto_1

    .line 1425
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":J
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1426
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1427
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getGlobalMetaState(I)I

    move-result v3

    .line 1428
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1429
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1430
    goto/16 :goto_1

    .line 1412
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1414
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1416
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1417
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1418
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    goto/16 :goto_1

    .line 1398
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1400
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1402
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1403
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1404
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->getScanCodeState(III)I

    move-result v5

    .line 1405
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    goto/16 :goto_1

    .line 1390
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_22
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getInboundQueueLength()I

    move-result v2

    .line 1391
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    goto/16 :goto_1

    .line 1379
    .end local v2    # "_result":I
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1381
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1382
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1383
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->setEnableTSP(IZ)Z

    move-result v4

    .line 1384
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1386
    goto/16 :goto_1

    .line 1365
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1367
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1369
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1370
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1371
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->monitorInputForBinder(Ljava/lang/String;II)Landroid/view/InputChannel;

    move-result-object v5

    .line 1372
    .local v5, "_result":Landroid/view/InputChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1374
    goto/16 :goto_1

    .line 1349
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/view/InputChannel;
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1351
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1353
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1355
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1356
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1357
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/input/IInputManager$Stub;->monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;II)Landroid/view/InputMonitor;

    move-result-object v6

    .line 1358
    .local v6, "_result":Landroid/view/InputMonitor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1359
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1360
    goto/16 :goto_1

    .line 1339
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Landroid/view/InputMonitor;
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1341
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1342
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1343
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->requestPointerCapture(Landroid/os/IBinder;Z)V

    .line 1344
    goto/16 :goto_1

    .line 1330
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1331
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1332
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->setShowAllTouches(Z)V

    .line 1333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    goto/16 :goto_1

    .line 1322
    .end local v2    # "_arg0":Z
    :pswitch_28
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getDisplayIdForPointerIcon()I

    move-result v2

    .line 1323
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1324
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1325
    goto/16 :goto_1

    .line 1314
    .end local v2    # "_result":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1315
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1316
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->setDisplayIdForPointerIcon(I)V

    .line 1317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    goto/16 :goto_1

    .line 1306
    .end local v2    # "_arg0":I
    :pswitch_2a
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getToolTypeForDefaultPointerIcon()I

    move-result v2

    .line 1307
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    goto/16 :goto_1

    .line 1299
    .end local v2    # "_result":I
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->isDefaultPointerIconChanged()Z

    move-result v2

    .line 1300
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1302
    goto/16 :goto_1

    .line 1292
    .end local v2    # "_result":Z
    :pswitch_2c
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getDefaultPointerIcon()Landroid/view/PointerIcon;

    move-result-object v2

    .line 1293
    .local v2, "_result":Landroid/view/PointerIcon;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1295
    goto/16 :goto_1

    .line 1280
    .end local v2    # "_result":Landroid/view/PointerIcon;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1282
    .local v2, "_arg0":I
    sget-object v3, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/PointerIcon;

    .line 1284
    .local v3, "_arg1":Landroid/view/PointerIcon;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1285
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1286
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->setDefaultPointerIcon(ILandroid/view/PointerIcon;Z)V

    .line 1287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    goto/16 :goto_1

    .line 1271
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/PointerIcon;
    .end local v4    # "_arg2":Z
    :pswitch_2e
    sget-object v2, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/PointerIcon;

    .line 1272
    .local v2, "_arg0":Landroid/view/PointerIcon;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1273
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->setCustomHoverIcon(Landroid/view/PointerIcon;)V

    .line 1274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    goto/16 :goto_1

    .line 1262
    .end local v2    # "_arg0":Landroid/view/PointerIcon;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IPointerIconChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IPointerIconChangedListener;

    move-result-object v2

    .line 1263
    .local v2, "_arg0":Landroid/hardware/input/IPointerIconChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1264
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->registerPointerIconChangedListener(Landroid/hardware/input/IPointerIconChangedListener;)V

    .line 1265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    goto/16 :goto_1

    .line 1253
    .end local v2    # "_arg0":Landroid/hardware/input/IPointerIconChangedListener;
    :pswitch_30
    sget-object v2, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/PointerIcon;

    .line 1254
    .local v2, "_arg0":Landroid/view/PointerIcon;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1255
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 1256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    goto/16 :goto_1

    .line 1244
    .end local v2    # "_arg0":Landroid/view/PointerIcon;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1245
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1246
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->setPointerIconType(I)V

    .line 1247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    goto/16 :goto_1

    .line 1234
    .end local v2    # "_arg0":I
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1235
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1236
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getBatteryCapacity(I)I

    move-result v3

    .line 1237
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1239
    goto/16 :goto_1

    .line 1224
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1225
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1226
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getBatteryStatus(I)I

    move-result v3

    .line 1227
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1229
    goto/16 :goto_1

    .line 1212
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1214
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object v3

    .line 1215
    .local v3, "_arg1":Landroid/os/IVibratorStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1216
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v4

    .line 1217
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1219
    goto/16 :goto_1

    .line 1200
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IVibratorStateListener;
    .end local v4    # "_result":Z
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1202
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object v3

    .line 1203
    .restart local v3    # "_arg1":Landroid/os/IVibratorStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1204
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v4

    .line 1205
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1207
    goto/16 :goto_1

    .line 1190
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IVibratorStateListener;
    .end local v4    # "_result":Z
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1191
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1192
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->isVibrating(I)Z

    move-result v3

    .line 1193
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1194
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1195
    goto/16 :goto_1

    .line 1180
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1181
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1182
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getVibratorIds(I)[I

    move-result-object v3

    .line 1183
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1185
    goto/16 :goto_1

    .line 1169
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[I
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1171
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1172
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1173
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 1174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    goto/16 :goto_1

    .line 1156
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1158
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    .line 1160
    .local v3, "_arg1":Landroid/os/CombinedVibration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1161
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1162
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V

    .line 1163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    goto/16 :goto_1

    .line 1143
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/CombinedVibration;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1145
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    .line 1147
    .local v3, "_arg1":Landroid/os/VibrationEffect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1148
    .restart local v4    # "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1149
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V

    .line 1150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    goto/16 :goto_1

    .line 1135
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/VibrationEffect;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->isMicMuted()I

    move-result v2

    .line 1136
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    goto/16 :goto_1

    .line 1127
    .end local v2    # "_result":I
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    move-result-object v2

    .line 1128
    .local v2, "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    .line 1130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    goto/16 :goto_1

    .line 1118
    .end local v2    # "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IMultiFingerGestureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IMultiFingerGestureListener;

    move-result-object v2

    .line 1119
    .local v2, "_arg0":Landroid/hardware/input/IMultiFingerGestureListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1120
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->registerMultiFingerGestureListener(Landroid/hardware/input/IMultiFingerGestureListener;)V

    .line 1121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    goto/16 :goto_1

    .line 1110
    .end local v2    # "_arg0":Landroid/hardware/input/IMultiFingerGestureListener;
    :pswitch_3e
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->checkInputFeature()I

    move-result v2

    .line 1111
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    goto/16 :goto_1

    .line 1102
    .end local v2    # "_result":I
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/ISemLidStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ISemLidStateChangedListener;

    move-result-object v2

    .line 1103
    .local v2, "_arg0":Landroid/hardware/input/ISemLidStateChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1104
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->registerLidStateChangedListener(Landroid/hardware/input/ISemLidStateChangedListener;)V

    .line 1105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    goto/16 :goto_1

    .line 1094
    .end local v2    # "_arg0":Landroid/hardware/input/ISemLidStateChangedListener;
    :pswitch_40
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getLidState()I

    move-result v2

    .line 1095
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1097
    goto/16 :goto_1

    .line 1087
    .end local v2    # "_result":I
    :pswitch_41
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->isInTabletMode()I

    move-result v2

    .line 1088
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    goto/16 :goto_1

    .line 1079
    .end local v2    # "_result":I
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v2

    .line 1080
    .local v2, "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1081
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 1082
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    goto/16 :goto_1

    .line 1064
    .end local v2    # "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    :pswitch_43
    sget-object v2, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 1066
    .local v2, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    sget-object v3, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 1068
    .local v3, "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1070
    .local v4, "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1071
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    goto/16 :goto_1

    .line 1050
    .end local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_44
    sget-object v2, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 1052
    .restart local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    sget-object v3, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 1054
    .restart local v3    # "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1055
    .restart local v4    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1056
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v5

    .line 1057
    .local v5, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1059
    goto/16 :goto_1

    .line 1039
    .end local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v5    # "_result":Landroid/hardware/input/KeyboardLayout;
    :pswitch_45
    sget-object v2, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 1041
    .restart local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1042
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    goto/16 :goto_1

    .line 1028
    .end local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_46
    sget-object v2, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 1030
    .restart local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1031
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1032
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    goto/16 :goto_1

    .line 1018
    .end local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_47
    sget-object v2, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 1019
    .restart local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v3

    .line 1021
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1023
    goto/16 :goto_1

    .line 1007
    .end local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_48
    sget-object v2, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 1009
    .restart local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1010
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    goto/16 :goto_1

    .line 997
    .end local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_49
    sget-object v2, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 998
    .restart local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v3

    .line 1000
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1002
    goto/16 :goto_1

    .line 987
    .end local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 988
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 989
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v3

    .line 990
    .local v3, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 992
    goto/16 :goto_1

    .line 977
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/input/KeyboardLayout;
    :pswitch_4b
    sget-object v2, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 978
    .local v2, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 979
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v3

    .line 980
    .local v3, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 982
    goto/16 :goto_1

    .line 969
    .end local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :pswitch_4c
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v2

    .line 970
    .local v2, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 972
    goto/16 :goto_1

    .line 957
    .end local v2    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 959
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 961
    .local v3, "_arg1":I
    sget-object v4, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/TouchCalibration;

    .line 962
    .local v4, "_arg2":Landroid/hardware/input/TouchCalibration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    .line 964
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    goto/16 :goto_1

    .line 945
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 947
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 948
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 949
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v4

    .line 950
    .local v4, "_result":Landroid/hardware/input/TouchCalibration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 952
    goto/16 :goto_1

    .line 935
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/hardware/input/TouchCalibration;
    :pswitch_4f
    sget-object v2, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputEvent;

    .line 936
    .local v2, "_arg0":Landroid/view/InputEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 937
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object v3

    .line 938
    .local v3, "_result":Landroid/view/VerifiedInputEvent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 940
    goto/16 :goto_1

    .line 921
    .end local v2    # "_arg0":Landroid/view/InputEvent;
    .end local v3    # "_result":Landroid/view/VerifiedInputEvent;
    :pswitch_50
    sget-object v2, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputEvent;

    .line 923
    .restart local v2    # "_arg0":Landroid/view/InputEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 925
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 926
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    move-result v5

    .line 928
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 930
    goto/16 :goto_1

    .line 909
    .end local v2    # "_arg0":Landroid/view/InputEvent;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_51
    sget-object v2, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputEvent;

    .line 911
    .restart local v2    # "_arg0":Landroid/view/InputEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 912
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v4

    .line 914
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 916
    goto/16 :goto_1

    .line 900
    .end local v2    # "_arg0":Landroid/view/InputEvent;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 901
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 902
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    .line 903
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    goto/16 :goto_1

    .line 888
    .end local v2    # "_arg0":I
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 890
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 891
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->getKeyCodeForKeyLocation(II)I

    move-result v4

    .line 893
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    goto/16 :goto_1

    .line 866
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 868
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 870
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 872
    .local v4, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 873
    .local v5, "_arg3_length":I
    if-gez v5, :cond_1

    .line 874
    const/4 v6, 0x0

    .local v6, "_arg3":[Z
    goto :goto_0

    .line 876
    .end local v6    # "_arg3":[Z
    :cond_1
    new-array v6, v5, [Z

    .line 878
    .restart local v6    # "_arg3":[Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 879
    invoke-virtual {p0, v2, v3, v4, v6}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v7

    .line 880
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 882
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 883
    goto :goto_1

    .line 857
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[I
    .end local v5    # "_arg3_length":I
    .end local v6    # "_arg3":[Z
    .end local v7    # "_result":Z
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 858
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 859
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->disableInputDevice(I)V

    .line 860
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    goto :goto_1

    .line 848
    .end local v2    # "_arg0":I
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 849
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 850
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->enableInputDevice(I)V

    .line 851
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    goto :goto_1

    .line 838
    .end local v2    # "_arg0":I
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 839
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->isInputDeviceEnabled(I)Z

    move-result v3

    .line 841
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 843
    goto :goto_1

    .line 830
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_58
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v2

    .line 831
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 833
    goto :goto_1

    .line 821
    .end local v2    # "_result":[I
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 822
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 824
    .local v3, "_result":Landroid/view/InputDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 826
    nop

    .line 1740
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/InputDevice;
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
