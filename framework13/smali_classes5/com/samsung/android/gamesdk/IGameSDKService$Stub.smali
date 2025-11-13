.class public abstract Lcom/samsung/android/gamesdk/IGameSDKService$Stub;
.super Landroid/os/Binder;
.source "IGameSDKService.java"

# interfaces
.implements Lcom/samsung/android/gamesdk/IGameSDKService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/IGameSDKService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/IGameSDKService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final greylist TRANSACTION_finalGameSDK:I = 0x1d

.field static final greylist TRANSACTION_getCPULevelMax:I = 0x7

.field static final greylist TRANSACTION_getClusterInfo:I = 0x21

.field static final greylist TRANSACTION_getCpuJTLevel:I = 0xc

.field static final greylist TRANSACTION_getCpuLevelCurrent:I = 0x17

.field static final greylist TRANSACTION_getCpuLoad:I = 0x15

.field static final greylist TRANSACTION_getCurrentRefreshRate:I = 0x12

.field static final greylist TRANSACTION_getFrameworkFPS:I = 0x13

.field static final greylist TRANSACTION_getGPULevelMax:I = 0x8

.field static final greylist TRANSACTION_getGpuFrameTime:I = 0x1a

.field static final greylist TRANSACTION_getGpuJTLevel:I = 0xd

.field static final greylist TRANSACTION_getGpuLevelCurrent:I = 0x18

.field static final greylist TRANSACTION_getGpuLoad:I = 0x16

.field static final greylist TRANSACTION_getHighPrecisionSkinTempLevel:I = 0x9

.field static final greylist TRANSACTION_getPrevFrameworkFPS:I = 0x14

.field static final greylist TRANSACTION_getSkinTempLevel:I = 0x6

.field static final greylist TRANSACTION_getSupportedRefreshRates:I = 0xf

.field static final greylist TRANSACTION_getTempLevel:I = 0x5

.field static final greylist TRANSACTION_getVersion:I = 0x4

.field static final greylist TRANSACTION_initGameSDK:I = 0x1

.field static final greylist TRANSACTION_initGameSDKWithJsonData:I = 0x3

.field static final greylist TRANSACTION_initGameSDKWithVersion:I = 0x2

.field static final greylist TRANSACTION_isGameSDKVrrSupported:I = 0xe

.field static final greylist TRANSACTION_isPMModeEnable:I = 0x19

.field static final greylist TRANSACTION_isPackageInWhiteList:I = 0x1e

.field static final greylist TRANSACTION_registerDebugBridgePid:I = 0x22

.field static final greylist TRANSACTION_resetRefreshRate:I = 0x11

.field static final greylist TRANSACTION_setCpuBoostMode:I = 0x1f

.field static final greylist TRANSACTION_setDisableTMLevel:I = 0x1b

.field static final greylist TRANSACTION_setFreqLevels:I = 0x1c

.field static final greylist TRANSACTION_setGameSDKListener:I = 0xb

.field static final greylist TRANSACTION_setGameSDKStateListener:I = 0x23

.field static final greylist TRANSACTION_setGpuBoostMode:I = 0x20

.field static final greylist TRANSACTION_setLevelWithScene:I = 0xa

.field static final greylist TRANSACTION_setRefreshRate:I = 0x10


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 161
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 162
    const-string v0, "com.samsung.android.gamesdk.IGameSDKService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gamesdk/IGameSDKService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 170
    if-nez p0, :cond_0

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 173
    :cond_0
    const-string v0, "com.samsung.android.gamesdk.IGameSDKService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 174
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/gamesdk/IGameSDKService;

    if-eqz v1, :cond_1

    .line 175
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/gamesdk/IGameSDKService;

    return-object v1

    .line 177
    :cond_1
    new-instance v1, Lcom/samsung/android/gamesdk/IGameSDKService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static greylist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 186
    packed-switch p0, :pswitch_data_0

    .line 330
    const/4 v0, 0x0

    return-object v0

    .line 326
    :pswitch_0
    const-string/jumbo v0, "setGameSDKStateListener"

    return-object v0

    .line 322
    :pswitch_1
    const-string/jumbo v0, "registerDebugBridgePid"

    return-object v0

    .line 318
    :pswitch_2
    const-string v0, "getClusterInfo"

    return-object v0

    .line 314
    :pswitch_3
    const-string/jumbo v0, "setGpuBoostMode"

    return-object v0

    .line 310
    :pswitch_4
    const-string/jumbo v0, "setCpuBoostMode"

    return-object v0

    .line 306
    :pswitch_5
    const-string v0, "isPackageInWhiteList"

    return-object v0

    .line 302
    :pswitch_6
    const-string v0, "finalGameSDK"

    return-object v0

    .line 298
    :pswitch_7
    const-string/jumbo v0, "setFreqLevels"

    return-object v0

    .line 294
    :pswitch_8
    const-string/jumbo v0, "setDisableTMLevel"

    return-object v0

    .line 290
    :pswitch_9
    const-string v0, "getGpuFrameTime"

    return-object v0

    .line 286
    :pswitch_a
    const-string v0, "isPMModeEnable"

    return-object v0

    .line 282
    :pswitch_b
    const-string v0, "getGpuLevelCurrent"

    return-object v0

    .line 278
    :pswitch_c
    const-string v0, "getCpuLevelCurrent"

    return-object v0

    .line 274
    :pswitch_d
    const-string v0, "getGpuLoad"

    return-object v0

    .line 270
    :pswitch_e
    const-string v0, "getCpuLoad"

    return-object v0

    .line 266
    :pswitch_f
    const-string v0, "getPrevFrameworkFPS"

    return-object v0

    .line 262
    :pswitch_10
    const-string v0, "getFrameworkFPS"

    return-object v0

    .line 258
    :pswitch_11
    const-string v0, "getCurrentRefreshRate"

    return-object v0

    .line 254
    :pswitch_12
    const-string/jumbo v0, "resetRefreshRate"

    return-object v0

    .line 250
    :pswitch_13
    const-string/jumbo v0, "setRefreshRate"

    return-object v0

    .line 246
    :pswitch_14
    const-string v0, "getSupportedRefreshRates"

    return-object v0

    .line 242
    :pswitch_15
    const-string v0, "isGameSDKVrrSupported"

    return-object v0

    .line 238
    :pswitch_16
    const-string v0, "getGpuJTLevel"

    return-object v0

    .line 234
    :pswitch_17
    const-string v0, "getCpuJTLevel"

    return-object v0

    .line 230
    :pswitch_18
    const-string/jumbo v0, "setGameSDKListener"

    return-object v0

    .line 226
    :pswitch_19
    const-string/jumbo v0, "setLevelWithScene"

    return-object v0

    .line 222
    :pswitch_1a
    const-string v0, "getHighPrecisionSkinTempLevel"

    return-object v0

    .line 218
    :pswitch_1b
    const-string v0, "getGPULevelMax"

    return-object v0

    .line 214
    :pswitch_1c
    const-string v0, "getCPULevelMax"

    return-object v0

    .line 210
    :pswitch_1d
    const-string v0, "getSkinTempLevel"

    return-object v0

    .line 206
    :pswitch_1e
    const-string v0, "getTempLevel"

    return-object v0

    .line 202
    :pswitch_1f
    const-string v0, "getVersion"

    return-object v0

    .line 198
    :pswitch_20
    const-string v0, "initGameSDKWithJsonData"

    return-object v0

    .line 194
    :pswitch_21
    const-string v0, "initGameSDKWithVersion"

    return-object v0

    .line 190
    :pswitch_22
    const-string v0, "initGameSDK"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 181
    return-object p0
.end method

.method public greylist getMaxTransactionId()I
    .locals 1

    .line 1311
    const/16 v0, 0x22

    return v0
.end method

.method public greylist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 337
    invoke-static {p1}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 341
    const-string v0, "com.samsung.android.gamesdk.IGameSDKService"

    .line 342
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 343
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 353
    packed-switch p1, :pswitch_data_1

    .line 646
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 349
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    return v1

    .line 637
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/gamesdk/IGameSDKStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gamesdk/IGameSDKStateListener;

    move-result-object v2

    .line 638
    .local v2, "_arg0":Lcom/samsung/android/gamesdk/IGameSDKStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->setGameSDKStateListener(Lcom/samsung/android/gamesdk/IGameSDKStateListener;)Z

    move-result v3

    .line 640
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 642
    goto/16 :goto_0

    .line 627
    .end local v2    # "_arg0":Lcom/samsung/android/gamesdk/IGameSDKStateListener;
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 628
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->registerDebugBridgePid(I)Z

    move-result v3

    .line 630
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 632
    goto/16 :goto_0

    .line 619
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getClusterInfo()I

    move-result v2

    .line 620
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    goto/16 :goto_0

    .line 610
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 611
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->setGpuBoostMode(I)Z

    move-result v3

    .line 613
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 615
    goto/16 :goto_0

    .line 600
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 601
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->setCpuBoostMode(I)Z

    move-result v3

    .line 603
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 605
    goto/16 :goto_0

    .line 590
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->isPackageInWhiteList(Ljava/lang/String;)Z

    move-result v3

    .line 593
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 595
    goto/16 :goto_0

    .line 581
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 582
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->finalGameSDK(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    goto/16 :goto_0

    .line 569
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 571
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 572
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->setFreqLevels(II)I

    move-result v4

    .line 574
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    goto/16 :goto_0

    .line 559
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 560
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->setDisableTMLevel(I)Z

    move-result v3

    .line 562
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 564
    goto/16 :goto_0

    .line 551
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getGpuFrameTime()D

    move-result-wide v2

    .line 552
    .local v2, "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 554
    goto/16 :goto_0

    .line 544
    .end local v2    # "_result":D
    :pswitch_b
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->isPMModeEnable()I

    move-result v2

    .line 545
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    goto/16 :goto_0

    .line 537
    .end local v2    # "_result":I
    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getGpuLevelCurrent()I

    move-result v2

    .line 538
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    goto/16 :goto_0

    .line 530
    .end local v2    # "_result":I
    :pswitch_d
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getCpuLevelCurrent()I

    move-result v2

    .line 531
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    goto/16 :goto_0

    .line 523
    .end local v2    # "_result":I
    :pswitch_e
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getGpuLoad()D

    move-result-wide v2

    .line 524
    .local v2, "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 526
    goto/16 :goto_0

    .line 516
    .end local v2    # "_result":D
    :pswitch_f
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getCpuLoad()D

    move-result-wide v2

    .line 517
    .restart local v2    # "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 519
    goto/16 :goto_0

    .line 509
    .end local v2    # "_result":D
    :pswitch_10
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getPrevFrameworkFPS()D

    move-result-wide v2

    .line 510
    .restart local v2    # "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 512
    goto/16 :goto_0

    .line 502
    .end local v2    # "_result":D
    :pswitch_11
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getFrameworkFPS()D

    move-result-wide v2

    .line 503
    .restart local v2    # "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 505
    goto/16 :goto_0

    .line 495
    .end local v2    # "_result":D
    :pswitch_12
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getCurrentRefreshRate()I

    move-result v2

    .line 496
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    goto/16 :goto_0

    .line 489
    .end local v2    # "_result":I
    :pswitch_13
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->resetRefreshRate()V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    goto/16 :goto_0

    .line 481
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 482
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->setRefreshRate(I)V

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    goto/16 :goto_0

    .line 473
    .end local v2    # "_arg0":I
    :pswitch_15
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getSupportedRefreshRates()[I

    move-result-object v2

    .line 474
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 476
    goto/16 :goto_0

    .line 466
    .end local v2    # "_result":[I
    :pswitch_16
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->isGameSDKVrrSupported()Z

    move-result v2

    .line 467
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 469
    goto/16 :goto_0

    .line 459
    .end local v2    # "_result":Z
    :pswitch_17
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getGpuJTLevel()I

    move-result v2

    .line 460
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    goto/16 :goto_0

    .line 452
    .end local v2    # "_result":I
    :pswitch_18
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getCpuJTLevel()I

    move-result v2

    .line 453
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    goto/16 :goto_0

    .line 443
    .end local v2    # "_result":I
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/gamesdk/IGameSDKListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gamesdk/IGameSDKListener;

    move-result-object v2

    .line 444
    .local v2, "_arg0":Lcom/samsung/android/gamesdk/IGameSDKListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->setGameSDKListener(Lcom/samsung/android/gamesdk/IGameSDKListener;)Z

    move-result v3

    .line 446
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 448
    goto/16 :goto_0

    .line 429
    .end local v2    # "_arg0":Lcom/samsung/android/gamesdk/IGameSDKListener;
    .end local v3    # "_result":Z
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 433
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 434
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->setLevelWithScene(Ljava/lang/String;II)Z

    move-result v5

    .line 436
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 438
    goto/16 :goto_0

    .line 421
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_1b
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getHighPrecisionSkinTempLevel()D

    move-result-wide v2

    .line 422
    .local v2, "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 424
    goto :goto_0

    .line 414
    .end local v2    # "_result":D
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getGPULevelMax()I

    move-result v2

    .line 415
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    goto :goto_0

    .line 407
    .end local v2    # "_result":I
    :pswitch_1d
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getCPULevelMax()I

    move-result v2

    .line 408
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    goto :goto_0

    .line 400
    .end local v2    # "_result":I
    :pswitch_1e
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getSkinTempLevel()I

    move-result v2

    .line 401
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    goto :goto_0

    .line 393
    .end local v2    # "_result":I
    :pswitch_1f
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getTempLevel()I

    move-result v2

    .line 394
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    goto :goto_0

    .line 386
    .end local v2    # "_result":I
    :pswitch_20
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    goto :goto_0

    .line 375
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->initGameSDKWithJsonData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 380
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 382
    goto :goto_0

    .line 365
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 366
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->initGameSDKWithVersion(Ljava/lang/String;)Z

    move-result v3

    .line 368
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 370
    goto :goto_0

    .line 357
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_23
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->initGameSDK()Z

    move-result v2

    .line 358
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 360
    nop

    .line 649
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
