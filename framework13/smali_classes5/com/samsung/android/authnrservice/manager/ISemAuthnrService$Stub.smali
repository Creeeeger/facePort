.class public abstract Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;
.super Landroid/os/Binder;
.source "ISemAuthnrService.java"

# interfaces
.implements Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_deleteFile:I = 0xb

.field static final blacklist TRANSACTION_getDrkKeyHandle:I = 0x9

.field static final blacklist TRANSACTION_getFiles:I = 0xc

.field static final blacklist TRANSACTION_getMatchedFilePaths:I = 0x11

.field static final blacklist TRANSACTION_getVersion:I = 0x1

.field static final blacklist TRANSACTION_getWrappedObject:I = 0x6

.field static final blacklist TRANSACTION_initialize:I = 0x2

.field static final blacklist TRANSACTION_initializeDrk:I = 0x7

.field static final blacklist TRANSACTION_initializePreloadedTa:I = 0x12

.field static final blacklist TRANSACTION_initializeWithPreloadedTa:I = 0xd

.field static final blacklist TRANSACTION_process:I = 0x4

.field static final blacklist TRANSACTION_processPreloadedTa:I = 0x14

.field static final blacklist TRANSACTION_processWithPreloadedTa:I = 0xf

.field static final blacklist TRANSACTION_readFile:I = 0x10

.field static final blacklist TRANSACTION_setChallenge:I = 0x5

.field static final blacklist TRANSACTION_terminate:I = 0x3

.field static final blacklist TRANSACTION_terminateDrk:I = 0x8

.field static final blacklist TRANSACTION_terminatePreloadedTa:I = 0x13

.field static final blacklist TRANSACTION_terminateWithPreloadedTa:I = 0xe

.field static final blacklist TRANSACTION_writeFile:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 109
    const-string v0, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 117
    if-nez p0, :cond_0

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_0
    const-string v0, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 121
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    if-eqz v1, :cond_1

    .line 122
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    return-object v1

    .line 124
    :cond_1
    new-instance v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 133
    packed-switch p0, :pswitch_data_0

    .line 217
    const/4 v0, 0x0

    return-object v0

    .line 213
    :pswitch_0
    const-string/jumbo v0, "processPreloadedTa"

    return-object v0

    .line 209
    :pswitch_1
    const-string/jumbo v0, "terminatePreloadedTa"

    return-object v0

    .line 205
    :pswitch_2
    const-string v0, "initializePreloadedTa"

    return-object v0

    .line 201
    :pswitch_3
    const-string v0, "getMatchedFilePaths"

    return-object v0

    .line 197
    :pswitch_4
    const-string/jumbo v0, "readFile"

    return-object v0

    .line 193
    :pswitch_5
    const-string/jumbo v0, "processWithPreloadedTa"

    return-object v0

    .line 189
    :pswitch_6
    const-string/jumbo v0, "terminateWithPreloadedTa"

    return-object v0

    .line 185
    :pswitch_7
    const-string v0, "initializeWithPreloadedTa"

    return-object v0

    .line 181
    :pswitch_8
    const-string v0, "getFiles"

    return-object v0

    .line 177
    :pswitch_9
    const-string v0, "deleteFile"

    return-object v0

    .line 173
    :pswitch_a
    const-string/jumbo v0, "writeFile"

    return-object v0

    .line 169
    :pswitch_b
    const-string v0, "getDrkKeyHandle"

    return-object v0

    .line 165
    :pswitch_c
    const-string/jumbo v0, "terminateDrk"

    return-object v0

    .line 161
    :pswitch_d
    const-string v0, "initializeDrk"

    return-object v0

    .line 157
    :pswitch_e
    const-string v0, "getWrappedObject"

    return-object v0

    .line 153
    :pswitch_f
    const-string/jumbo v0, "setChallenge"

    return-object v0

    .line 149
    :pswitch_10
    const-string/jumbo v0, "process"

    return-object v0

    .line 145
    :pswitch_11
    const-string/jumbo v0, "terminate"

    return-object v0

    .line 141
    :pswitch_12
    const-string v0, "initialize"

    return-object v0

    .line 137
    :pswitch_13
    const-string v0, "getVersion"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 128
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 848
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 224
    invoke-static {p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 228
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    .line 229
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 230
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 240
    packed-switch v7, :pswitch_data_1

    .line 437
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 236
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    return v11

    .line 426
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 428
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 429
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->processPreloadedTa(I[B)[B

    move-result-object v2

    .line 431
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 433
    goto/16 :goto_0

    .line 416
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":[B
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 417
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {v6, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->terminatePreloadedTa(I)Z

    move-result v1

    .line 419
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 421
    goto/16 :goto_0

    .line 406
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 407
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {v6, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->initializePreloadedTa(I)Z

    move-result v1

    .line 409
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 411
    goto/16 :goto_0

    .line 394
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 399
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 401
    goto/16 :goto_0

    .line 384
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 385
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {v6, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    goto/16 :goto_0

    .line 372
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 374
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->processWithPreloadedTa([BLjava/lang/String;)[B

    move-result-object v2

    .line 377
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 379
    goto/16 :goto_0

    .line 364
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":[B
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->terminateWithPreloadedTa()Z

    move-result v0

    .line 365
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 367
    goto/16 :goto_0

    .line 357
    .end local v0    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->initializeWithPreloadedTa()Z

    move-result v0

    .line 358
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 360
    goto/16 :goto_0

    .line 346
    .end local v0    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 349
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 351
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 353
    goto/16 :goto_0

    .line 336
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {v6, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    .line 339
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 341
    goto/16 :goto_0

    .line 324
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 326
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->writeFile([BLjava/lang/String;)Z

    move-result v2

    .line 329
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 331
    goto/16 :goto_0

    .line 316
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getDrkKeyHandle()[B

    move-result-object v0

    .line 317
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 319
    goto/16 :goto_0

    .line 309
    .end local v0    # "_result":[B
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->terminateDrk()Z

    move-result v0

    .line 310
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 312
    goto/16 :goto_0

    .line 302
    .end local v0    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->initializeDrk()Z

    move-result v0

    .line 303
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 305
    goto/16 :goto_0

    .line 293
    .end local v0    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 294
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {v6, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getWrappedObject([B)[B

    move-result-object v1

    .line 296
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 298
    goto :goto_0

    .line 283
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":[B
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 284
    .restart local v0    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {v6, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->setChallenge([B)Z

    move-result v1

    .line 286
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 288
    goto :goto_0

    .line 273
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":Z
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 274
    .restart local v0    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {v6, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->process([B)[B

    move-result-object v1

    .line 276
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 278
    goto :goto_0

    .line 265
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":[B
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->terminate()Z

    move-result v0

    .line 266
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 268
    goto :goto_0

    .line 252
    .end local v0    # "_result":Z
    :pswitch_13
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/ParcelFileDescriptor;

    .line 254
    .local v12, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 256
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 257
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v13

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->initialize(Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v0

    .line 259
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 261
    goto :goto_0

    .line 244
    .end local v0    # "_result":Z
    .end local v12    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":J
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getVersion()I

    move-result v0

    .line 245
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    nop

    .line 440
    .end local v0    # "_result":I
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
