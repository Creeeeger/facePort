.class public abstract Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;
.super Landroid/os/Binder;
.source "IUceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/uceservice/IUceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/uceservice/IUceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.uceservice.IUceService"

.field static final greylist-max-o TRANSACTION_createOptionsService:I = 0x4

.field static final blacklist TRANSACTION_createOptionsServiceForSubscription:I = 0x5

.field static final greylist-max-o TRANSACTION_createPresenceService:I = 0x7

.field static final blacklist TRANSACTION_createPresenceServiceForSubscription:I = 0x8

.field static final greylist-max-o TRANSACTION_destroyOptionsService:I = 0x6

.field static final greylist-max-o TRANSACTION_destroyPresenceService:I = 0x9

.field static final greylist-max-o TRANSACTION_getOptionsService:I = 0xd

.field static final blacklist TRANSACTION_getOptionsServiceForSubscription:I = 0xe

.field static final greylist-max-o TRANSACTION_getPresenceService:I = 0xb

.field static final blacklist TRANSACTION_getPresenceServiceForSubscription:I = 0xc

.field static final greylist-max-o TRANSACTION_getServiceStatus:I = 0xa

.field static final greylist-max-o TRANSACTION_isServiceStarted:I = 0x3

.field static final greylist-max-o TRANSACTION_startService:I = 0x1

.field static final greylist-max-o TRANSACTION_stopService:I = 0x2


# direct methods
.method public constructor greylist-max-r <init>()V
    .locals 1

    .line 211
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 212
    const-string v0, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 220
    if-nez p0, :cond_0

    .line 221
    const/4 v0, 0x0

    return-object v0

    .line 223
    :cond_0
    const-string v0, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 224
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/uce/uceservice/IUceService;

    if-eqz v1, :cond_1

    .line 225
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-object v1

    .line 227
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 236
    packed-switch p0, :pswitch_data_0

    .line 296
    const/4 v0, 0x0

    return-object v0

    .line 292
    :pswitch_0
    const-string v0, "getOptionsServiceForSubscription"

    return-object v0

    .line 288
    :pswitch_1
    const-string v0, "getOptionsService"

    return-object v0

    .line 284
    :pswitch_2
    const-string v0, "getPresenceServiceForSubscription"

    return-object v0

    .line 280
    :pswitch_3
    const-string v0, "getPresenceService"

    return-object v0

    .line 276
    :pswitch_4
    const-string v0, "getServiceStatus"

    return-object v0

    .line 272
    :pswitch_5
    const-string v0, "destroyPresenceService"

    return-object v0

    .line 268
    :pswitch_6
    const-string v0, "createPresenceServiceForSubscription"

    return-object v0

    .line 264
    :pswitch_7
    const-string v0, "createPresenceService"

    return-object v0

    .line 260
    :pswitch_8
    const-string v0, "destroyOptionsService"

    return-object v0

    .line 256
    :pswitch_9
    const-string v0, "createOptionsServiceForSubscription"

    return-object v0

    .line 252
    :pswitch_a
    const-string v0, "createOptionsService"

    return-object v0

    .line 248
    :pswitch_b
    const-string v0, "isServiceStarted"

    return-object v0

    .line 244
    :pswitch_c
    const-string/jumbo v0, "stopService"

    return-object v0

    .line 240
    :pswitch_d
    const-string/jumbo v0, "startService"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 231
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 892
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 303
    invoke-static {p1}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 307
    const-string v0, "com.android.ims.internal.uce.uceservice.IUceService"

    .line 308
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 309
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 319
    packed-switch p1, :pswitch_data_1

    .line 462
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 315
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    return v1

    .line 453
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getOptionsServiceForSubscription(Ljava/lang/String;)Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object v3

    .line 456
    .local v3, "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 458
    goto/16 :goto_0

    .line 445
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object v2

    .line 446
    .local v2, "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 448
    goto/16 :goto_0

    .line 436
    .end local v2    # "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getPresenceServiceForSubscription(Ljava/lang/String;)Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object v3

    .line 439
    .local v3, "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 441
    goto/16 :goto_0

    .line 428
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object v2

    .line 429
    .local v2, "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 431
    goto/16 :goto_0

    .line 421
    .end local v2    # "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getServiceStatus()Z

    move-result v2

    .line 422
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 424
    goto/16 :goto_0

    .line 413
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 414
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->destroyPresenceService(I)V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    goto/16 :goto_0

    .line 398
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v2

    .line 400
    .local v2, "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    sget-object v3, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    .line 402
    .local v3, "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createPresenceServiceForSubscription(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I

    move-result v5

    .line 405
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 408
    goto/16 :goto_0

    .line 385
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v2

    .line 387
    .restart local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    sget-object v3, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    .line 388
    .restart local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createPresenceService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result v4

    .line 390
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 393
    goto/16 :goto_0

    .line 376
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v4    # "_result":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 377
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->destroyOptionsService(I)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    goto :goto_0

    .line 361
    .end local v2    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    move-result-object v2

    .line 363
    .local v2, "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    sget-object v3, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    .line 365
    .restart local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createOptionsServiceForSubscription(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I

    move-result v5

    .line 368
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 371
    goto :goto_0

    .line 348
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    move-result-object v2

    .line 350
    .restart local v2    # "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    sget-object v3, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    .line 351
    .restart local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result v4

    .line 353
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 356
    goto :goto_0

    .line 340
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v4    # "_result":I
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->isServiceStarted()Z

    move-result v2

    .line 341
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 343
    goto :goto_0

    .line 333
    .end local v2    # "_result":Z
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->stopService()Z

    move-result v2

    .line 334
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 336
    goto :goto_0

    .line 324
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/uce/uceservice/IUceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceListener;

    move-result-object v2

    .line 325
    .local v2, "_arg0":Lcom/android/ims/internal/uce/uceservice/IUceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->startService(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z

    move-result v3

    .line 327
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 329
    nop

    .line 465
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/uceservice/IUceListener;
    .end local v3    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
