.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final blacklist TRANSACTION_NetworkResetAtt:I = 0x37

.field static final blacklist TRANSACTION_SetWirelessChargeEnabled:I = 0x34

.field static final blacklist TRANSACTION_StartLedCover:I = 0x32

.field static final blacklist TRANSACTION_StopLedCover:I = 0x33

.field static final blacklist TRANSACTION_TransceiveLedCover:I = 0x31

.field static final greylist-max-o TRANSACTION_addNfcUnlockHandler:I = 0x1e

.field static final blacklist TRANSACTION_apcCommand:I = 0x3d

.field static final blacklist TRANSACTION_changeDiscoveryTech:I = 0x19

.field static final blacklist TRANSACTION_changeRoutingTable:I = 0x1a

.field static final blacklist TRANSACTION_deviceSupportsNfcSecure:I = 0x22

.field static final greylist-max-o TRANSACTION_disable:I = 0x7

.field static final greylist-max-o TRANSACTION_disableNdefPush:I = 0xa

.field static final greylist-max-o TRANSACTION_dispatch:I = 0x16

.field static final greylist-max-r TRANSACTION_enable:I = 0x8

.field static final blacklist TRANSACTION_enableDisableSeTestMode:I = 0x29

.field static final greylist-max-o TRANSACTION_enableNdefPush:I = 0x9

.field static final blacklist TRANSACTION_getBigDataNciLog:I = 0x3e

.field static final blacklist TRANSACTION_getDefaultRoutingDestination:I = 0x2b

.field static final blacklist TRANSACTION_getIdm:I = 0x36

.field static final greylist-max-o TRANSACTION_getNfcAdapterExtrasInterface:I = 0x4

.field static final greylist-max-o TRANSACTION_getNfcCardEmulationInterface:I = 0x2

.field static final greylist-max-o TRANSACTION_getNfcDtaInterface:I = 0x5

.field static final greylist-max-o TRANSACTION_getNfcFCardEmulationInterface:I = 0x3

.field static final greylist-max-o TRANSACTION_getNfcTagInterface:I = 0x1

.field static final blacklist TRANSACTION_getPhoneNumber:I = 0x41

.field static final blacklist TRANSACTION_getPreferredSimSlot:I = 0x39

.field static final blacklist TRANSACTION_getRwP2pState:I = 0x1b

.field static final blacklist TRANSACTION_getSeSupportedTech:I = 0x35

.field static final greylist-max-o TRANSACTION_getState:I = 0x6

.field static final greylist-max-o TRANSACTION_ignore:I = 0x15

.field static final greylist-max-o TRANSACTION_invokeBeam:I = 0x13

.field static final greylist-max-o TRANSACTION_invokeBeamInternal:I = 0x14

.field static final blacklist TRANSACTION_isControllerAlwaysOn:I = 0x25

.field static final blacklist TRANSACTION_isControllerAlwaysOnSupported:I = 0x26

.field static final blacklist TRANSACTION_isNFCAllowed:I = 0x3f

.field static final greylist-max-o TRANSACTION_isNdefPushEnabled:I = 0xb

.field static final blacklist TRANSACTION_isNfcSecureEnabled:I = 0x21

.field static final blacklist TRANSACTION_isSimLocked:I = 0xf

.field static final greylist-max-o TRANSACTION_pausePolling:I = 0xc

.field static final blacklist TRANSACTION_prepareSwitchedOffState:I = 0x1d

.field static final blacklist TRANSACTION_readEdc:I = 0x3a

.field static final blacklist TRANSACTION_readerDisable:I = 0x2c

.field static final blacklist TRANSACTION_readerEnable:I = 0x2d

.field static final blacklist TRANSACTION_registerControllerAlwaysOnListener:I = 0x27

.field static final greylist-max-o TRANSACTION_removeNfcUnlockHandler:I = 0x1f

.field static final greylist-max-o TRANSACTION_resumePolling:I = 0xd

.field static final greylist-max-o TRANSACTION_setAppCallback:I = 0x12

.field static final blacklist TRANSACTION_setControllerAlwaysOn:I = 0x24

.field static final blacklist TRANSACTION_setDefaultRoutingDestination:I = 0x2a

.field static final greylist-max-o TRANSACTION_setForegroundDispatch:I = 0x11

.field static final blacklist TRANSACTION_setNfcSecure:I = 0x23

.field static final greylist-max-o TRANSACTION_setP2pModes:I = 0x18

.field static final blacklist TRANSACTION_setPreferredSimSlot:I = 0x38

.field static final greylist-max-o TRANSACTION_setReaderMode:I = 0x17

.field static final blacklist TRANSACTION_setRwP2pMode:I = 0x1c

.field static final blacklist TRANSACTION_setSimLocked:I = 0x10

.field static final blacklist TRANSACTION_startApc:I = 0x3c

.field static final blacklist TRANSACTION_startCoverAuth:I = 0x2e

.field static final blacklist TRANSACTION_stopCoverAuth:I = 0x30

.field static final blacklist TRANSACTION_storeEnableHistory:I = 0xe

.field static final blacklist TRANSACTION_transceiveAuthData:I = 0x2f

.field static final blacklist TRANSACTION_unregisterControllerAlwaysOnListener:I = 0x28

.field static final greylist-max-o TRANSACTION_verifyNfcPermission:I = 0x20

.field static final blacklist TRANSACTION_writeEdc:I = 0x3b

.field static final blacklist TRANSACTION_writeFelicaLockState:I = 0x40


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 290
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 291
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 299
    if-nez p0, :cond_0

    .line 300
    const/4 v0, 0x0

    return-object v0

    .line 302
    :cond_0
    const-string v0, "android.nfc.INfcAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 303
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_1

    .line 304
    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcAdapter;

    return-object v1

    .line 306
    :cond_1
    new-instance v1, Landroid/nfc/INfcAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 315
    packed-switch p0, :pswitch_data_0

    .line 579
    const/4 v0, 0x0

    return-object v0

    .line 575
    :pswitch_0
    const-string v0, "getPhoneNumber"

    return-object v0

    .line 571
    :pswitch_1
    const-string/jumbo v0, "writeFelicaLockState"

    return-object v0

    .line 567
    :pswitch_2
    const-string v0, "isNFCAllowed"

    return-object v0

    .line 563
    :pswitch_3
    const-string v0, "getBigDataNciLog"

    return-object v0

    .line 559
    :pswitch_4
    const-string v0, "apcCommand"

    return-object v0

    .line 555
    :pswitch_5
    const-string/jumbo v0, "startApc"

    return-object v0

    .line 551
    :pswitch_6
    const-string/jumbo v0, "writeEdc"

    return-object v0

    .line 547
    :pswitch_7
    const-string v0, "readEdc"

    return-object v0

    .line 543
    :pswitch_8
    const-string v0, "getPreferredSimSlot"

    return-object v0

    .line 539
    :pswitch_9
    const-string/jumbo v0, "setPreferredSimSlot"

    return-object v0

    .line 535
    :pswitch_a
    const-string v0, "NetworkResetAtt"

    return-object v0

    .line 531
    :pswitch_b
    const-string v0, "getIdm"

    return-object v0

    .line 527
    :pswitch_c
    const-string v0, "getSeSupportedTech"

    return-object v0

    .line 523
    :pswitch_d
    const-string v0, "SetWirelessChargeEnabled"

    return-object v0

    .line 519
    :pswitch_e
    const-string v0, "StopLedCover"

    return-object v0

    .line 515
    :pswitch_f
    const-string v0, "StartLedCover"

    return-object v0

    .line 511
    :pswitch_10
    const-string v0, "TransceiveLedCover"

    return-object v0

    .line 507
    :pswitch_11
    const-string/jumbo v0, "stopCoverAuth"

    return-object v0

    .line 503
    :pswitch_12
    const-string/jumbo v0, "transceiveAuthData"

    return-object v0

    .line 499
    :pswitch_13
    const-string/jumbo v0, "startCoverAuth"

    return-object v0

    .line 495
    :pswitch_14
    const-string v0, "readerEnable"

    return-object v0

    .line 491
    :pswitch_15
    const-string v0, "readerDisable"

    return-object v0

    .line 487
    :pswitch_16
    const-string v0, "getDefaultRoutingDestination"

    return-object v0

    .line 483
    :pswitch_17
    const-string v0, "setDefaultRoutingDestination"

    return-object v0

    .line 479
    :pswitch_18
    const-string v0, "enableDisableSeTestMode"

    return-object v0

    .line 475
    :pswitch_19
    const-string/jumbo v0, "unregisterControllerAlwaysOnListener"

    return-object v0

    .line 471
    :pswitch_1a
    const-string v0, "registerControllerAlwaysOnListener"

    return-object v0

    .line 467
    :pswitch_1b
    const-string v0, "isControllerAlwaysOnSupported"

    return-object v0

    .line 463
    :pswitch_1c
    const-string v0, "isControllerAlwaysOn"

    return-object v0

    .line 459
    :pswitch_1d
    const-string v0, "setControllerAlwaysOn"

    return-object v0

    .line 455
    :pswitch_1e
    const-string/jumbo v0, "setNfcSecure"

    return-object v0

    .line 451
    :pswitch_1f
    const-string v0, "deviceSupportsNfcSecure"

    return-object v0

    .line 447
    :pswitch_20
    const-string v0, "isNfcSecureEnabled"

    return-object v0

    .line 443
    :pswitch_21
    const-string/jumbo v0, "verifyNfcPermission"

    return-object v0

    .line 439
    :pswitch_22
    const-string v0, "removeNfcUnlockHandler"

    return-object v0

    .line 435
    :pswitch_23
    const-string v0, "addNfcUnlockHandler"

    return-object v0

    .line 431
    :pswitch_24
    const-string v0, "prepareSwitchedOffState"

    return-object v0

    .line 427
    :pswitch_25
    const-string/jumbo v0, "setRwP2pMode"

    return-object v0

    .line 423
    :pswitch_26
    const-string v0, "getRwP2pState"

    return-object v0

    .line 419
    :pswitch_27
    const-string v0, "changeRoutingTable"

    return-object v0

    .line 415
    :pswitch_28
    const-string v0, "changeDiscoveryTech"

    return-object v0

    .line 411
    :pswitch_29
    const-string/jumbo v0, "setP2pModes"

    return-object v0

    .line 407
    :pswitch_2a
    const-string/jumbo v0, "setReaderMode"

    return-object v0

    .line 403
    :pswitch_2b
    const-string v0, "dispatch"

    return-object v0

    .line 399
    :pswitch_2c
    const-string v0, "ignore"

    return-object v0

    .line 395
    :pswitch_2d
    const-string v0, "invokeBeamInternal"

    return-object v0

    .line 391
    :pswitch_2e
    const-string v0, "invokeBeam"

    return-object v0

    .line 387
    :pswitch_2f
    const-string v0, "setAppCallback"

    return-object v0

    .line 383
    :pswitch_30
    const-string v0, "setForegroundDispatch"

    return-object v0

    .line 379
    :pswitch_31
    const-string/jumbo v0, "setSimLocked"

    return-object v0

    .line 375
    :pswitch_32
    const-string v0, "isSimLocked"

    return-object v0

    .line 371
    :pswitch_33
    const-string/jumbo v0, "storeEnableHistory"

    return-object v0

    .line 367
    :pswitch_34
    const-string v0, "resumePolling"

    return-object v0

    .line 363
    :pswitch_35
    const-string v0, "pausePolling"

    return-object v0

    .line 359
    :pswitch_36
    const-string v0, "isNdefPushEnabled"

    return-object v0

    .line 355
    :pswitch_37
    const-string v0, "disableNdefPush"

    return-object v0

    .line 351
    :pswitch_38
    const-string v0, "enableNdefPush"

    return-object v0

    .line 347
    :pswitch_39
    const-string v0, "enable"

    return-object v0

    .line 343
    :pswitch_3a
    const-string v0, "disable"

    return-object v0

    .line 339
    :pswitch_3b
    const-string v0, "getState"

    return-object v0

    .line 335
    :pswitch_3c
    const-string v0, "getNfcDtaInterface"

    return-object v0

    .line 331
    :pswitch_3d
    const-string v0, "getNfcAdapterExtrasInterface"

    return-object v0

    .line 327
    :pswitch_3e
    const-string v0, "getNfcFCardEmulationInterface"

    return-object v0

    .line 323
    :pswitch_3f
    const-string v0, "getNfcCardEmulationInterface"

    return-object v0

    .line 319
    :pswitch_40
    const-string v0, "getNfcTagInterface"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 310
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2373
    const/16 v0, 0x40

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 586
    invoke-static {p1}, Landroid/nfc/INfcAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 590
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.nfc.INfcAdapter"

    .line 591
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 592
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 602
    packed-switch v7, :pswitch_data_1

    .line 1170
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 598
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 599
    return v11

    .line 1163
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 1164
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1166
    goto/16 :goto_0

    .line 1150
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1152
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1154
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1155
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1156
    invoke-virtual {v6, v0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->writeFelicaLockState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1157
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1158
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1159
    goto/16 :goto_0

    .line 1140
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1141
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1142
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->isNFCAllowed(I)Z

    move-result v1

    .line 1143
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1145
    goto/16 :goto_0

    .line 1133
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getBigDataNciLog()V

    .line 1134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    goto/16 :goto_0

    .line 1122
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1124
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1125
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {v6, v0, v1}, Landroid/nfc/INfcAdapter$Stub;->apcCommand(I[B)[B

    move-result-object v2

    .line 1127
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1129
    goto/16 :goto_0

    .line 1114
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":[B
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->startApc()I

    move-result v0

    .line 1115
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    goto/16 :goto_0

    .line 1105
    .end local v0    # "_result":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1106
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->writeEdc(I)Z

    move-result v1

    .line 1108
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1110
    goto/16 :goto_0

    .line 1097
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->readEdc()I

    move-result v0

    .line 1098
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1100
    goto/16 :goto_0

    .line 1090
    .end local v0    # "_result":I
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getPreferredSimSlot()I

    move-result v0

    .line 1091
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1093
    goto/16 :goto_0

    .line 1081
    .end local v0    # "_result":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1082
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1083
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->setPreferredSimSlot(I)Z

    move-result v1

    .line 1084
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1086
    goto/16 :goto_0

    .line 1074
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->NetworkResetAtt()V

    .line 1075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    goto/16 :goto_0

    .line 1067
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getIdm()Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1070
    goto/16 :goto_0

    .line 1060
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getSeSupportedTech()I

    move-result v0

    .line 1061
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    goto/16 :goto_0

    .line 1051
    .end local v0    # "_result":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1052
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->SetWirelessChargeEnabled(Z)Z

    move-result v1

    .line 1054
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1056
    goto/16 :goto_0

    .line 1043
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->StopLedCover()Z

    move-result v0

    .line 1044
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1046
    goto/16 :goto_0

    .line 1036
    .end local v0    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->StartLedCover()[B

    move-result-object v0

    .line 1037
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1039
    goto/16 :goto_0

    .line 1027
    .end local v0    # "_result":[B
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1028
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->TransceiveLedCover([B)[B

    move-result-object v1

    .line 1030
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1032
    goto/16 :goto_0

    .line 1019
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":[B
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->stopCoverAuth()Z

    move-result v0

    .line 1020
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1022
    goto/16 :goto_0

    .line 1010
    .end local v0    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1011
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1012
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->transceiveAuthData([B)[B

    move-result-object v1

    .line 1013
    .restart local v1    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1015
    goto/16 :goto_0

    .line 1002
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":[B
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->startCoverAuth()[B

    move-result-object v0

    .line 1003
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1005
    goto/16 :goto_0

    .line 995
    .end local v0    # "_result":[B
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->readerEnable()Z

    move-result v0

    .line 996
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 998
    goto/16 :goto_0

    .line 988
    .end local v0    # "_result":Z
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->readerDisable()Z

    move-result v0

    .line 989
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 991
    goto/16 :goto_0

    .line 981
    .end local v0    # "_result":Z
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getDefaultRoutingDestination()Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 984
    goto/16 :goto_0

    .line 973
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->setDefaultRoutingDestination(Ljava/lang/String;)V

    .line 976
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    goto/16 :goto_0

    .line 962
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 964
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 965
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {v6, v0, v1}, Landroid/nfc/INfcAdapter$Stub;->enableDisableSeTestMode(Ljava/lang/String;Z)V

    .line 967
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    goto/16 :goto_0

    .line 953
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcControllerAlwaysOnListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcControllerAlwaysOnListener;

    move-result-object v0

    .line 954
    .local v0, "_arg0":Landroid/nfc/INfcControllerAlwaysOnListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->unregisterControllerAlwaysOnListener(Landroid/nfc/INfcControllerAlwaysOnListener;)V

    .line 956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    goto/16 :goto_0

    .line 944
    .end local v0    # "_arg0":Landroid/nfc/INfcControllerAlwaysOnListener;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcControllerAlwaysOnListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcControllerAlwaysOnListener;

    move-result-object v0

    .line 945
    .restart local v0    # "_arg0":Landroid/nfc/INfcControllerAlwaysOnListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 946
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->registerControllerAlwaysOnListener(Landroid/nfc/INfcControllerAlwaysOnListener;)V

    .line 947
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    goto/16 :goto_0

    .line 936
    .end local v0    # "_arg0":Landroid/nfc/INfcControllerAlwaysOnListener;
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->isControllerAlwaysOnSupported()Z

    move-result v0

    .line 937
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 939
    goto/16 :goto_0

    .line 929
    .end local v0    # "_result":Z
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->isControllerAlwaysOn()Z

    move-result v0

    .line 930
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 932
    goto/16 :goto_0

    .line 920
    .end local v0    # "_result":Z
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 921
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->setControllerAlwaysOn(Z)Z

    move-result v1

    .line 923
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 925
    goto/16 :goto_0

    .line 910
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 911
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->setNfcSecure(Z)Z

    move-result v1

    .line 913
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 915
    goto/16 :goto_0

    .line 902
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->deviceSupportsNfcSecure()Z

    move-result v0

    .line 903
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 905
    goto/16 :goto_0

    .line 895
    .end local v0    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->isNfcSecureEnabled()Z

    move-result v0

    .line 896
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 898
    goto/16 :goto_0

    .line 889
    .end local v0    # "_result":Z
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->verifyNfcPermission()V

    .line 890
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    goto/16 :goto_0

    .line 881
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v0

    .line 882
    .local v0, "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 883
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    .line 884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    goto/16 :goto_0

    .line 870
    .end local v0    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v0

    .line 872
    .restart local v0    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 873
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    invoke-virtual {v6, v0, v1}, Landroid/nfc/INfcAdapter$Stub;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    .line 875
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    goto/16 :goto_0

    .line 863
    .end local v0    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    .end local v1    # "_arg1":[I
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->prepareSwitchedOffState()V

    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    goto/16 :goto_0

    .line 854
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 855
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->setRwP2pMode(Z)Z

    move-result v1

    .line 857
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 859
    goto/16 :goto_0

    .line 846
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getRwP2pState()I

    move-result v0

    .line 847
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    goto/16 :goto_0

    .line 830
    .end local v0    # "_result":I
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 832
    .local v12, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 834
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 836
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 838
    .local v15, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v16

    .line 839
    .local v16, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/nfc/INfcAdapter$Stub;->changeRoutingTable(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 841
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    goto/16 :goto_0

    .line 817
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 819
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 821
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 822
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {v6, v0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->changeDiscoveryTech(Landroid/os/IBinder;II)V

    .line 824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    goto/16 :goto_0

    .line 806
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 808
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 809
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {v6, v0, v1}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    .line 811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    goto/16 :goto_0

    .line 791
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 793
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v1

    .line 795
    .local v1, "_arg1":Landroid/nfc/IAppCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 797
    .restart local v2    # "_arg2":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 798
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    .line 800
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    goto/16 :goto_0

    .line 782
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/nfc/IAppCallback;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_2c
    sget-object v0, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 783
    .local v0, "_arg0":Landroid/nfc/Tag;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 784
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    goto/16 :goto_0

    .line 768
    .end local v0    # "_arg0":Landroid/nfc/Tag;
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 770
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 772
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/ITagRemovedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/ITagRemovedCallback;

    move-result-object v2

    .line 773
    .local v2, "_arg2":Landroid/nfc/ITagRemovedCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 774
    invoke-virtual {v6, v0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->ignore(IILandroid/nfc/ITagRemovedCallback;)Z

    move-result v3

    .line 775
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 777
    goto/16 :goto_0

    .line 760
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/nfc/ITagRemovedCallback;
    .end local v3    # "_result":Z
    :pswitch_2e
    sget-object v0, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/BeamShareData;

    .line 761
    .local v0, "_arg0":Landroid/nfc/BeamShareData;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V

    .line 763
    goto/16 :goto_0

    .line 754
    .end local v0    # "_arg0":Landroid/nfc/BeamShareData;
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->invokeBeam()V

    .line 755
    goto/16 :goto_0

    .line 746
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v0

    .line 747
    .local v0, "_arg0":Landroid/nfc/IAppCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    .line 749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    goto/16 :goto_0

    .line 733
    .end local v0    # "_arg0":Landroid/nfc/IAppCallback;
    :pswitch_31
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 735
    .local v0, "_arg0":Landroid/app/PendingIntent;
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 737
    .local v1, "_arg1":[Landroid/content/IntentFilter;
    sget-object v2, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/TechListParcel;

    .line 738
    .local v2, "_arg2":Landroid/nfc/TechListParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-virtual {v6, v0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    goto/16 :goto_0

    .line 724
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":[Landroid/content/IntentFilter;
    .end local v2    # "_arg2":Landroid/nfc/TechListParcel;
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 725
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->setSimLocked(Z)V

    .line 727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    goto/16 :goto_0

    .line 716
    .end local v0    # "_arg0":Z
    :pswitch_33
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->isSimLocked()Z

    move-result v0

    .line 717
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 719
    goto/16 :goto_0

    .line 708
    .end local v0    # "_result":Z
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->storeEnableHistory([Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    goto/16 :goto_0

    .line 701
    .end local v0    # "_arg0":[Ljava/lang/String;
    :pswitch_35
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->resumePolling()V

    .line 702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    goto/16 :goto_0

    .line 693
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 694
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 695
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->pausePolling(I)V

    .line 696
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    goto/16 :goto_0

    .line 685
    .end local v0    # "_arg0":I
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v0

    .line 686
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 688
    goto/16 :goto_0

    .line 678
    .end local v0    # "_result":Z
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v0

    .line 679
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 681
    goto/16 :goto_0

    .line 671
    .end local v0    # "_result":Z
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v0

    .line 672
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 674
    goto :goto_0

    .line 664
    .end local v0    # "_result":Z
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v0

    .line 665
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 667
    goto :goto_0

    .line 655
    .end local v0    # "_result":Z
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 656
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    move-result v1

    .line 658
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 660
    goto :goto_0

    .line 647
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_3c
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v0

    .line 648
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    goto :goto_0

    .line 638
    .end local v0    # "_result":I
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->getNfcDtaInterface(Ljava/lang/String;)Landroid/nfc/INfcDta;

    move-result-object v1

    .line 641
    .local v1, "_result":Landroid/nfc/INfcDta;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 643
    goto :goto_0

    .line 628
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/nfc/INfcDta;
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {v6, v0}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v1

    .line 631
    .local v1, "_result":Landroid/nfc/INfcAdapterExtras;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 633
    goto :goto_0

    .line 620
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/nfc/INfcAdapterExtras;
    :pswitch_3f
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v0

    .line 621
    .local v0, "_result":Landroid/nfc/INfcFCardEmulation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 623
    goto :goto_0

    .line 613
    .end local v0    # "_result":Landroid/nfc/INfcFCardEmulation;
    :pswitch_40
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v0

    .line 614
    .local v0, "_result":Landroid/nfc/INfcCardEmulation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 616
    goto :goto_0

    .line 606
    .end local v0    # "_result":Landroid/nfc/INfcCardEmulation;
    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v0

    .line 607
    .local v0, "_result":Landroid/nfc/INfcTag;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 609
    nop

    .line 1173
    .end local v0    # "_result":Landroid/nfc/INfcTag;
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
