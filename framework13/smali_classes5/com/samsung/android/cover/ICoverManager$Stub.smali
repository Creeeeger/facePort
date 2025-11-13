.class public abstract Lcom/samsung/android/cover/ICoverManager$Stub;
.super Landroid/os/Binder;
.source "ICoverManager.java"

# interfaces
.implements Lcom/samsung/android/cover/ICoverManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/ICoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final greylist TRANSACTION_addLedNotification:I = 0xe

.field static final greylist TRANSACTION_disableCoverManager:I = 0x7

.field static final greylist TRANSACTION_disableLcdOffByCover:I = 0x11

.field static final greylist TRANSACTION_enableLcdOffByCover:I = 0x12

.field static final greylist TRANSACTION_getCoverState:I = 0x4

.field static final greylist TRANSACTION_getCoverStateForExternal:I = 0x18

.field static final greylist TRANSACTION_getCoverSwitchState:I = 0x5

.field static final greylist TRANSACTION_getVersion:I = 0x8

.field static final greylist TRANSACTION_isCoverManagerDisabled:I = 0x6

.field static final greylist TRANSACTION_onCoverAppCovered:I = 0x15

.field static final greylist TRANSACTION_registerCallback:I = 0x1

.field static final greylist TRANSACTION_registerListenerCallback:I = 0x2

.field static final greylist TRANSACTION_registerListenerCallbackForExternal:I = 0x16

.field static final greylist TRANSACTION_registerNfcTouchListenerCallback:I = 0xb

.field static final greylist TRANSACTION_removeLedNotification:I = 0xf

.field static final greylist TRANSACTION_requestCoverAuthentication:I = 0x13

.field static final greylist TRANSACTION_sendDataToCover:I = 0x9

.field static final greylist TRANSACTION_sendDataToNfcLedCover:I = 0xd

.field static final greylist TRANSACTION_sendPowerKeyToCover:I = 0xa

.field static final greylist TRANSACTION_sendSystemEvent:I = 0x10

.field static final greylist TRANSACTION_setFotaInProgress:I = 0x14

.field static final greylist TRANSACTION_unregisterCallback:I = 0x3

.field static final greylist TRANSACTION_unregisterCallbackForExternal:I = 0x17

.field static final greylist TRANSACTION_unregisterNfcTouchListenerCallback:I = 0xc


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 119
    const-string v0, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 127
    if-nez p0, :cond_0

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    const-string v0, "com.samsung.android.cover.ICoverManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 131
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cover/ICoverManager;

    if-eqz v1, :cond_1

    .line 132
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/cover/ICoverManager;

    return-object v1

    .line 134
    :cond_1
    new-instance v1, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static greylist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 143
    packed-switch p0, :pswitch_data_0

    .line 243
    const/4 v0, 0x0

    return-object v0

    .line 239
    :pswitch_0
    const-string v0, "getCoverStateForExternal"

    return-object v0

    .line 235
    :pswitch_1
    const-string/jumbo v0, "unregisterCallbackForExternal"

    return-object v0

    .line 231
    :pswitch_2
    const-string/jumbo v0, "registerListenerCallbackForExternal"

    return-object v0

    .line 227
    :pswitch_3
    const-string v0, "onCoverAppCovered"

    return-object v0

    .line 223
    :pswitch_4
    const-string/jumbo v0, "setFotaInProgress"

    return-object v0

    .line 219
    :pswitch_5
    const-string/jumbo v0, "requestCoverAuthentication"

    return-object v0

    .line 215
    :pswitch_6
    const-string v0, "enableLcdOffByCover"

    return-object v0

    .line 211
    :pswitch_7
    const-string v0, "disableLcdOffByCover"

    return-object v0

    .line 207
    :pswitch_8
    const-string/jumbo v0, "sendSystemEvent"

    return-object v0

    .line 203
    :pswitch_9
    const-string/jumbo v0, "removeLedNotification"

    return-object v0

    .line 199
    :pswitch_a
    const-string v0, "addLedNotification"

    return-object v0

    .line 195
    :pswitch_b
    const-string/jumbo v0, "sendDataToNfcLedCover"

    return-object v0

    .line 191
    :pswitch_c
    const-string/jumbo v0, "unregisterNfcTouchListenerCallback"

    return-object v0

    .line 187
    :pswitch_d
    const-string/jumbo v0, "registerNfcTouchListenerCallback"

    return-object v0

    .line 183
    :pswitch_e
    const-string/jumbo v0, "sendPowerKeyToCover"

    return-object v0

    .line 179
    :pswitch_f
    const-string/jumbo v0, "sendDataToCover"

    return-object v0

    .line 175
    :pswitch_10
    const-string v0, "getVersion"

    return-object v0

    .line 171
    :pswitch_11
    const-string v0, "disableCoverManager"

    return-object v0

    .line 167
    :pswitch_12
    const-string v0, "isCoverManagerDisabled"

    return-object v0

    .line 163
    :pswitch_13
    const-string v0, "getCoverSwitchState"

    return-object v0

    .line 159
    :pswitch_14
    const-string v0, "getCoverState"

    return-object v0

    .line 155
    :pswitch_15
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 151
    :pswitch_16
    const-string/jumbo v0, "registerListenerCallback"

    return-object v0

    .line 147
    :pswitch_17
    const-string/jumbo v0, "registerCallback"

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

    .line 138
    return-object p0
.end method

.method public greylist getMaxTransactionId()I
    .locals 1

    .line 982
    const/16 v0, 0x17

    return v0
.end method

.method public greylist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 250
    invoke-static {p1}, Lcom/samsung/android/cover/ICoverManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 254
    const-string v0, "com.samsung.android.cover.ICoverManager"

    .line 255
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 256
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 266
    packed-switch p1, :pswitch_data_1

    .line 513
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 262
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    return v1

    .line 506
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    .line 507
    .local v2, "_result":Lcom/samsung/android/cover/CoverState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 509
    goto/16 :goto_0

    .line 497
    .end local v2    # "_result":Lcom/samsung/android/cover/CoverState;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 498
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {p0, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->unregisterCallbackForExternal(Landroid/os/IBinder;)Z

    move-result v3

    .line 500
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 502
    goto/16 :goto_0

    .line 484
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 486
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 488
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 489
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    goto/16 :goto_0

    .line 474
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 475
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {p0, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->onCoverAppCovered(Z)I

    move-result v3

    .line 477
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    goto/16 :goto_0

    .line 460
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 462
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 464
    .local v3, "_arg1":Landroid/os/IBinder;
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 465
    .local v4, "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/cover/ICoverManager$Stub;->setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v5

    .line 467
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 469
    goto/16 :goto_0

    .line 448
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Landroid/content/ComponentName;
    .end local v5    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 450
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 451
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v4

    .line 453
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 455
    goto/16 :goto_0

    .line 436
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 438
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 439
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v4

    .line 441
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 443
    goto/16 :goto_0

    .line 424
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 426
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 427
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v4

    .line 429
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 431
    goto/16 :goto_0

    .line 415
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :pswitch_9
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 416
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {p0, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendSystemEvent(Landroid/os/Bundle;)V

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    goto/16 :goto_0

    .line 406
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_a
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 407
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->removeLedNotification(Landroid/os/Bundle;)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    goto/16 :goto_0

    .line 397
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_b
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 398
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->addLedNotification(Landroid/os/Bundle;)V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    goto/16 :goto_0

    .line 386
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 388
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 389
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendDataToNfcLedCover(I[B)V

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    goto/16 :goto_0

    .line 376
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 377
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {p0, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v3

    .line 379
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 381
    goto/16 :goto_0

    .line 363
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 365
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 367
    .local v3, "_arg1":Landroid/os/IBinder;
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 368
    .local v4, "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    goto/16 :goto_0

    .line 356
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Landroid/content/ComponentName;
    :pswitch_f
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendPowerKeyToCover()V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    goto/16 :goto_0

    .line 346
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 349
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendDataToCover(I[B)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    goto/16 :goto_0

    .line 338
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_11
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->getVersion()I

    move-result v2

    .line 339
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    goto/16 :goto_0

    .line 326
    .end local v2    # "_result":I
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 328
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 330
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/cover/ICoverManager$Stub;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    goto :goto_0

    .line 318
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->isCoverManagerDisabled()Z

    move-result v2

    .line 319
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 321
    goto :goto_0

    .line 311
    .end local v2    # "_result":Z
    :pswitch_14
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->getCoverSwitchState()Z

    move-result v2

    .line 312
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 314
    goto :goto_0

    .line 304
    .end local v2    # "_result":Z
    :pswitch_15
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    .line 305
    .local v2, "_result":Lcom/samsung/android/cover/CoverState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 307
    goto :goto_0

    .line 295
    .end local v2    # "_result":Lcom/samsung/android/cover/CoverState;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 296
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v3

    .line 298
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 300
    goto :goto_0

    .line 282
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 284
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 286
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 287
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto :goto_0

    .line 271
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":I
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 273
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 274
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    nop

    .line 516
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    :goto_0
    return v1

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
