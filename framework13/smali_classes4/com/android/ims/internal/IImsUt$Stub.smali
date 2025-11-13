.class public abstract Lcom/android/ims/internal/IImsUt$Stub;
.super Landroid/os/Binder;
.source "IImsUt.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUt$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsUt"

.field static final greylist-max-o TRANSACTION_close:I = 0x1

.field static final blacklist TRANSACTION_isUssdEnabled:I = 0x15

.field static final greylist-max-o TRANSACTION_queryCLIP:I = 0x6

.field static final greylist-max-o TRANSACTION_queryCLIR:I = 0x5

.field static final greylist-max-o TRANSACTION_queryCOLP:I = 0x8

.field static final greylist-max-o TRANSACTION_queryCOLR:I = 0x7

.field static final greylist-max-o TRANSACTION_queryCallBarring:I = 0x2

.field static final greylist-max-o TRANSACTION_queryCallBarringForServiceClass:I = 0x12

.field static final greylist-max-o TRANSACTION_queryCallForward:I = 0x3

.field static final greylist-max-o TRANSACTION_queryCallWaiting:I = 0x4

.field static final greylist-max-o TRANSACTION_setListener:I = 0x11

.field static final greylist-max-o TRANSACTION_transact:I = 0x9

.field static final greylist-max-o TRANSACTION_updateCLIP:I = 0xe

.field static final greylist-max-o TRANSACTION_updateCLIR:I = 0xd

.field static final greylist-max-o TRANSACTION_updateCOLP:I = 0x10

.field static final greylist-max-o TRANSACTION_updateCOLR:I = 0xf

.field static final greylist-max-o TRANSACTION_updateCallBarring:I = 0xa

.field static final greylist-max-o TRANSACTION_updateCallBarringForServiceClass:I = 0x13

.field static final blacklist TRANSACTION_updateCallBarringWithPassword:I = 0x14

.field static final greylist-max-o TRANSACTION_updateCallForward:I = 0xb

.field static final greylist-max-o TRANSACTION_updateCallWaiting:I = 0xc


# direct methods
.method public constructor greylist-max-r <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 128
    const-string v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsUt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 136
    if-nez p0, :cond_0

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_0
    const-string v0, "com.android.ims.internal.IImsUt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 140
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsUt;

    if-eqz v1, :cond_1

    .line 141
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsUt;

    return-object v1

    .line 143
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsUt$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsUt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 152
    packed-switch p0, :pswitch_data_0

    .line 240
    const/4 v0, 0x0

    return-object v0

    .line 236
    :pswitch_0
    const-string v0, "isUssdEnabled"

    return-object v0

    .line 232
    :pswitch_1
    const-string/jumbo v0, "updateCallBarringWithPassword"

    return-object v0

    .line 228
    :pswitch_2
    const-string/jumbo v0, "updateCallBarringForServiceClass"

    return-object v0

    .line 224
    :pswitch_3
    const-string/jumbo v0, "queryCallBarringForServiceClass"

    return-object v0

    .line 220
    :pswitch_4
    const-string/jumbo v0, "setListener"

    return-object v0

    .line 216
    :pswitch_5
    const-string/jumbo v0, "updateCOLP"

    return-object v0

    .line 212
    :pswitch_6
    const-string/jumbo v0, "updateCOLR"

    return-object v0

    .line 208
    :pswitch_7
    const-string/jumbo v0, "updateCLIP"

    return-object v0

    .line 204
    :pswitch_8
    const-string/jumbo v0, "updateCLIR"

    return-object v0

    .line 200
    :pswitch_9
    const-string/jumbo v0, "updateCallWaiting"

    return-object v0

    .line 196
    :pswitch_a
    const-string/jumbo v0, "updateCallForward"

    return-object v0

    .line 192
    :pswitch_b
    const-string/jumbo v0, "updateCallBarring"

    return-object v0

    .line 188
    :pswitch_c
    const-string/jumbo v0, "transact"

    return-object v0

    .line 184
    :pswitch_d
    const-string/jumbo v0, "queryCOLP"

    return-object v0

    .line 180
    :pswitch_e
    const-string/jumbo v0, "queryCOLR"

    return-object v0

    .line 176
    :pswitch_f
    const-string/jumbo v0, "queryCLIP"

    return-object v0

    .line 172
    :pswitch_10
    const-string/jumbo v0, "queryCLIR"

    return-object v0

    .line 168
    :pswitch_11
    const-string/jumbo v0, "queryCallWaiting"

    return-object v0

    .line 164
    :pswitch_12
    const-string/jumbo v0, "queryCallForward"

    return-object v0

    .line 160
    :pswitch_13
    const-string/jumbo v0, "queryCallBarring"

    return-object v0

    .line 156
    :pswitch_14
    const-string v0, "close"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 147
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 933
    const/16 v0, 0x14

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 247
    invoke-static {p1}, Lcom/android/ims/internal/IImsUt$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 251
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.android.ims.internal.IImsUt"

    .line 252
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 253
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 263
    packed-switch v7, :pswitch_data_1

    .line 486
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 259
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    return v11

    .line 479
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsUt$Stub;->isUssdEnabled()Z

    move-result v0

    .line 480
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 482
    goto/16 :goto_0

    .line 462
    .end local v0    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 464
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 466
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 468
    .local v14, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 470
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 471
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 473
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    goto/16 :goto_0

    .line 446
    .end local v0    # "_result":I
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":[Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 448
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 450
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 453
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result v4

    .line 455
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    goto/16 :goto_0

    .line 434
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 436
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 437
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {v6, v0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallBarringForServiceClass(II)I

    move-result v2

    .line 439
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    goto/16 :goto_0

    .line 425
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/internal/IImsUtListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    .line 426
    .local v0, "_arg0":Lcom/android/ims/internal/IImsUtListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {v6, v0}, Lcom/android/ims/internal/IImsUt$Stub;->setListener(Lcom/android/ims/internal/IImsUtListener;)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    goto/16 :goto_0

    .line 415
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsUtListener;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 416
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {v6, v0}, Lcom/android/ims/internal/IImsUt$Stub;->updateCOLP(Z)I

    move-result v1

    .line 418
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    goto/16 :goto_0

    .line 405
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 406
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {v6, v0}, Lcom/android/ims/internal/IImsUt$Stub;->updateCOLR(I)I

    move-result v1

    .line 408
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    goto/16 :goto_0

    .line 395
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 396
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {v6, v0}, Lcom/android/ims/internal/IImsUt$Stub;->updateCLIP(Z)I

    move-result v1

    .line 398
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    goto/16 :goto_0

    .line 385
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 386
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {v6, v0}, Lcom/android/ims/internal/IImsUt$Stub;->updateCLIR(I)I

    move-result v1

    .line 388
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    goto/16 :goto_0

    .line 373
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 375
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 376
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {v6, v0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallWaiting(ZI)I

    move-result v2

    .line 378
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    goto/16 :goto_0

    .line 355
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 357
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 359
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 361
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 363
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 364
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallForward(IILjava/lang/String;II)I

    move-result v0

    .line 366
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    goto/16 :goto_0

    .line 341
    .end local v0    # "_result":I
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 343
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 345
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v3

    .line 348
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    goto/16 :goto_0

    .line 331
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_d
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 332
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {v6, v0}, Lcom/android/ims/internal/IImsUt$Stub;->transact(Landroid/os/Bundle;)I

    move-result v1

    .line 334
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    goto :goto_0

    .line 323
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":I
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCOLP()I

    move-result v0

    .line 324
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    goto :goto_0

    .line 316
    .end local v0    # "_result":I
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCOLR()I

    move-result v0

    .line 317
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    goto :goto_0

    .line 309
    .end local v0    # "_result":I
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCLIP()I

    move-result v0

    .line 310
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    goto :goto_0

    .line 302
    .end local v0    # "_result":I
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCLIR()I

    move-result v0

    .line 303
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    goto :goto_0

    .line 295
    .end local v0    # "_result":I
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallWaiting()I

    move-result v0

    .line 296
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    goto :goto_0

    .line 284
    .end local v0    # "_result":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 286
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {v6, v0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallForward(ILjava/lang/String;)I

    move-result v2

    .line 289
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    goto :goto_0

    .line 274
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 275
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {v6, v0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallBarring(I)I

    move-result v1

    .line 277
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    goto :goto_0

    .line 267
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsUt$Stub;->close()V

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    nop

    .line 489
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
