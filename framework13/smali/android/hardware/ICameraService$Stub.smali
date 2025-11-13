.class public abstract Landroid/hardware/ICameraService$Stub;
.super Landroid/os/Binder;
.source "ICameraService.java"

# interfaces
.implements Landroid/hardware/ICameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICameraService"

.field static final greylist-max-o TRANSACTION_addListener:I = 0x5

.field static final blacklist TRANSACTION_applyExtraRequestsToRequestInjector:I = 0x19

.field static final greylist-max-o TRANSACTION_connect:I = 0x3

.field static final greylist-max-o TRANSACTION_connectDevice:I = 0x4

.field static final greylist-max-o TRANSACTION_getCameraCharacteristics:I = 0x9

.field static final greylist-max-o TRANSACTION_getCameraInfo:I = 0x2

.field static final greylist-max-o TRANSACTION_getCameraVendorTagCache:I = 0xb

.field static final greylist-max-o TRANSACTION_getCameraVendorTagDescriptor:I = 0xa

.field static final blacklist TRANSACTION_getConcurrentCameraIds:I = 0x6

.field static final greylist-max-o TRANSACTION_getLegacyParameters:I = 0xc

.field static final greylist-max-o TRANSACTION_getNumberOfCameras:I = 0x1

.field static final blacklist TRANSACTION_getTorchStrengthLevel:I = 0x12

.field static final blacklist TRANSACTION_injectCamera:I = 0xf

.field static final blacklist TRANSACTION_isConcurrentSessionConfigurationSupported:I = 0x7

.field static final blacklist TRANSACTION_isHiddenIdPermittedPackage:I = 0x18

.field static final blacklist TRANSACTION_isHiddenPhysicalCamera:I = 0xe

.field static final blacklist TRANSACTION_notifyDeviceStateChange:I = 0x15

.field static final blacklist TRANSACTION_notifyDeviceStateChangeSync:I = 0x16

.field static final blacklist TRANSACTION_notifyDisplayConfigurationChange:I = 0x14

.field static final blacklist TRANSACTION_notifyPkgListParamChange:I = 0x17

.field static final greylist-max-o TRANSACTION_notifySystemEvent:I = 0x13

.field static final greylist-max-o TRANSACTION_removeListener:I = 0x8

.field static final greylist-max-o TRANSACTION_setTorchMode:I = 0x10

.field static final greylist-max-o TRANSACTION_supportsCameraApi:I = 0xd

.field static final blacklist TRANSACTION_turnOnTorchWithStrengthLevel:I = 0x11

.field static final blacklist TRANSACTION_updateRequestInjectorAllowedList:I = 0x1a


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 193
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 194
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICameraService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 202
    if-nez p0, :cond_0

    .line 203
    const/4 v0, 0x0

    return-object v0

    .line 205
    :cond_0
    const-string v0, "android.hardware.ICameraService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 206
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/ICameraService;

    if-eqz v1, :cond_1

    .line 207
    move-object v1, v0

    check-cast v1, Landroid/hardware/ICameraService;

    return-object v1

    .line 209
    :cond_1
    new-instance v1, Landroid/hardware/ICameraService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ICameraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 218
    packed-switch p0, :pswitch_data_0

    .line 326
    const/4 v0, 0x0

    return-object v0

    .line 322
    :pswitch_0
    const-string/jumbo v0, "updateRequestInjectorAllowedList"

    return-object v0

    .line 318
    :pswitch_1
    const-string v0, "applyExtraRequestsToRequestInjector"

    return-object v0

    .line 314
    :pswitch_2
    const-string v0, "isHiddenIdPermittedPackage"

    return-object v0

    .line 310
    :pswitch_3
    const-string/jumbo v0, "notifyPkgListParamChange"

    return-object v0

    .line 306
    :pswitch_4
    const-string/jumbo v0, "notifyDeviceStateChangeSync"

    return-object v0

    .line 302
    :pswitch_5
    const-string/jumbo v0, "notifyDeviceStateChange"

    return-object v0

    .line 298
    :pswitch_6
    const-string/jumbo v0, "notifyDisplayConfigurationChange"

    return-object v0

    .line 294
    :pswitch_7
    const-string/jumbo v0, "notifySystemEvent"

    return-object v0

    .line 290
    :pswitch_8
    const-string v0, "getTorchStrengthLevel"

    return-object v0

    .line 286
    :pswitch_9
    const-string/jumbo v0, "turnOnTorchWithStrengthLevel"

    return-object v0

    .line 282
    :pswitch_a
    const-string/jumbo v0, "setTorchMode"

    return-object v0

    .line 278
    :pswitch_b
    const-string v0, "injectCamera"

    return-object v0

    .line 274
    :pswitch_c
    const-string v0, "isHiddenPhysicalCamera"

    return-object v0

    .line 270
    :pswitch_d
    const-string/jumbo v0, "supportsCameraApi"

    return-object v0

    .line 266
    :pswitch_e
    const-string v0, "getLegacyParameters"

    return-object v0

    .line 262
    :pswitch_f
    const-string v0, "getCameraVendorTagCache"

    return-object v0

    .line 258
    :pswitch_10
    const-string v0, "getCameraVendorTagDescriptor"

    return-object v0

    .line 254
    :pswitch_11
    const-string v0, "getCameraCharacteristics"

    return-object v0

    .line 250
    :pswitch_12
    const-string/jumbo v0, "removeListener"

    return-object v0

    .line 246
    :pswitch_13
    const-string v0, "isConcurrentSessionConfigurationSupported"

    return-object v0

    .line 242
    :pswitch_14
    const-string v0, "getConcurrentCameraIds"

    return-object v0

    .line 238
    :pswitch_15
    const-string v0, "addListener"

    return-object v0

    .line 234
    :pswitch_16
    const-string v0, "connectDevice"

    return-object v0

    .line 230
    :pswitch_17
    const-string v0, "connect"

    return-object v0

    .line 226
    :pswitch_18
    const-string v0, "getCameraInfo"

    return-object v0

    .line 222
    :pswitch_19
    const-string v0, "getNumberOfCameras"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 213
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1205
    const/16 v0, 0x19

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 333
    invoke-static {p1}, Landroid/hardware/ICameraService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.hardware.ICameraService"

    .line 338
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 339
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 349
    packed-switch v9, :pswitch_data_1

    .line 634
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 345
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    return v13

    .line 626
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->updateRequestInjectorAllowedList([Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    goto/16 :goto_0

    .line 616
    .end local v0    # "_arg0":[Ljava/lang/String;
    :pswitch_2
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/PersistableBundle;

    .line 617
    .local v0, "_arg0":[Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->applyExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)Z

    move-result v1

    .line 619
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 621
    goto/16 :goto_0

    .line 606
    .end local v0    # "_arg0":[Landroid/os/PersistableBundle;
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->isHiddenIdPermittedPackage(Ljava/lang/String;)Z

    move-result v1

    .line 609
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 611
    goto/16 :goto_0

    .line 596
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {v8, v0, v1}, Landroid/hardware/ICameraService$Stub;->notifyPkgListParamChange([Ljava/lang/String;[Ljava/lang/String;)V

    .line 601
    goto/16 :goto_0

    .line 587
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 588
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {v8, v0, v1}, Landroid/hardware/ICameraService$Stub;->notifyDeviceStateChangeSync(J)V

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    goto/16 :goto_0

    .line 579
    .end local v0    # "_arg0":J
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 580
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-virtual {v8, v0, v1}, Landroid/hardware/ICameraService$Stub;->notifyDeviceStateChange(J)V

    .line 582
    goto/16 :goto_0

    .line 573
    .end local v0    # "_arg0":J
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraService$Stub;->notifyDisplayConfigurationChange()V

    .line 574
    goto/16 :goto_0

    .line 564
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 566
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 567
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {v8, v0, v1}, Landroid/hardware/ICameraService$Stub;->notifySystemEvent(I[I)V

    .line 569
    goto/16 :goto_0

    .line 554
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->getTorchStrengthLevel(Ljava/lang/String;)I

    move-result v1

    .line 557
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    goto/16 :goto_0

    .line 541
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 543
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 545
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 546
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/ICameraService$Stub;->turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    goto/16 :goto_0

    .line 528
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 530
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 532
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 533
    .restart local v2    # "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 534
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/ICameraService$Stub;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    goto/16 :goto_0

    .line 512
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 514
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/ICameraInjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraInjectionCallback;

    move-result-object v3

    .line 519
    .local v3, "_arg3":Landroid/hardware/camera2/ICameraInjectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/hardware/ICameraService$Stub;->injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/ICameraInjectionCallback;)Landroid/hardware/camera2/ICameraInjectionSession;

    move-result-object v4

    .line 521
    .local v4, "_result":Landroid/hardware/camera2/ICameraInjectionSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 523
    goto/16 :goto_0

    .line 502
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/hardware/camera2/ICameraInjectionCallback;
    .end local v4    # "_result":Landroid/hardware/camera2/ICameraInjectionSession;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 503
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result v1

    .line 505
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 507
    goto/16 :goto_0

    .line 490
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 492
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 493
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {v8, v0, v1}, Landroid/hardware/ICameraService$Stub;->supportsCameraApi(Ljava/lang/String;I)Z

    move-result v2

    .line 495
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 497
    goto/16 :goto_0

    .line 480
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 481
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 485
    goto/16 :goto_0

    .line 472
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagCache()Landroid/hardware/camera2/params/VendorTagDescriptorCache;

    move-result-object v0

    .line 473
    .local v0, "_result":Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 475
    goto/16 :goto_0

    .line 465
    .end local v0    # "_result":Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagDescriptor()Landroid/hardware/camera2/params/VendorTagDescriptor;

    move-result-object v0

    .line 466
    .local v0, "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 468
    goto/16 :goto_0

    .line 454
    .end local v0    # "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 457
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {v8, v0, v1}, Landroid/hardware/ICameraService$Stub;->getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    .line 459
    .local v2, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 461
    goto/16 :goto_0

    .line 445
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v0

    .line 446
    .local v0, "_arg0":Landroid/hardware/ICameraServiceListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->removeListener(Landroid/hardware/ICameraServiceListener;)V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    goto/16 :goto_0

    .line 433
    .end local v0    # "_arg0":Landroid/hardware/ICameraServiceListener;
    :pswitch_14
    sget-object v0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 435
    .local v0, "_arg0":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 436
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {v8, v0, v1}, Landroid/hardware/ICameraService$Stub;->isConcurrentSessionConfigurationSupported([Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;I)Z

    move-result v2

    .line 438
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 440
    goto/16 :goto_0

    .line 425
    .end local v0    # "_arg0":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraService$Stub;->getConcurrentCameraIds()[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;

    move-result-object v0

    .line 426
    .local v0, "_result":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 428
    goto/16 :goto_0

    .line 416
    .end local v0    # "_result":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v0

    .line 417
    .local v0, "_arg0":Landroid/hardware/ICameraServiceListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v1

    .line 419
    .local v1, "_result":[Landroid/hardware/CameraStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 421
    goto/16 :goto_0

    .line 394
    .end local v0    # "_arg0":Landroid/hardware/ICameraServiceListener;
    .end local v1    # "_result":[Landroid/hardware/CameraStatus;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v14

    .line 396
    .local v14, "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 398
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 400
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 402
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 404
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 406
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 407
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/ICameraService$Stub;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v0

    .line 409
    .local v0, "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 411
    goto :goto_0

    .line 374
    .end local v0    # "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v14    # "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    move-result-object v7

    .line 376
    .local v7, "_arg0":Landroid/hardware/ICameraClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 378
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 380
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 382
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 384
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 385
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/ICameraService$Stub;->connect(Landroid/hardware/ICameraClient;ILjava/lang/String;III)Landroid/hardware/ICamera;

    move-result-object v0

    .line 387
    .local v0, "_result":Landroid/hardware/ICamera;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 389
    goto :goto_0

    .line 364
    .end local v0    # "_result":Landroid/hardware/ICamera;
    .end local v7    # "_arg0":Landroid/hardware/ICameraClient;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 365
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    move-result-object v1

    .line 367
    .local v1, "_result":Landroid/hardware/CameraInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 369
    goto :goto_0

    .line 354
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/hardware/CameraInfo;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 355
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->getNumberOfCameras(I)I

    move-result v1

    .line 357
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    nop

    .line 637
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
