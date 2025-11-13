.class public abstract Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;
.super Landroid/os/Binder;
.source "IEngineeringModeService.java"

# interfaces
.implements Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getExpiryDate:I = 0x12

.field static final blacklist TRANSACTION_getID:I = 0x6

.field static final blacklist TRANSACTION_getLastTokenStatus:I = 0x17

.field static final blacklist TRANSACTION_getModes:I = 0x15

.field static final blacklist TRANSACTION_getNumOfModes:I = 0x7

.field static final blacklist TRANSACTION_getPriorityTime:I = 0x14

.field static final blacklist TRANSACTION_getRequestMsg:I = 0x2

.field static final blacklist TRANSACTION_getServerTime:I = 0x10

.field static final blacklist TRANSACTION_getStatus:I = 0x1

.field static final blacklist TRANSACTION_getStringModes:I = 0x16

.field static final blacklist TRANSACTION_getTUC:I = 0x11

.field static final blacklist TRANSACTION_getToken:I = 0xf

.field static final blacklist TRANSACTION_installToken:I = 0x3

.field static final blacklist TRANSACTION_installTokenForESS:I = 0xc

.field static final blacklist TRANSACTION_isTokenInstalled:I = 0x4

.field static final blacklist TRANSACTION_makeDelTokenForESS:I = 0x9

.field static final blacklist TRANSACTION_makeITLReq:I = 0xe

.field static final blacklist TRANSACTION_makeITLReqForESS:I = 0x18

.field static final blacklist TRANSACTION_makeTokenReq:I = 0xa

.field static final blacklist TRANSACTION_makeTokenReqForESS:I = 0xb

.field static final blacklist TRANSACTION_recoveryITL:I = 0xd

.field static final blacklist TRANSACTION_recoveryITLForESS:I = 0x19

.field static final blacklist TRANSACTION_removeToken:I = 0x5

.field static final blacklist TRANSACTION_sendFuseCmd:I = 0x8

.field static final blacklist TRANSACTION_setPriorityTime:I = 0x13


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 142
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 143
    const-string v0, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 151
    if-nez p0, :cond_0

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_0
    const-string v0, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 155
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    if-eqz v1, :cond_1

    .line 156
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    return-object v1

    .line 158
    :cond_1
    new-instance v1, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 167
    packed-switch p0, :pswitch_data_0

    .line 271
    const/4 v0, 0x0

    return-object v0

    .line 267
    :pswitch_0
    const-string/jumbo v0, "recoveryITLForESS"

    return-object v0

    .line 263
    :pswitch_1
    const-string v0, "makeITLReqForESS"

    return-object v0

    .line 259
    :pswitch_2
    const-string v0, "getLastTokenStatus"

    return-object v0

    .line 255
    :pswitch_3
    const-string v0, "getStringModes"

    return-object v0

    .line 251
    :pswitch_4
    const-string v0, "getModes"

    return-object v0

    .line 247
    :pswitch_5
    const-string v0, "getPriorityTime"

    return-object v0

    .line 243
    :pswitch_6
    const-string/jumbo v0, "setPriorityTime"

    return-object v0

    .line 239
    :pswitch_7
    const-string v0, "getExpiryDate"

    return-object v0

    .line 235
    :pswitch_8
    const-string v0, "getTUC"

    return-object v0

    .line 231
    :pswitch_9
    const-string v0, "getServerTime"

    return-object v0

    .line 227
    :pswitch_a
    const-string v0, "getToken"

    return-object v0

    .line 223
    :pswitch_b
    const-string v0, "makeITLReq"

    return-object v0

    .line 219
    :pswitch_c
    const-string/jumbo v0, "recoveryITL"

    return-object v0

    .line 215
    :pswitch_d
    const-string v0, "installTokenForESS"

    return-object v0

    .line 211
    :pswitch_e
    const-string v0, "makeTokenReqForESS"

    return-object v0

    .line 207
    :pswitch_f
    const-string v0, "makeTokenReq"

    return-object v0

    .line 203
    :pswitch_10
    const-string v0, "makeDelTokenForESS"

    return-object v0

    .line 199
    :pswitch_11
    const-string/jumbo v0, "sendFuseCmd"

    return-object v0

    .line 195
    :pswitch_12
    const-string v0, "getNumOfModes"

    return-object v0

    .line 191
    :pswitch_13
    const-string v0, "getID"

    return-object v0

    .line 187
    :pswitch_14
    const-string/jumbo v0, "removeToken"

    return-object v0

    .line 183
    :pswitch_15
    const-string v0, "isTokenInstalled"

    return-object v0

    .line 179
    :pswitch_16
    const-string v0, "installToken"

    return-object v0

    .line 175
    :pswitch_17
    const-string v0, "getRequestMsg"

    return-object v0

    .line 171
    :pswitch_18
    const-string v0, "getStatus"

    return-object v0

    nop

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 162
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1041
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 278
    invoke-static {p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 282
    const-string v0, "com.samsung.android.service.EngineeringMode.IEngineeringModeService"

    .line 283
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 284
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 294
    packed-switch p1, :pswitch_data_1

    .line 528
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 290
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    return v1

    .line 519
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->recoveryITLForESS(Ljava/lang/String;)I

    move-result v3

    .line 522
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    goto/16 :goto_0

    .line 509
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 510
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->makeITLReqForESS(Ljava/lang/String;)[B

    move-result-object v3

    .line 512
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 514
    goto/16 :goto_0

    .line 501
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[B
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getLastTokenStatus()Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    goto/16 :goto_0

    .line 494
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getStringModes()Ljava/lang/String;

    move-result-object v2

    .line 495
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    goto/16 :goto_0

    .line 487
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getModes()[I

    move-result-object v2

    .line 488
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 490
    goto/16 :goto_0

    .line 480
    .end local v2    # "_result":[I
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getPriorityTime()[B

    move-result-object v2

    .line 481
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 483
    goto/16 :goto_0

    .line 471
    .end local v2    # "_result":[B
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->setPriorityTime(Ljava/lang/String;)[B

    move-result-object v3

    .line 474
    .restart local v3    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 476
    goto/16 :goto_0

    .line 463
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[B
    :pswitch_8
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getExpiryDate()Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    goto/16 :goto_0

    .line 454
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 455
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getTUC(I)I

    move-result v3

    .line 457
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    goto/16 :goto_0

    .line 446
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getServerTime()J

    move-result-wide v2

    .line 447
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 449
    goto/16 :goto_0

    .line 439
    .end local v2    # "_result":J
    :pswitch_b
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getToken()[B

    move-result-object v2

    .line 440
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 442
    goto/16 :goto_0

    .line 428
    .end local v2    # "_result":[B
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 433
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 435
    goto/16 :goto_0

    .line 418
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":[B
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 419
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->recoveryITL([B)I

    move-result v3

    .line 421
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    goto/16 :goto_0

    .line 408
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->installTokenForESS(Ljava/lang/String;)[B

    move-result-object v3

    .line 411
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 413
    goto/16 :goto_0

    .line 398
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[B
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 399
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->makeTokenReqForESS(Ljava/lang/String;)[B

    move-result-object v3

    .line 401
    .restart local v3    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 403
    goto/16 :goto_0

    .line 382
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[B
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 388
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v6

    .line 391
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 393
    goto/16 :goto_0

    .line 372
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":[B
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->makeDelTokenForESS(Ljava/lang/String;)[B

    move-result-object v3

    .line 375
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 377
    goto/16 :goto_0

    .line 364
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[B
    :pswitch_12
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->sendFuseCmd()I

    move-result v2

    .line 365
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    goto/16 :goto_0

    .line 357
    .end local v2    # "_result":I
    :pswitch_13
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getNumOfModes()I

    move-result v2

    .line 358
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    goto :goto_0

    .line 350
    .end local v2    # "_result":I
    :pswitch_14
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getID()[B

    move-result-object v2

    .line 351
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 353
    goto :goto_0

    .line 343
    .end local v2    # "_result":[B
    :pswitch_15
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->removeToken()I

    move-result v2

    .line 344
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    goto :goto_0

    .line 336
    .end local v2    # "_result":I
    :pswitch_16
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->isTokenInstalled()I

    move-result v2

    .line 337
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    goto :goto_0

    .line 327
    .end local v2    # "_result":I
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 328
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->installToken([B)I

    move-result v3

    .line 330
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    goto :goto_0

    .line 311
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":I
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 317
    .restart local v4    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 318
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v6

    .line 320
    .restart local v6    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 322
    goto :goto_0

    .line 299
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":I
    .end local v6    # "_result":[B
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->getStatus(ILjava/lang/String;)I

    move-result v4

    .line 304
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    nop

    .line 531
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
