.class public abstract Landroid/hardware/camera2/ICameraDeviceUser$Stub;
.super Landroid/os/Binder;
.source "ICameraDeviceUser.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraDeviceUser"

.field static final greylist-max-o TRANSACTION_beginConfigure:I = 0x5

.field static final greylist-max-o TRANSACTION_cancelRequest:I = 0x4

.field static final greylist-max-o TRANSACTION_createDefaultRequest:I = 0xd

.field static final greylist-max-o TRANSACTION_createInputStream:I = 0xa

.field static final greylist-max-o TRANSACTION_createStream:I = 0x9

.field static final greylist-max-o TRANSACTION_deleteStream:I = 0x8

.field static final greylist-max-o TRANSACTION_disconnect:I = 0x1

.field static final greylist-max-o TRANSACTION_endConfigure:I = 0x6

.field static final greylist-max-o TRANSACTION_finalizeOutputConfigurations:I = 0x15

.field static final greylist-max-o TRANSACTION_flush:I = 0x10

.field static final greylist-max-o TRANSACTION_getCameraInfo:I = 0xe

.field static final blacklist TRANSACTION_getGlobalAudioRestriction:I = 0x17

.field static final greylist-max-o TRANSACTION_getInputSurface:I = 0xc

.field static final blacklist TRANSACTION_isSessionConfigurationSupported:I = 0x7

.field static final greylist-max-o TRANSACTION_prepare:I = 0x11

.field static final greylist-max-o TRANSACTION_prepare2:I = 0x13

.field static final blacklist TRANSACTION_setCameraAudioRestriction:I = 0x16

.field static final blacklist TRANSACTION_setParameters:I = 0xb

.field static final greylist-max-o TRANSACTION_submitRequest:I = 0x2

.field static final greylist-max-o TRANSACTION_submitRequestList:I = 0x3

.field static final blacklist TRANSACTION_switchToOffline:I = 0x18

.field static final greylist-max-o TRANSACTION_tearDown:I = 0x12

.field static final greylist-max-o TRANSACTION_updateOutputConfiguration:I = 0x14

.field static final greylist-max-o TRANSACTION_waitUntilIdle:I = 0xf


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 194
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 195
    const-string v0, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 203
    if-nez p0, :cond_0

    .line 204
    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_0
    const-string v0, "android.hardware.camera2.ICameraDeviceUser"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 207
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_1

    .line 208
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/ICameraDeviceUser;

    return-object v1

    .line 210
    :cond_1
    new-instance v1, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 219
    packed-switch p0, :pswitch_data_0

    .line 319
    const/4 v0, 0x0

    return-object v0

    .line 315
    :pswitch_0
    const-string/jumbo v0, "switchToOffline"

    return-object v0

    .line 311
    :pswitch_1
    const-string v0, "getGlobalAudioRestriction"

    return-object v0

    .line 307
    :pswitch_2
    const-string/jumbo v0, "setCameraAudioRestriction"

    return-object v0

    .line 303
    :pswitch_3
    const-string v0, "finalizeOutputConfigurations"

    return-object v0

    .line 299
    :pswitch_4
    const-string/jumbo v0, "updateOutputConfiguration"

    return-object v0

    .line 295
    :pswitch_5
    const-string/jumbo v0, "prepare2"

    return-object v0

    .line 291
    :pswitch_6
    const-string/jumbo v0, "tearDown"

    return-object v0

    .line 287
    :pswitch_7
    const-string/jumbo v0, "prepare"

    return-object v0

    .line 283
    :pswitch_8
    const-string v0, "flush"

    return-object v0

    .line 279
    :pswitch_9
    const-string/jumbo v0, "waitUntilIdle"

    return-object v0

    .line 275
    :pswitch_a
    const-string v0, "getCameraInfo"

    return-object v0

    .line 271
    :pswitch_b
    const-string v0, "createDefaultRequest"

    return-object v0

    .line 267
    :pswitch_c
    const-string v0, "getInputSurface"

    return-object v0

    .line 263
    :pswitch_d
    const-string/jumbo v0, "setParameters"

    return-object v0

    .line 259
    :pswitch_e
    const-string v0, "createInputStream"

    return-object v0

    .line 255
    :pswitch_f
    const-string v0, "createStream"

    return-object v0

    .line 251
    :pswitch_10
    const-string v0, "deleteStream"

    return-object v0

    .line 247
    :pswitch_11
    const-string v0, "isSessionConfigurationSupported"

    return-object v0

    .line 243
    :pswitch_12
    const-string v0, "endConfigure"

    return-object v0

    .line 239
    :pswitch_13
    const-string v0, "beginConfigure"

    return-object v0

    .line 235
    :pswitch_14
    const-string v0, "cancelRequest"

    return-object v0

    .line 231
    :pswitch_15
    const-string/jumbo v0, "submitRequestList"

    return-object v0

    .line 227
    :pswitch_16
    const-string/jumbo v0, "submitRequest"

    return-object v0

    .line 223
    :pswitch_17
    const-string v0, "disconnect"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 214
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1116
    const/16 v0, 0x17

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 326
    invoke-static {p1}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 330
    const-string v0, "android.hardware.camera2.ICameraDeviceUser"

    .line 331
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 332
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 342
    packed-switch p1, :pswitch_data_1

    .line 576
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 338
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    return v1

    .line 565
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v2

    .line 567
    .local v2, "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 568
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->switchToOffline(Landroid/hardware/camera2/ICameraDeviceCallbacks;[I)Landroid/hardware/camera2/ICameraOfflineSession;

    move-result-object v4

    .line 570
    .local v4, "_result":Landroid/hardware/camera2/ICameraOfflineSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 572
    goto/16 :goto_0

    .line 557
    .end local v2    # "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":Landroid/hardware/camera2/ICameraOfflineSession;
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getGlobalAudioRestriction()I

    move-result v2

    .line 558
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    goto/16 :goto_0

    .line 549
    .end local v2    # "_result":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 550
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->setCameraAudioRestriction(I)V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    goto/16 :goto_0

    .line 538
    .end local v2    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 540
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 541
    .local v3, "_arg1":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    goto/16 :goto_0

    .line 527
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/camera2/params/OutputConfiguration;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 529
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 530
    .restart local v3    # "_arg1":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->updateOutputConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    goto/16 :goto_0

    .line 516
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/camera2/params/OutputConfiguration;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 518
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 519
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare2(II)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    goto/16 :goto_0

    .line 507
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 508
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->tearDown(I)V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    goto/16 :goto_0

    .line 498
    .end local v2    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 499
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare(I)V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    goto/16 :goto_0

    .line 490
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->flush()J

    move-result-wide v2

    .line 491
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 493
    goto/16 :goto_0

    .line 484
    .end local v2    # "_result":J
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->waitUntilIdle()V

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    goto/16 :goto_0

    .line 477
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    .line 478
    .local v2, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 480
    goto/16 :goto_0

    .line 468
    .end local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 469
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    .line 471
    .local v3, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 473
    goto/16 :goto_0

    .line 460
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    .line 461
    .local v2, "_result":Landroid/view/Surface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 463
    goto/16 :goto_0

    .line 452
    .end local v2    # "_result":Landroid/view/Surface;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->setParameters(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    goto/16 :goto_0

    .line 436
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 438
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 440
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 442
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 443
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createInputStream(IIIZ)I

    move-result v6

    .line 445
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    goto/16 :goto_0

    .line 426
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":I
    :pswitch_10
    sget-object v2, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 427
    .local v2, "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v3

    .line 429
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    goto/16 :goto_0

    .line 417
    .end local v2    # "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v3    # "_result":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 418
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->deleteStream(I)V

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    goto/16 :goto_0

    .line 407
    .end local v2    # "_arg0":I
    :pswitch_12
    sget-object v2, Landroid/hardware/camera2/params/SessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 408
    .local v2, "_arg0":Landroid/hardware/camera2/params/SessionConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z

    move-result v3

    .line 410
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 412
    goto :goto_0

    .line 393
    .end local v2    # "_arg0":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local v3    # "_result":Z
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 395
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 397
    .local v3, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 398
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I

    move-result-object v6

    .line 400
    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 402
    goto :goto_0

    .line 386
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v4    # "_arg2":J
    .end local v6    # "_result":[I
    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->beginConfigure()V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    goto :goto_0

    .line 377
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 378
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->cancelRequest(I)J

    move-result-wide v3

    .line 380
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 382
    goto :goto_0

    .line 365
    .end local v2    # "_arg0":I
    .end local v3    # "_result":J
    :pswitch_16
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/CaptureRequest;

    .line 367
    .local v2, "_arg0":[Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 368
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v4

    .line 370
    .local v4, "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 372
    goto :goto_0

    .line 353
    .end local v2    # "_arg0":[Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :pswitch_17
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 355
    .local v2, "_arg0":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 356
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v4

    .line 358
    .restart local v4    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 360
    goto :goto_0

    .line 346
    .end local v2    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :pswitch_18
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->disconnect()V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    nop

    .line 579
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
