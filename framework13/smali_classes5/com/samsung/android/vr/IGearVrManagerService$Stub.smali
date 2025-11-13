.class public abstract Lcom/samsung/android/vr/IGearVrManagerService$Stub;
.super Landroid/os/Binder;
.source "IGearVrManagerService.java"

# interfaces
.implements Lcom/samsung/android/vr/IGearVrManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vr/IGearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vr/IGearVrManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquireVrClocks:I = 0x3

.field static final blacklist TRANSACTION_enforceCallingPermission:I = 0xa

.field static final blacklist TRANSACTION_enforceCallingSelfPermission:I = 0xb

.field static final blacklist TRANSACTION_getDeviceConfig:I = 0x25

.field static final blacklist TRANSACTION_getDeviceType:I = 0x1f

.field static final blacklist TRANSACTION_getDisplayConfig:I = 0x26

.field static final blacklist TRANSACTION_getPowerLevelState:I = 0x8

.field static final blacklist TRANSACTION_getSystemOption:I = 0x6

.field static final blacklist TRANSACTION_getThreadId:I = 0x12

.field static final blacklist TRANSACTION_getUiModeConfig:I = 0x27

.field static final blacklist TRANSACTION_getVrRecentsMode:I = 0x1d

.field static final blacklist TRANSACTION_getVrSystemUiMode:I = 0x1e

.field static final blacklist TRANSACTION_is3rdPartyDevice:I = 0x29

.field static final blacklist TRANSACTION_isConnect:I = 0x31

.field static final blacklist TRANSACTION_isDock:I = 0x1

.field static final blacklist TRANSACTION_isHmtDevice:I = 0x28

.field static final blacklist TRANSACTION_isMount:I = 0x2

.field static final blacklist TRANSACTION_isMounted:I = 0x2f

.field static final blacklist TRANSACTION_isPersistentVrMode:I = 0x22

.field static final blacklist TRANSACTION_isPowerLimitingDevice:I = 0x2a

.field static final blacklist TRANSACTION_isVrMode:I = 0xd

.field static final blacklist TRANSACTION_notifyDeviceEventChanged:I = 0x20

.field static final blacklist TRANSACTION_notifyHmtEventChanged:I = 0x24

.field static final blacklist TRANSACTION_readSysNode:I = 0x13

.field static final blacklist TRANSACTION_registerARStateListener:I = 0x34

.field static final blacklist TRANSACTION_registerTaskStackListener:I = 0x2d

.field static final blacklist TRANSACTION_registerVrStateListener:I = 0x1b

.field static final blacklist TRANSACTION_registerXrStateListener:I = 0x2b

.field static final blacklist TRANSACTION_releaseVrClocks:I = 0x4

.field static final blacklist TRANSACTION_removeSysNode:I = 0x15

.field static final blacklist TRANSACTION_retrieveEnableFrequencyLevels:I = 0x7

.field static final blacklist TRANSACTION_setArDeveloperMode:I = 0x33

.field static final blacklist TRANSACTION_setConnect:I = 0x32

.field static final blacklist TRANSACTION_setHomeKeyBlocked:I = 0xe

.field static final blacklist TRANSACTION_setMount:I = 0x30

.field static final blacklist TRANSACTION_setOverlayRestriction:I = 0xf

.field static final blacklist TRANSACTION_setPermissions:I = 0x16

.field static final blacklist TRANSACTION_setPersistentVrMode:I = 0x21

.field static final blacklist TRANSACTION_setReadyForVrMode:I = 0x10

.field static final blacklist TRANSACTION_setSystemMouseControlType:I = 0x19

.field static final blacklist TRANSACTION_setSystemMouseShowMouseEnabled:I = 0x1a

.field static final blacklist TRANSACTION_setSystemOption:I = 0x5

.field static final blacklist TRANSACTION_setThreadAffinity:I = 0x11

.field static final blacklist TRANSACTION_setThreadGroup:I = 0x17

.field static final blacklist TRANSACTION_setThreadSchedFifo:I = 0x9

.field static final blacklist TRANSACTION_setThreadScheduler:I = 0x18

.field static final blacklist TRANSACTION_setVr2dSurface:I = 0x23

.field static final blacklist TRANSACTION_setVrMode:I = 0xc

.field static final blacklist TRANSACTION_unregisterARStateListener:I = 0x35

.field static final blacklist TRANSACTION_unregisterTaskStackListener:I = 0x2e

.field static final blacklist TRANSACTION_unregisterVrStateListener:I = 0x1c

.field static final blacklist TRANSACTION_unregisterXrStateListener:I = 0x2c

.field static final blacklist TRANSACTION_writeSysNode:I = 0x14


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 230
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 231
    const-string v0, "com.samsung.android.vr.IGearVrManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 239
    if-nez p0, :cond_0

    .line 240
    const/4 v0, 0x0

    return-object v0

    .line 242
    :cond_0
    const-string v0, "com.samsung.android.vr.IGearVrManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 243
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/vr/IGearVrManagerService;

    if-eqz v1, :cond_1

    .line 244
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/vr/IGearVrManagerService;

    return-object v1

    .line 246
    :cond_1
    new-instance v1, Lcom/samsung/android/vr/IGearVrManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 255
    packed-switch p0, :pswitch_data_0

    .line 471
    const/4 v0, 0x0

    return-object v0

    .line 467
    :pswitch_0
    const-string/jumbo v0, "unregisterARStateListener"

    return-object v0

    .line 463
    :pswitch_1
    const-string/jumbo v0, "registerARStateListener"

    return-object v0

    .line 459
    :pswitch_2
    const-string/jumbo v0, "setArDeveloperMode"

    return-object v0

    .line 455
    :pswitch_3
    const-string/jumbo v0, "setConnect"

    return-object v0

    .line 451
    :pswitch_4
    const-string v0, "isConnect"

    return-object v0

    .line 447
    :pswitch_5
    const-string/jumbo v0, "setMount"

    return-object v0

    .line 443
    :pswitch_6
    const-string v0, "isMounted"

    return-object v0

    .line 439
    :pswitch_7
    const-string/jumbo v0, "unregisterTaskStackListener"

    return-object v0

    .line 435
    :pswitch_8
    const-string/jumbo v0, "registerTaskStackListener"

    return-object v0

    .line 431
    :pswitch_9
    const-string/jumbo v0, "unregisterXrStateListener"

    return-object v0

    .line 427
    :pswitch_a
    const-string/jumbo v0, "registerXrStateListener"

    return-object v0

    .line 423
    :pswitch_b
    const-string v0, "isPowerLimitingDevice"

    return-object v0

    .line 419
    :pswitch_c
    const-string v0, "is3rdPartyDevice"

    return-object v0

    .line 415
    :pswitch_d
    const-string v0, "isHmtDevice"

    return-object v0

    .line 411
    :pswitch_e
    const-string v0, "getUiModeConfig"

    return-object v0

    .line 407
    :pswitch_f
    const-string v0, "getDisplayConfig"

    return-object v0

    .line 403
    :pswitch_10
    const-string v0, "getDeviceConfig"

    return-object v0

    .line 399
    :pswitch_11
    const-string v0, "notifyHmtEventChanged"

    return-object v0

    .line 395
    :pswitch_12
    const-string/jumbo v0, "setVr2dSurface"

    return-object v0

    .line 391
    :pswitch_13
    const-string v0, "isPersistentVrMode"

    return-object v0

    .line 387
    :pswitch_14
    const-string/jumbo v0, "setPersistentVrMode"

    return-object v0

    .line 383
    :pswitch_15
    const-string v0, "notifyDeviceEventChanged"

    return-object v0

    .line 379
    :pswitch_16
    const-string v0, "getDeviceType"

    return-object v0

    .line 375
    :pswitch_17
    const-string v0, "getVrSystemUiMode"

    return-object v0

    .line 371
    :pswitch_18
    const-string v0, "getVrRecentsMode"

    return-object v0

    .line 367
    :pswitch_19
    const-string/jumbo v0, "unregisterVrStateListener"

    return-object v0

    .line 363
    :pswitch_1a
    const-string/jumbo v0, "registerVrStateListener"

    return-object v0

    .line 359
    :pswitch_1b
    const-string/jumbo v0, "setSystemMouseShowMouseEnabled"

    return-object v0

    .line 355
    :pswitch_1c
    const-string/jumbo v0, "setSystemMouseControlType"

    return-object v0

    .line 351
    :pswitch_1d
    const-string/jumbo v0, "setThreadScheduler"

    return-object v0

    .line 347
    :pswitch_1e
    const-string/jumbo v0, "setThreadGroup"

    return-object v0

    .line 343
    :pswitch_1f
    const-string/jumbo v0, "setPermissions"

    return-object v0

    .line 339
    :pswitch_20
    const-string/jumbo v0, "removeSysNode"

    return-object v0

    .line 335
    :pswitch_21
    const-string/jumbo v0, "writeSysNode"

    return-object v0

    .line 331
    :pswitch_22
    const-string/jumbo v0, "readSysNode"

    return-object v0

    .line 327
    :pswitch_23
    const-string v0, "getThreadId"

    return-object v0

    .line 323
    :pswitch_24
    const-string/jumbo v0, "setThreadAffinity"

    return-object v0

    .line 319
    :pswitch_25
    const-string/jumbo v0, "setReadyForVrMode"

    return-object v0

    .line 315
    :pswitch_26
    const-string/jumbo v0, "setOverlayRestriction"

    return-object v0

    .line 311
    :pswitch_27
    const-string/jumbo v0, "setHomeKeyBlocked"

    return-object v0

    .line 307
    :pswitch_28
    const-string v0, "isVrMode"

    return-object v0

    .line 303
    :pswitch_29
    const-string/jumbo v0, "setVrMode"

    return-object v0

    .line 299
    :pswitch_2a
    const-string v0, "enforceCallingSelfPermission"

    return-object v0

    .line 295
    :pswitch_2b
    const-string v0, "enforceCallingPermission"

    return-object v0

    .line 291
    :pswitch_2c
    const-string/jumbo v0, "setThreadSchedFifo"

    return-object v0

    .line 287
    :pswitch_2d
    const-string v0, "getPowerLevelState"

    return-object v0

    .line 283
    :pswitch_2e
    const-string/jumbo v0, "retrieveEnableFrequencyLevels"

    return-object v0

    .line 279
    :pswitch_2f
    const-string v0, "getSystemOption"

    return-object v0

    .line 275
    :pswitch_30
    const-string/jumbo v0, "setSystemOption"

    return-object v0

    .line 271
    :pswitch_31
    const-string/jumbo v0, "releaseVrClocks"

    return-object v0

    .line 267
    :pswitch_32
    const-string v0, "acquireVrClocks"

    return-object v0

    .line 263
    :pswitch_33
    const-string v0, "isMount"

    return-object v0

    .line 259
    :pswitch_34
    const-string v0, "isDock"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 250
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2000
    const/16 v0, 0x34

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 478
    invoke-static {p1}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 482
    const-string v0, "com.samsung.android.vr.IGearVrManagerService"

    .line 483
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 484
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 494
    packed-switch p1, :pswitch_data_1

    .line 1010
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 490
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 491
    return v1

    .line 1002
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/vr/IARStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IARStateCallbacks;

    move-result-object v2

    .line 1003
    .local v2, "_arg0":Lcom/samsung/android/vr/IARStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1004
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->unregisterARStateListener(Lcom/samsung/android/vr/IARStateCallbacks;)V

    .line 1005
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    goto/16 :goto_0

    .line 993
    .end local v2    # "_arg0":Lcom/samsung/android/vr/IARStateCallbacks;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/vr/IARStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IARStateCallbacks;

    move-result-object v2

    .line 994
    .restart local v2    # "_arg0":Lcom/samsung/android/vr/IARStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->registerARStateListener(Lcom/samsung/android/vr/IARStateCallbacks;)V

    .line 996
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    goto/16 :goto_0

    .line 984
    .end local v2    # "_arg0":Lcom/samsung/android/vr/IARStateCallbacks;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 985
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 986
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setArDeveloperMode(Z)V

    .line 987
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    goto/16 :goto_0

    .line 975
    .end local v2    # "_arg0":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 976
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setConnect(Z)V

    .line 978
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    goto/16 :goto_0

    .line 967
    .end local v2    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->isConnect()Z

    move-result v2

    .line 968
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 970
    goto/16 :goto_0

    .line 959
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 960
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setMount(Z)V

    .line 962
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    goto/16 :goto_0

    .line 951
    .end local v2    # "_arg0":Z
    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->isMounted()Z

    move-result v2

    .line 952
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 954
    goto/16 :goto_0

    .line 943
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v2

    .line 944
    .local v2, "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 945
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    goto/16 :goto_0

    .line 934
    .end local v2    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v2

    .line 935
    .restart local v2    # "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 937
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    goto/16 :goto_0

    .line 925
    .end local v2    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/vr/IXrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IXrStateCallbacks;

    move-result-object v2

    .line 926
    .local v2, "_arg0":Lcom/samsung/android/vr/IXrStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->unregisterXrStateListener(Lcom/samsung/android/vr/IXrStateCallbacks;)V

    .line 928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    goto/16 :goto_0

    .line 916
    .end local v2    # "_arg0":Lcom/samsung/android/vr/IXrStateCallbacks;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/vr/IXrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IXrStateCallbacks;

    move-result-object v2

    .line 917
    .restart local v2    # "_arg0":Lcom/samsung/android/vr/IXrStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 918
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->registerXrStateListener(Lcom/samsung/android/vr/IXrStateCallbacks;)V

    .line 919
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    goto/16 :goto_0

    .line 906
    .end local v2    # "_arg0":Lcom/samsung/android/vr/IXrStateCallbacks;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 907
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 908
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->isPowerLimitingDevice(Ljava/lang/String;)Z

    move-result v3

    .line 909
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 911
    goto/16 :goto_0

    .line 896
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 897
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 898
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->is3rdPartyDevice(Ljava/lang/String;)Z

    move-result v3

    .line 899
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 901
    goto/16 :goto_0

    .line 886
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 887
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 888
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->isHmtDevice(Ljava/lang/String;)Z

    move-result v3

    .line 889
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 891
    goto/16 :goto_0

    .line 878
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_f
    invoke-virtual {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getUiModeConfig()I

    move-result v2

    .line 879
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    goto/16 :goto_0

    .line 871
    .end local v2    # "_result":I
    :pswitch_10
    invoke-virtual {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getDisplayConfig()I

    move-result v2

    .line 872
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 874
    goto/16 :goto_0

    .line 864
    .end local v2    # "_result":I
    :pswitch_11
    invoke-virtual {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getDeviceConfig()I

    move-result v2

    .line 865
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    goto/16 :goto_0

    .line 854
    .end local v2    # "_result":I
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 856
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 857
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->notifyHmtEventChanged(II)V

    .line 859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    goto/16 :goto_0

    .line 845
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_13
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 846
    .local v2, "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setVr2dSurface(Landroid/view/Surface;)V

    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    goto/16 :goto_0

    .line 837
    .end local v2    # "_arg0":Landroid/view/Surface;
    :pswitch_14
    invoke-virtual {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->isPersistentVrMode()Z

    move-result v2

    .line 838
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 840
    goto/16 :goto_0

    .line 829
    .end local v2    # "_result":Z
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 830
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 831
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setPersistentVrMode(Z)V

    .line 832
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    goto/16 :goto_0

    .line 820
    .end local v2    # "_arg0":Z
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 821
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->notifyDeviceEventChanged(I)V

    .line 823
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    goto/16 :goto_0

    .line 812
    .end local v2    # "_arg0":I
    :pswitch_17
    invoke-virtual {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getDeviceType()I

    move-result v2

    .line 813
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    goto/16 :goto_0

    .line 805
    .end local v2    # "_result":I
    :pswitch_18
    invoke-virtual {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getVrSystemUiMode()I

    move-result v2

    .line 806
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    goto/16 :goto_0

    .line 798
    .end local v2    # "_result":I
    :pswitch_19
    invoke-virtual {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getVrRecentsMode()I

    move-result v2

    .line 799
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    goto/16 :goto_0

    .line 790
    .end local v2    # "_result":I
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrStateCallbacks;

    move-result-object v2

    .line 791
    .local v2, "_arg0":Lcom/samsung/android/vr/IGearVrStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    .line 793
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    goto/16 :goto_0

    .line 781
    .end local v2    # "_arg0":Lcom/samsung/android/vr/IGearVrStateCallbacks;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrStateCallbacks;

    move-result-object v2

    .line 782
    .restart local v2    # "_arg0":Lcom/samsung/android/vr/IGearVrStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    .line 784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    goto/16 :goto_0

    .line 772
    .end local v2    # "_arg0":Lcom/samsung/android/vr/IGearVrStateCallbacks;
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 773
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 774
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setSystemMouseShowMouseEnabled(Z)V

    .line 775
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    goto/16 :goto_0

    .line 763
    .end local v2    # "_arg0":Z
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 764
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 765
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setSystemMouseControlType(I)V

    .line 766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    goto/16 :goto_0

    .line 749
    .end local v2    # "_arg0":I
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 751
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 753
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 754
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setThreadScheduler(III)Z

    move-result v5

    .line 756
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 758
    goto/16 :goto_0

    .line 737
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 739
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 740
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 741
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setThreadGroup(II)Z

    move-result v4

    .line 742
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 744
    goto/16 :goto_0

    .line 721
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 725
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 727
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 728
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setPermissions(Ljava/lang/String;III)I

    move-result v6

    .line 730
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    goto/16 :goto_0

    .line 711
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 712
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->removeSysNode(Ljava/lang/String;)Z

    move-result v3

    .line 714
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 716
    goto/16 :goto_0

    .line 697
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 699
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 701
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 702
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 704
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 706
    goto/16 :goto_0

    .line 687
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":Z
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 688
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->readSysNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 690
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 692
    goto/16 :goto_0

    .line 673
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 675
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 677
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 678
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 679
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getThreadId(ILjava/lang/String;I)[I

    move-result-object v5

    .line 680
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 682
    goto/16 :goto_0

    .line 661
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":[I
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 663
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 664
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 665
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setThreadAffinity(I[I)I

    move-result v4

    .line 666
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    goto/16 :goto_0

    .line 652
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":I
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 653
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setReadyForVrMode(Z)V

    .line 655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    goto/16 :goto_0

    .line 639
    .end local v2    # "_arg0":Z
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 641
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 644
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setOverlayRestriction(Z[Ljava/lang/String;I)V

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    goto/16 :goto_0

    .line 630
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 631
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setHomeKeyBlocked(Z)V

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    goto/16 :goto_0

    .line 622
    .end local v2    # "_arg0":Z
    :pswitch_29
    invoke-virtual {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->isVrMode()Z

    move-result v2

    .line 623
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 625
    goto/16 :goto_0

    .line 614
    .end local v2    # "_result":Z
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 615
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setVrMode(Z)V

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    goto/16 :goto_0

    .line 605
    .end local v2    # "_arg0":Z
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 606
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    goto/16 :goto_0

    .line 592
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 594
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 596
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->enforceCallingPermission(IILjava/lang/String;)V

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    goto/16 :goto_0

    .line 576
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 580
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 582
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 583
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result v6

    .line 585
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 587
    goto/16 :goto_0

    .line 568
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_2e
    invoke-virtual {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getPowerLevelState()I

    move-result v2

    .line 569
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    goto/16 :goto_0

    .line 561
    .end local v2    # "_result":I
    :pswitch_2f
    invoke-virtual {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->retrieveEnableFrequencyLevels()[I

    move-result-object v2

    .line 562
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 564
    goto :goto_0

    .line 552
    .end local v2    # "_result":[I
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {p0, v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 555
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    goto :goto_0

    .line 541
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 543
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    goto :goto_0

    .line 529
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 531
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 532
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v4

    .line 534
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 536
    goto :goto_0

    .line 513
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 515
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 517
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 519
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 520
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I

    move-result-object v6

    .line 522
    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 524
    goto :goto_0

    .line 505
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":[I
    :pswitch_34
    invoke-virtual {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->isMount()Z

    move-result v2

    .line 506
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 508
    goto :goto_0

    .line 498
    .end local v2    # "_result":Z
    :pswitch_35
    invoke-virtual {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->isDock()Z

    move-result v2

    .line 499
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 501
    nop

    .line 1013
    .end local v2    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
