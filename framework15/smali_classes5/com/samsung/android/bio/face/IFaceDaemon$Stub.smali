.class public abstract Lcom/samsung/android/bio/face/IFaceDaemon$Stub;
.super Landroid/os/Binder;
.source "IFaceDaemon.java"

# interfaces
.implements Lcom/samsung/android/bio/face/IFaceDaemon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/IFaceDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_authenticate:I = 0x1

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x2

.field static final blacklist TRANSACTION_cancelEnrollment:I = 0x4

.field static final blacklist TRANSACTION_cancelEnumeration:I = 0xf

.field static final blacklist TRANSACTION_closeHal:I = 0xa

.field static final blacklist TRANSACTION_createInputSurface:I = 0x12

.field static final blacklist TRANSACTION_enroll:I = 0x3

.field static final blacklist TRANSACTION_enumerate:I = 0xe

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0x7

.field static final blacklist TRANSACTION_init:I = 0xb

.field static final blacklist TRANSACTION_installTA:I = 0x15

.field static final blacklist TRANSACTION_openHal:I = 0x9

.field static final blacklist TRANSACTION_postEnroll:I = 0xc

.field static final blacklist TRANSACTION_preEnroll:I = 0x5

.field static final blacklist TRANSACTION_processFrontImage:I = 0x10

.field static final blacklist TRANSACTION_release:I = 0x13

.field static final blacklist TRANSACTION_releasePreviewSurface:I = 0x14

.field static final blacklist TRANSACTION_remove:I = 0x6

.field static final blacklist TRANSACTION_request:I = 0xd

.field static final blacklist TRANSACTION_setActiveGroup:I = 0x8

.field static final blacklist TRANSACTION_setPreviewTarget:I = 0x11


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 108
    const-string v0, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceDaemon;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 116
    if-nez p0, :cond_0

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    const-string v0, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 120
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/bio/face/IFaceDaemon;

    if-eqz v1, :cond_1

    .line 121
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/bio/face/IFaceDaemon;

    return-object v1

    .line 123
    :cond_1
    new-instance v1, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;
    .locals 1

    .line 1033
    sget-object v0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/bio/face/IFaceDaemon;

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 132
    packed-switch p0, :pswitch_data_0

    .line 220
    const/4 v0, 0x0

    return-object v0

    .line 216
    :pswitch_0
    const-string v0, "installTA"

    return-object v0

    .line 212
    :pswitch_1
    const-string v0, "releasePreviewSurface"

    return-object v0

    .line 208
    :pswitch_2
    const-string v0, "release"

    return-object v0

    .line 204
    :pswitch_3
    const-string v0, "createInputSurface"

    return-object v0

    .line 200
    :pswitch_4
    const-string v0, "setPreviewTarget"

    return-object v0

    .line 196
    :pswitch_5
    const-string v0, "processFrontImage"

    return-object v0

    .line 192
    :pswitch_6
    const-string v0, "cancelEnumeration"

    return-object v0

    .line 188
    :pswitch_7
    const-string v0, "enumerate"

    return-object v0

    .line 184
    :pswitch_8
    const-string v0, "request"

    return-object v0

    .line 180
    :pswitch_9
    const-string v0, "postEnroll"

    return-object v0

    .line 176
    :pswitch_a
    const-string v0, "init"

    return-object v0

    .line 172
    :pswitch_b
    const-string v0, "closeHal"

    return-object v0

    .line 168
    :pswitch_c
    const-string v0, "openHal"

    return-object v0

    .line 164
    :pswitch_d
    const-string v0, "setActiveGroup"

    return-object v0

    .line 160
    :pswitch_e
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 156
    :pswitch_f
    const-string v0, "remove"

    return-object v0

    .line 152
    :pswitch_10
    const-string v0, "preEnroll"

    return-object v0

    .line 148
    :pswitch_11
    const-string v0, "cancelEnrollment"

    return-object v0

    .line 144
    :pswitch_12
    const-string v0, "enroll"

    return-object v0

    .line 140
    :pswitch_13
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 136
    :pswitch_14
    const-string v0, "authenticate"

    return-object v0

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

.method public static blacklist setDefaultImpl(Lcom/samsung/android/bio/face/IFaceDaemon;)Z
    .locals 2
    .param p0, "impl"    # Lcom/samsung/android/bio/face/IFaceDaemon;

    .line 1023
    sget-object v0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/bio/face/IFaceDaemon;

    if-nez v0, :cond_1

    .line 1026
    if-eqz p0, :cond_0

    .line 1027
    sput-object p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/bio/face/IFaceDaemon;

    .line 1028
    const/4 v0, 0x1

    return v0

    .line 1030
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1024
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 127
    return-object p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 227
    invoke-static {p1}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const-string v9, "com.samsung.android.bio.face.IFaceDaemon"

    .line 232
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    packed-switch p1, :pswitch_data_0

    .line 240
    packed-switch p1, :pswitch_data_1

    .line 480
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 236
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    return v10

    .line 468
    :pswitch_1
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 472
    .local v0, "_arg0":Ljava/io/FileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 473
    .local v1, "_arg1":J
    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->installTA(Ljava/io/FileDescriptor;J)I

    move-result v3

    .line 474
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    return v10

    .line 460
    .end local v0    # "_arg0":Ljava/io/FileDescriptor;
    .end local v1    # "_arg1":J
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->releasePreviewSurface()I

    move-result v0

    .line 462
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    return v10

    .line 450
    .end local v0    # "_result":I
    :pswitch_3
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 453
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->release(I)I

    move-result v1

    .line 454
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    return v10

    .line 436
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_4
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 440
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 442
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 443
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->createInputSurface(III)Landroid/os/IBinder;

    move-result-object v3

    .line 444
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 446
    return v10

    .line 422
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_5
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 426
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 428
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 429
    .restart local v2    # "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->setPreviewTarget(Landroid/os/IBinder;II)I

    move-result v3

    .line 430
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    return v10

    .line 404
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 408
    .local v11, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 410
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 412
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 414
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 415
    .local v15, "_arg4":I
    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->processFrontImage([BIIII)I

    move-result v0

    .line 416
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    return v10

    .line 396
    .end local v0    # "_result":I
    .end local v11    # "_arg0":[B
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    :pswitch_7
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->cancelEnumeration()I

    move-result v0

    .line 398
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    return v10

    .line 388
    .end local v0    # "_result":I
    :pswitch_8
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->enumerate()I

    move-result v0

    .line 390
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    return v10

    .line 365
    .end local v0    # "_result":I
    :pswitch_9
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 369
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 371
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 372
    .local v2, "_arg2_length":I
    if-gez v2, :cond_0

    .line 373
    const/4 v3, 0x0

    .local v3, "_arg2":[B
    goto :goto_0

    .line 376
    .end local v3    # "_arg2":[B
    :cond_0
    new-array v3, v2, [B

    .line 379
    .restart local v3    # "_arg2":[B
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 380
    .local v4, "_arg3":I
    invoke-virtual {v6, v0, v1, v3, v4}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->request(I[B[BI)I

    move-result v5

    .line 381
    .local v5, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {v8, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 384
    return v10

    .line 357
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2_length":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    :pswitch_a
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->postEnroll()I

    move-result v0

    .line 359
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    return v10

    .line 348
    .end local v0    # "_result":I
    :pswitch_b
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceDaemonCallback;

    move-result-object v0

    .line 351
    .local v0, "_arg0":Lcom/samsung/android/bio/face/IFaceDaemonCallback;
    invoke-virtual {v6, v0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->init(Lcom/samsung/android/bio/face/IFaceDaemonCallback;)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    return v10

    .line 340
    .end local v0    # "_arg0":Lcom/samsung/android/bio/face/IFaceDaemonCallback;
    :pswitch_c
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->closeHal()I

    move-result v0

    .line 342
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    return v10

    .line 332
    .end local v0    # "_result":I
    :pswitch_d
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->openHal()J

    move-result-wide v0

    .line 334
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 336
    return v10

    .line 320
    .end local v0    # "_result":J
    :pswitch_e
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 324
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 325
    .restart local v1    # "_arg1":[B
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->setActiveGroup(I[B)I

    move-result v2

    .line 326
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    return v10

    .line 312
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":I
    :pswitch_f
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getAuthenticatorId()J

    move-result-wide v0

    .line 314
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 316
    return v10

    .line 300
    .end local v0    # "_result":J
    :pswitch_10
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 305
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->remove(II)I

    move-result v2

    .line 306
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    return v10

    .line 292
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_11
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->preEnroll()J

    move-result-wide v0

    .line 294
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 296
    return v10

    .line 284
    .end local v0    # "_result":J
    :pswitch_12
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->cancelEnrollment()I

    move-result v0

    .line 286
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    return v10

    .line 268
    .end local v0    # "_result":I
    :pswitch_13
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 272
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 274
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 277
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->enroll([BIII)I

    move-result v4

    .line 278
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    return v10

    .line 260
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_14
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->cancelAuthentication()I

    move-result v0

    .line 262
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    return v10

    .line 244
    .end local v0    # "_result":I
    :pswitch_15
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 248
    .local v11, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 250
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 252
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 253
    .local v15, "_arg3":[B
    move-object/from16 v0, p0

    move-wide v1, v11

    move v3, v13

    move v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->authenticate(JII[B)I

    move-result v0

    .line 254
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    return v10

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
