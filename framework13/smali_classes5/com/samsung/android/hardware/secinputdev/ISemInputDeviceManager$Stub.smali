.class public abstract Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;
.super Landroid/os/Binder;
.source "ISemInputDeviceManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearHwParam:I = 0x27

.field static final blacklist TRANSACTION_enableMotion:I = 0x8

.field static final blacklist TRANSACTION_getAodActiveArea:I = 0x2d

.field static final blacklist TRANSACTION_getFodInfo:I = 0x2b

.field static final blacklist TRANSACTION_getFodPosition:I = 0x2c

.field static final blacklist TRANSACTION_getHwParam:I = 0x2f

.field static final blacklist TRANSACTION_getKeyPressStateAll:I = 0x1

.field static final blacklist TRANSACTION_getLpDump:I = 0x2e

.field static final blacklist TRANSACTION_getMotionControl:I = 0xb

.field static final blacklist TRANSACTION_getProxPowerOff:I = 0x2a

.field static final blacklist TRANSACTION_getScrubPosition:I = 0x29

.field static final blacklist TRANSACTION_getSpenPosition:I = 0x38

.field static final blacklist TRANSACTION_getSupportDevice:I = 0xd

.field static final blacklist TRANSACTION_getTspSupportFeature:I = 0x28

.field static final blacklist TRANSACTION_isEnableMotion:I = 0x9

.field static final blacklist TRANSACTION_isKeyPressedByKeycode:I = 0x2

.field static final blacklist TRANSACTION_isSupportMotion:I = 0x7

.field static final blacklist TRANSACTION_registerCallback:I = 0x3

.field static final blacklist TRANSACTION_registerListener:I = 0x5

.field static final blacklist TRANSACTION_runEmergency:I = 0xe

.field static final blacklist TRANSACTION_runEmergencyCurrentTsp:I = 0xf

.field static final blacklist TRANSACTION_sendRawdataTsp:I = 0xc

.field static final blacklist TRANSACTION_setAodEnable:I = 0x1a

.field static final blacklist TRANSACTION_setAodRect:I = 0x19

.field static final blacklist TRANSACTION_setBrushEnable:I = 0x18

.field static final blacklist TRANSACTION_setCoverMode:I = 0x14

.field static final blacklist TRANSACTION_setEarDetectEnable:I = 0x20

.field static final blacklist TRANSACTION_setFodEnable:I = 0x1b

.field static final blacklist TRANSACTION_setFodIconVisible:I = 0x1c

.field static final blacklist TRANSACTION_setFodLpMode:I = 0x1e

.field static final blacklist TRANSACTION_setFodRect:I = 0x1d

.field static final blacklist TRANSACTION_setFpIntControl:I = 0x22

.field static final blacklist TRANSACTION_setGripData:I = 0x11

.field static final blacklist TRANSACTION_setLowSensitivityModeEnable:I = 0x25

.field static final blacklist TRANSACTION_setMotionControl:I = 0xa

.field static final blacklist TRANSACTION_setNoteMode:I = 0x13

.field static final blacklist TRANSACTION_setPocketModeEnable:I = 0x24

.field static final blacklist TRANSACTION_setProxPowerOff:I = 0x26

.field static final blacklist TRANSACTION_setSingletapEnable:I = 0x1f

.field static final blacklist TRANSACTION_setSipMode:I = 0x12

.field static final blacklist TRANSACTION_setSpayEnable:I = 0x16

.field static final blacklist TRANSACTION_setSpenAodEnable:I = 0x31

.field static final blacklist TRANSACTION_setSpenBleChargeMode:I = 0x34

.field static final blacklist TRANSACTION_setSpenCoverType:I = 0x32

.field static final blacklist TRANSACTION_setSpenEnabled:I = 0x30

.field static final blacklist TRANSACTION_setSpenLowCurrentMode:I = 0x36

.field static final blacklist TRANSACTION_setSpenPdctLowSensitivityEnable:I = 0x35

.field static final blacklist TRANSACTION_setSpenPower:I = 0x33

.field static final blacklist TRANSACTION_setSpenPowerSavingMode:I = 0x37

.field static final blacklist TRANSACTION_setStylusEnable:I = 0x17

.field static final blacklist TRANSACTION_setSyncChanged:I = 0x23

.field static final blacklist TRANSACTION_setTemperature:I = 0x15

.field static final blacklist TRANSACTION_setTouchableArea:I = 0x21

.field static final blacklist TRANSACTION_setTspEnabled:I = 0x10

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x4

.field static final blacklist TRANSACTION_unregisterListener:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 252
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 253
    const-string v0, "com.samsung.android.hardware.secinputdev.ISemInputDeviceManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 261
    if-nez p0, :cond_0

    .line 262
    const/4 v0, 0x0

    return-object v0

    .line 264
    :cond_0
    const-string v0, "com.samsung.android.hardware.secinputdev.ISemInputDeviceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 265
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    if-eqz v1, :cond_1

    .line 266
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    return-object v1

    .line 268
    :cond_1
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 277
    packed-switch p0, :pswitch_data_0

    .line 505
    const/4 v0, 0x0

    return-object v0

    .line 501
    :pswitch_0
    const-string v0, "getSpenPosition"

    return-object v0

    .line 497
    :pswitch_1
    const-string/jumbo v0, "setSpenPowerSavingMode"

    return-object v0

    .line 493
    :pswitch_2
    const-string/jumbo v0, "setSpenLowCurrentMode"

    return-object v0

    .line 489
    :pswitch_3
    const-string/jumbo v0, "setSpenPdctLowSensitivityEnable"

    return-object v0

    .line 485
    :pswitch_4
    const-string/jumbo v0, "setSpenBleChargeMode"

    return-object v0

    .line 481
    :pswitch_5
    const-string/jumbo v0, "setSpenPower"

    return-object v0

    .line 477
    :pswitch_6
    const-string/jumbo v0, "setSpenCoverType"

    return-object v0

    .line 473
    :pswitch_7
    const-string/jumbo v0, "setSpenAodEnable"

    return-object v0

    .line 469
    :pswitch_8
    const-string/jumbo v0, "setSpenEnabled"

    return-object v0

    .line 465
    :pswitch_9
    const-string v0, "getHwParam"

    return-object v0

    .line 461
    :pswitch_a
    const-string v0, "getLpDump"

    return-object v0

    .line 457
    :pswitch_b
    const-string v0, "getAodActiveArea"

    return-object v0

    .line 453
    :pswitch_c
    const-string v0, "getFodPosition"

    return-object v0

    .line 449
    :pswitch_d
    const-string v0, "getFodInfo"

    return-object v0

    .line 445
    :pswitch_e
    const-string v0, "getProxPowerOff"

    return-object v0

    .line 441
    :pswitch_f
    const-string v0, "getScrubPosition"

    return-object v0

    .line 437
    :pswitch_10
    const-string v0, "getTspSupportFeature"

    return-object v0

    .line 433
    :pswitch_11
    const-string v0, "clearHwParam"

    return-object v0

    .line 429
    :pswitch_12
    const-string/jumbo v0, "setProxPowerOff"

    return-object v0

    .line 425
    :pswitch_13
    const-string/jumbo v0, "setLowSensitivityModeEnable"

    return-object v0

    .line 421
    :pswitch_14
    const-string/jumbo v0, "setPocketModeEnable"

    return-object v0

    .line 417
    :pswitch_15
    const-string/jumbo v0, "setSyncChanged"

    return-object v0

    .line 413
    :pswitch_16
    const-string/jumbo v0, "setFpIntControl"

    return-object v0

    .line 409
    :pswitch_17
    const-string/jumbo v0, "setTouchableArea"

    return-object v0

    .line 405
    :pswitch_18
    const-string/jumbo v0, "setEarDetectEnable"

    return-object v0

    .line 401
    :pswitch_19
    const-string/jumbo v0, "setSingletapEnable"

    return-object v0

    .line 397
    :pswitch_1a
    const-string/jumbo v0, "setFodLpMode"

    return-object v0

    .line 393
    :pswitch_1b
    const-string/jumbo v0, "setFodRect"

    return-object v0

    .line 389
    :pswitch_1c
    const-string/jumbo v0, "setFodIconVisible"

    return-object v0

    .line 385
    :pswitch_1d
    const-string/jumbo v0, "setFodEnable"

    return-object v0

    .line 381
    :pswitch_1e
    const-string/jumbo v0, "setAodEnable"

    return-object v0

    .line 377
    :pswitch_1f
    const-string/jumbo v0, "setAodRect"

    return-object v0

    .line 373
    :pswitch_20
    const-string/jumbo v0, "setBrushEnable"

    return-object v0

    .line 369
    :pswitch_21
    const-string/jumbo v0, "setStylusEnable"

    return-object v0

    .line 365
    :pswitch_22
    const-string/jumbo v0, "setSpayEnable"

    return-object v0

    .line 361
    :pswitch_23
    const-string/jumbo v0, "setTemperature"

    return-object v0

    .line 357
    :pswitch_24
    const-string/jumbo v0, "setCoverMode"

    return-object v0

    .line 353
    :pswitch_25
    const-string/jumbo v0, "setNoteMode"

    return-object v0

    .line 349
    :pswitch_26
    const-string/jumbo v0, "setSipMode"

    return-object v0

    .line 345
    :pswitch_27
    const-string/jumbo v0, "setGripData"

    return-object v0

    .line 341
    :pswitch_28
    const-string/jumbo v0, "setTspEnabled"

    return-object v0

    .line 337
    :pswitch_29
    const-string/jumbo v0, "runEmergencyCurrentTsp"

    return-object v0

    .line 333
    :pswitch_2a
    const-string/jumbo v0, "runEmergency"

    return-object v0

    .line 329
    :pswitch_2b
    const-string v0, "getSupportDevice"

    return-object v0

    .line 325
    :pswitch_2c
    const-string/jumbo v0, "sendRawdataTsp"

    return-object v0

    .line 321
    :pswitch_2d
    const-string v0, "getMotionControl"

    return-object v0

    .line 317
    :pswitch_2e
    const-string/jumbo v0, "setMotionControl"

    return-object v0

    .line 313
    :pswitch_2f
    const-string v0, "isEnableMotion"

    return-object v0

    .line 309
    :pswitch_30
    const-string v0, "enableMotion"

    return-object v0

    .line 305
    :pswitch_31
    const-string v0, "isSupportMotion"

    return-object v0

    .line 301
    :pswitch_32
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 297
    :pswitch_33
    const-string/jumbo v0, "registerListener"

    return-object v0

    .line 293
    :pswitch_34
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 289
    :pswitch_35
    const-string/jumbo v0, "registerCallback"

    return-object v0

    .line 285
    :pswitch_36
    const-string v0, "isKeyPressedByKeycode"

    return-object v0

    .line 281
    :pswitch_37
    const-string v0, "getKeyPressStateAll"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 272
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2257
    const/16 v0, 0x37

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 512
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    const-string v0, "com.samsung.android.hardware.secinputdev.ISemInputDeviceManager"

    .line 517
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 518
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 528
    packed-switch p1, :pswitch_data_1

    .line 1138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 524
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    return v1

    .line 1131
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getSpenPosition()Ljava/lang/String;

    move-result-object v2

    .line 1132
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1134
    goto/16 :goto_0

    .line 1122
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1123
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1124
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenPowerSavingMode(I)I

    move-result v3

    .line 1125
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1127
    goto/16 :goto_0

    .line 1112
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1113
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1114
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenLowCurrentMode(I)I

    move-result v3

    .line 1115
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    goto/16 :goto_0

    .line 1102
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1103
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1104
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenPdctLowSensitivityEnable(I)I

    move-result v3

    .line 1105
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1107
    goto/16 :goto_0

    .line 1092
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1093
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1094
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenBleChargeMode(I)I

    move-result v3

    .line 1095
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1097
    goto/16 :goto_0

    .line 1082
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1083
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenPower(I)I

    move-result v3

    .line 1085
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1087
    goto/16 :goto_0

    .line 1072
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1073
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenCoverType(I)I

    move-result v3

    .line 1075
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1077
    goto/16 :goto_0

    .line 1062
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1063
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1064
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenAodEnable(I)I

    move-result v3

    .line 1065
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    goto/16 :goto_0

    .line 1048
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1050
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1052
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1053
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenEnabled(IIZ)I

    move-result v5

    .line 1055
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    goto/16 :goto_0

    .line 1038
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1039
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1040
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getHwParam(I)Ljava/lang/String;

    move-result-object v3

    .line 1041
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1043
    goto/16 :goto_0

    .line 1028
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1029
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1030
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getLpDump(I)Ljava/lang/String;

    move-result-object v3

    .line 1031
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1033
    goto/16 :goto_0

    .line 1018
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1019
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getAodActiveArea(I)Ljava/lang/String;

    move-result-object v3

    .line 1021
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1023
    goto/16 :goto_0

    .line 1008
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1009
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1010
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getFodPosition(I)Ljava/lang/String;

    move-result-object v3

    .line 1011
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1013
    goto/16 :goto_0

    .line 998
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 999
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1000
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getFodInfo(I)Ljava/lang/String;

    move-result-object v3

    .line 1001
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1003
    goto/16 :goto_0

    .line 988
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 989
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getProxPowerOff(I)Ljava/lang/String;

    move-result-object v3

    .line 991
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 993
    goto/16 :goto_0

    .line 978
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 979
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 980
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getScrubPosition(I)Ljava/lang/String;

    move-result-object v3

    .line 981
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 983
    goto/16 :goto_0

    .line 968
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 969
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getTspSupportFeature(I)I

    move-result v3

    .line 971
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 973
    goto/16 :goto_0

    .line 958
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 959
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 960
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->clearHwParam(I)I

    move-result v3

    .line 961
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    goto/16 :goto_0

    .line 946
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 948
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 949
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 950
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setProxPowerOff(II)I

    move-result v4

    .line 951
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    goto/16 :goto_0

    .line 936
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 937
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 938
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setLowSensitivityModeEnable(I)I

    move-result v3

    .line 939
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    goto/16 :goto_0

    .line 926
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 927
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 928
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setPocketModeEnable(I)I

    move-result v3

    .line 929
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    goto/16 :goto_0

    .line 916
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 917
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 918
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSyncChanged(I)I

    move-result v3

    .line 919
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    goto/16 :goto_0

    .line 906
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 907
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 908
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setFpIntControl(I)I

    move-result v3

    .line 909
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    goto/16 :goto_0

    .line 896
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 897
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 898
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setTouchableArea(I)I

    move-result v3

    .line 899
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    goto/16 :goto_0

    .line 886
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 887
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 888
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setEarDetectEnable(I)I

    move-result v3

    .line 889
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    goto/16 :goto_0

    .line 876
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 877
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSingletapEnable(I)I

    move-result v3

    .line 879
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    goto/16 :goto_0

    .line 866
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 867
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 868
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setFodLpMode(I)I

    move-result v3

    .line 869
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    goto/16 :goto_0

    .line 850
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 852
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 854
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 856
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 857
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setFodRect(IIII)I

    move-result v6

    .line 859
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    goto/16 :goto_0

    .line 840
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 841
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setFodIconVisible(I)I

    move-result v3

    .line 843
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 845
    goto/16 :goto_0

    .line 826
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 828
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 830
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 831
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setFodEnable(III)I

    move-result v5

    .line 833
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    goto/16 :goto_0

    .line 816
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 817
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setAodEnable(I)I

    move-result v3

    .line 819
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    goto/16 :goto_0

    .line 800
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 802
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 804
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 806
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 807
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 808
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setAodRect(IIII)I

    move-result v6

    .line 809
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    goto/16 :goto_0

    .line 790
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 791
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setBrushEnable(I)I

    move-result v3

    .line 793
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    goto/16 :goto_0

    .line 780
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 781
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setStylusEnable(I)I

    move-result v3

    .line 783
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    goto/16 :goto_0

    .line 770
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 771
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpayEnable(I)I

    move-result v3

    .line 773
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    goto/16 :goto_0

    .line 760
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 761
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setTemperature(I)I

    move-result v3

    .line 763
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    goto/16 :goto_0

    .line 748
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 750
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 751
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setCoverMode(II)I

    move-result v4

    .line 753
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    goto/16 :goto_0

    .line 738
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 739
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setNoteMode(I)I

    move-result v3

    .line 741
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    goto/16 :goto_0

    .line 728
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 729
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSipMode(I)I

    move-result v3

    .line 731
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    goto/16 :goto_0

    .line 718
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 720
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setGripData(Ljava/lang/String;)I

    move-result v3

    .line 721
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    goto/16 :goto_0

    .line 704
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 706
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 708
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 709
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setTspEnabled(IIZ)I

    move-result v5

    .line 711
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    goto/16 :goto_0

    .line 694
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 695
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->runEmergencyCurrentTsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 697
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 699
    goto/16 :goto_0

    .line 682
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 684
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 685
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->runEmergency(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 687
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 689
    goto/16 :goto_0

    .line 672
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 673
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 674
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getSupportDevice(I)I

    move-result v3

    .line 675
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    goto/16 :goto_0

    .line 660
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 662
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 663
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->sendRawdataTsp(I[I)I

    move-result v4

    .line 665
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    goto/16 :goto_0

    .line 648
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":I
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 651
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getMotionControl(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 653
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    goto/16 :goto_0

    .line 634
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 636
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 638
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 639
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setMotionControl(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 641
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    goto/16 :goto_0

    .line 622
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 624
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 625
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 627
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    goto/16 :goto_0

    .line 608
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 610
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 612
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 613
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->enableMotion(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v5

    .line 615
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    goto/16 :goto_0

    .line 598
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 599
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->isSupportMotion(Ljava/lang/String;)Z

    move-result v3

    .line 601
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 603
    goto/16 :goto_0

    .line 584
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 586
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 588
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 589
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v5

    .line 591
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 593
    goto :goto_0

    .line 570
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 572
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 574
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 575
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v5

    .line 577
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 579
    goto :goto_0

    .line 560
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    move-result-object v2

    .line 561
    .local v2, "_arg0":Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->unregisterCallback(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;)Z

    move-result v3

    .line 563
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 565
    goto :goto_0

    .line 550
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    .end local v3    # "_result":Z
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    move-result-object v2

    .line 551
    .restart local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->registerCallback(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;)Z

    move-result v3

    .line 553
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 555
    goto :goto_0

    .line 540
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    .end local v3    # "_result":Z
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 541
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->isKeyPressedByKeycode(I)Z

    move-result v3

    .line 543
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 545
    goto :goto_0

    .line 532
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_38
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getKeyPressStateAll()Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    nop

    .line 1141
    .end local v2    # "_result":Ljava/lang/String;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
