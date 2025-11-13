.class public abstract Landroid/app/IUiModeManager$Stub;
.super Landroid/os/Binder;
.source "IUiModeManager.java"

# interfaces
.implements Landroid/app/IUiModeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiModeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IUiModeManager"

.field static final blacklist TRANSACTION_addOnProjectionStateChangedListener:I = 0x14

.field static final greylist-max-o TRANSACTION_disableCarMode:I = 0x2

.field static final blacklist TRANSACTION_disableCarModeByCallingPackage:I = 0x3

.field static final greylist-max-o TRANSACTION_enableCarMode:I = 0x1

.field static final blacklist TRANSACTION_getActiveProjectionTypes:I = 0x17

.field static final greylist-max-o TRANSACTION_getCurrentModeType:I = 0x4

.field static final blacklist TRANSACTION_getCustomNightModeEnd:I = 0x10

.field static final blacklist TRANSACTION_getCustomNightModeStart:I = 0xe

.field static final greylist-max-o TRANSACTION_getNightMode:I = 0x6

.field static final blacklist TRANSACTION_getNightModeCustomType:I = 0x8

.field static final blacklist TRANSACTION_getProjectingPackages:I = 0x16

.field static final greylist-max-o TRANSACTION_isNightModeLocked:I = 0xb

.field static final greylist-max-o TRANSACTION_isUiModeLocked:I = 0xa

.field static final blacklist TRANSACTION_releaseProjection:I = 0x13

.field static final blacklist TRANSACTION_removeOnProjectionStateChangedListener:I = 0x15

.field static final blacklist TRANSACTION_requestProjection:I = 0x12

.field static final blacklist TRANSACTION_setApplicationNightMode:I = 0x9

.field static final blacklist TRANSACTION_setCustomNightModeEnd:I = 0x11

.field static final blacklist TRANSACTION_setCustomNightModeStart:I = 0xf

.field static final blacklist TRANSACTION_setDesktopMode:I = 0x18

.field static final greylist-max-o TRANSACTION_setNightMode:I = 0x5

.field static final blacklist TRANSACTION_setNightModeActivated:I = 0xd

.field static final blacklist TRANSACTION_setNightModeActivatedForCustomMode:I = 0xc

.field static final blacklist TRANSACTION_setNightModeCustomType:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 185
    const-string v0, "android.app.IUiModeManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUiModeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static greylist-max-p asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 193
    if-nez p0, :cond_0

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_0
    const-string v0, "android.app.IUiModeManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 197
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IUiModeManager;

    if-eqz v1, :cond_1

    .line 198
    move-object v1, v0

    check-cast v1, Landroid/app/IUiModeManager;

    return-object v1

    .line 200
    :cond_1
    new-instance v1, Landroid/app/IUiModeManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IUiModeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 209
    packed-switch p0, :pswitch_data_0

    .line 309
    const/4 v0, 0x0

    return-object v0

    .line 305
    :pswitch_0
    const-string/jumbo v0, "setDesktopMode"

    return-object v0

    .line 301
    :pswitch_1
    const-string v0, "getActiveProjectionTypes"

    return-object v0

    .line 297
    :pswitch_2
    const-string v0, "getProjectingPackages"

    return-object v0

    .line 293
    :pswitch_3
    const-string/jumbo v0, "removeOnProjectionStateChangedListener"

    return-object v0

    .line 289
    :pswitch_4
    const-string v0, "addOnProjectionStateChangedListener"

    return-object v0

    .line 285
    :pswitch_5
    const-string/jumbo v0, "releaseProjection"

    return-object v0

    .line 281
    :pswitch_6
    const-string/jumbo v0, "requestProjection"

    return-object v0

    .line 277
    :pswitch_7
    const-string/jumbo v0, "setCustomNightModeEnd"

    return-object v0

    .line 273
    :pswitch_8
    const-string v0, "getCustomNightModeEnd"

    return-object v0

    .line 269
    :pswitch_9
    const-string/jumbo v0, "setCustomNightModeStart"

    return-object v0

    .line 265
    :pswitch_a
    const-string v0, "getCustomNightModeStart"

    return-object v0

    .line 261
    :pswitch_b
    const-string/jumbo v0, "setNightModeActivated"

    return-object v0

    .line 257
    :pswitch_c
    const-string/jumbo v0, "setNightModeActivatedForCustomMode"

    return-object v0

    .line 253
    :pswitch_d
    const-string v0, "isNightModeLocked"

    return-object v0

    .line 249
    :pswitch_e
    const-string v0, "isUiModeLocked"

    return-object v0

    .line 245
    :pswitch_f
    const-string/jumbo v0, "setApplicationNightMode"

    return-object v0

    .line 241
    :pswitch_10
    const-string v0, "getNightModeCustomType"

    return-object v0

    .line 237
    :pswitch_11
    const-string/jumbo v0, "setNightModeCustomType"

    return-object v0

    .line 233
    :pswitch_12
    const-string v0, "getNightMode"

    return-object v0

    .line 229
    :pswitch_13
    const-string/jumbo v0, "setNightMode"

    return-object v0

    .line 225
    :pswitch_14
    const-string v0, "getCurrentModeType"

    return-object v0

    .line 221
    :pswitch_15
    const-string v0, "disableCarModeByCallingPackage"

    return-object v0

    .line 217
    :pswitch_16
    const-string v0, "disableCarMode"

    return-object v0

    .line 213
    :pswitch_17
    const-string v0, "enableCarMode"

    return-object v0

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

    .line 204
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1080
    const/16 v0, 0x17

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 316
    invoke-static {p1}, Landroid/app/IUiModeManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 320
    const-string v0, "android.app.IUiModeManager"

    .line 321
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 322
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 332
    packed-switch p1, :pswitch_data_1

    .line 557
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 328
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    return v1

    .line 549
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 550
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setDesktopMode(Z)V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    goto/16 :goto_0

    .line 541
    .end local v2    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getActiveProjectionTypes()I

    move-result v2

    .line 542
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    goto/16 :goto_0

    .line 532
    .end local v2    # "_result":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 533
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 534
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->getProjectingPackages(I)Ljava/util/List;

    move-result-object v3

    .line 535
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 537
    goto/16 :goto_0

    .line 523
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IOnProjectionStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOnProjectionStateChangedListener;

    move-result-object v2

    .line 524
    .local v2, "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    goto/16 :goto_0

    .line 512
    .end local v2    # "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IOnProjectionStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOnProjectionStateChangedListener;

    move-result-object v2

    .line 514
    .restart local v2    # "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 515
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    goto/16 :goto_0

    .line 500
    .end local v2    # "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    .end local v3    # "_arg1":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 502
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->releaseProjection(ILjava/lang/String;)Z

    move-result v4

    .line 505
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 507
    goto/16 :goto_0

    .line 486
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 488
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 490
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 491
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiModeManager$Stub;->requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v5

    .line 493
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 495
    goto/16 :goto_0

    .line 477
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 478
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setCustomNightModeEnd(J)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    goto/16 :goto_0

    .line 469
    .end local v2    # "_arg0":J
    :pswitch_9
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCustomNightModeEnd()J

    move-result-wide v2

    .line 470
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 472
    goto/16 :goto_0

    .line 461
    .end local v2    # "_result":J
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 462
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setCustomNightModeStart(J)V

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    goto/16 :goto_0

    .line 453
    .end local v2    # "_arg0":J
    :pswitch_b
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCustomNightModeStart()J

    move-result-wide v2

    .line 454
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 456
    goto/16 :goto_0

    .line 444
    .end local v2    # "_result":J
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 445
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightModeActivated(Z)Z

    move-result v3

    .line 447
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 449
    goto/16 :goto_0

    .line 432
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 434
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 435
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setNightModeActivatedForCustomMode(IZ)Z

    move-result v4

    .line 437
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 439
    goto/16 :goto_0

    .line 424
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_e
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isNightModeLocked()Z

    move-result v2

    .line 425
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 427
    goto/16 :goto_0

    .line 417
    .end local v2    # "_result":Z
    :pswitch_f
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isUiModeLocked()Z

    move-result v2

    .line 418
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 420
    goto/16 :goto_0

    .line 409
    .end local v2    # "_result":Z
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 410
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setApplicationNightMode(I)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    goto/16 :goto_0

    .line 401
    .end local v2    # "_arg0":I
    :pswitch_11
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightModeCustomType()I

    move-result v2

    .line 402
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    goto :goto_0

    .line 393
    .end local v2    # "_result":I
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 394
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightModeCustomType(I)V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    goto :goto_0

    .line 385
    .end local v2    # "_arg0":I
    :pswitch_13
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightMode()I

    move-result v2

    .line 386
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    goto :goto_0

    .line 377
    .end local v2    # "_result":I
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 378
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightMode(I)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    goto :goto_0

    .line 369
    .end local v2    # "_arg0":I
    :pswitch_15
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCurrentModeType()I

    move-result v2

    .line 370
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    goto :goto_0

    .line 359
    .end local v2    # "_result":I
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 361
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    goto :goto_0

    .line 350
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 351
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->disableCarMode(I)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto :goto_0

    .line 337
    .end local v2    # "_arg0":I
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 341
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiModeManager$Stub;->enableCarMode(IILjava/lang/String;)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    nop

    .line 560
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
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
