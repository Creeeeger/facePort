.class public abstract Landroid/service/euicc/IEuiccService$Stub;
.super Landroid/os/Binder;
.source "IEuiccService.java"

# interfaces
.implements Landroid/service/euicc/IEuiccService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/IEuiccService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IEuiccService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.euicc.IEuiccService"

.field static final greylist-max-o TRANSACTION_deleteSubscription:I = 0x9

.field static final greylist-max-o TRANSACTION_downloadSubscription:I = 0x1

.field static final blacklist TRANSACTION_dump:I = 0xf

.field static final greylist-max-o TRANSACTION_eraseSubscriptions:I = 0xc

.field static final blacklist TRANSACTION_eraseSubscriptionsWithOptions:I = 0xd

.field static final greylist-max-o TRANSACTION_getDefaultDownloadableSubscriptionList:I = 0x7

.field static final greylist-max-o TRANSACTION_getDownloadableSubscriptionMetadata:I = 0x2

.field static final greylist-max-o TRANSACTION_getEid:I = 0x3

.field static final greylist-max-o TRANSACTION_getEuiccInfo:I = 0x8

.field static final greylist-max-o TRANSACTION_getEuiccProfileInfoList:I = 0x6

.field static final greylist-max-o TRANSACTION_getOtaStatus:I = 0x4

.field static final greylist-max-o TRANSACTION_retainSubscriptionsForFactoryReset:I = 0xe

.field static final greylist-max-o TRANSACTION_startOtaIfNecessary:I = 0x5

.field static final greylist-max-o TRANSACTION_switchToSubscription:I = 0xa

.field static final greylist-max-o TRANSACTION_updateSubscriptionNickname:I = 0xb


# direct methods
.method public constructor greylist-max-r <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.service.euicc.IEuiccService"

    invoke-virtual {p0, p0, v0}, Landroid/service/euicc/IEuiccService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IEuiccService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    const-string v0, "android.service.euicc.IEuiccService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/euicc/IEuiccService;

    if-eqz v1, :cond_1

    .line 80
    move-object v1, v0

    check-cast v1, Landroid/service/euicc/IEuiccService;

    return-object v1

    .line 82
    :cond_1
    new-instance v1, Landroid/service/euicc/IEuiccService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/euicc/IEuiccService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_0

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 151
    :pswitch_0
    const-string v0, "dump"

    return-object v0

    .line 147
    :pswitch_1
    const-string/jumbo v0, "retainSubscriptionsForFactoryReset"

    return-object v0

    .line 143
    :pswitch_2
    const-string v0, "eraseSubscriptionsWithOptions"

    return-object v0

    .line 139
    :pswitch_3
    const-string v0, "eraseSubscriptions"

    return-object v0

    .line 135
    :pswitch_4
    const-string/jumbo v0, "updateSubscriptionNickname"

    return-object v0

    .line 131
    :pswitch_5
    const-string/jumbo v0, "switchToSubscription"

    return-object v0

    .line 127
    :pswitch_6
    const-string v0, "deleteSubscription"

    return-object v0

    .line 123
    :pswitch_7
    const-string v0, "getEuiccInfo"

    return-object v0

    .line 119
    :pswitch_8
    const-string v0, "getDefaultDownloadableSubscriptionList"

    return-object v0

    .line 115
    :pswitch_9
    const-string v0, "getEuiccProfileInfoList"

    return-object v0

    .line 111
    :pswitch_a
    const-string/jumbo v0, "startOtaIfNecessary"

    return-object v0

    .line 107
    :pswitch_b
    const-string/jumbo v0, "getOtaStatus"

    return-object v0

    .line 103
    :pswitch_c
    const-string v0, "getEid"

    return-object v0

    .line 99
    :pswitch_d
    const-string v0, "getDownloadableSubscriptionMetadata"

    return-object v0

    .line 95
    :pswitch_e
    const-string v0, "downloadSubscription"

    return-object v0

    nop

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 612
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 162
    invoke-static {p1}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 166
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    const-string v11, "android.service.euicc.IEuiccService"

    .line 167
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v9, v12, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 168
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 178
    move-object/from16 v13, p3

    packed-switch v9, :pswitch_data_1

    .line 362
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 174
    :pswitch_0
    move-object/from16 v13, p3

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    return v12

    .line 355
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/euicc/IEuiccServiceDumpResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IEuiccServiceDumpResultCallback;

    move-result-object v0

    .line 356
    .local v0, "_arg0":Landroid/service/euicc/IEuiccServiceDumpResultCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {v8, v0}, Landroid/service/euicc/IEuiccService$Stub;->dump(Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V

    .line 358
    goto/16 :goto_0

    .line 345
    .end local v0    # "_arg0":Landroid/service/euicc/IEuiccServiceDumpResultCallback;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 347
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;

    move-result-object v1

    .line 348
    .local v1, "_arg1":Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {v8, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->retainSubscriptionsForFactoryReset(ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V

    .line 350
    goto/16 :goto_0

    .line 333
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 335
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 337
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/euicc/IEraseSubscriptionsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IEraseSubscriptionsCallback;

    move-result-object v2

    .line 338
    .local v2, "_arg2":Landroid/service/euicc/IEraseSubscriptionsCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {v8, v0, v1, v2}, Landroid/service/euicc/IEuiccService$Stub;->eraseSubscriptionsWithOptions(IILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    .line 340
    goto/16 :goto_0

    .line 323
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/service/euicc/IEraseSubscriptionsCallback;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 325
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IEraseSubscriptionsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IEraseSubscriptionsCallback;

    move-result-object v1

    .line 326
    .local v1, "_arg1":Landroid/service/euicc/IEraseSubscriptionsCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {v8, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    .line 328
    goto/16 :goto_0

    .line 309
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/service/euicc/IEraseSubscriptionsCallback;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 311
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IUpdateSubscriptionNicknameCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;

    move-result-object v3

    .line 316
    .local v3, "_arg3":Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/service/euicc/IEuiccService$Stub;->updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V

    .line 318
    goto/16 :goto_0

    .line 291
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 293
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 295
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 297
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 299
    .local v16, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/euicc/ISwitchToSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/ISwitchToSubscriptionCallback;

    move-result-object v17

    .line 301
    .local v17, "_arg4":Landroid/service/euicc/ISwitchToSubscriptionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 302
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    move-object/from16 v0, p0

    move v1, v7

    move v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/service/euicc/IEuiccService$Stub;->switchToSubscription(IILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;Z)V

    .line 304
    goto/16 :goto_0

    .line 279
    .end local v7    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg4":Landroid/service/euicc/ISwitchToSubscriptionCallback;
    .end local v18    # "_arg5":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 281
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/euicc/IDeleteSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IDeleteSubscriptionCallback;

    move-result-object v2

    .line 284
    .local v2, "_arg2":Landroid/service/euicc/IDeleteSubscriptionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {v8, v0, v1, v2}, Landroid/service/euicc/IEuiccService$Stub;->deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V

    .line 286
    goto/16 :goto_0

    .line 269
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/service/euicc/IDeleteSubscriptionCallback;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 271
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IGetEuiccInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetEuiccInfoCallback;

    move-result-object v1

    .line 272
    .local v1, "_arg1":Landroid/service/euicc/IGetEuiccInfoCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {v8, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V

    .line 274
    goto/16 :goto_0

    .line 257
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/service/euicc/IGetEuiccInfoCallback;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 261
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;

    move-result-object v2

    .line 262
    .local v2, "_arg2":Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {v8, v0, v1, v2}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V

    .line 264
    goto/16 :goto_0

    .line 247
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 249
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IGetEuiccProfileInfoListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetEuiccProfileInfoListCallback;

    move-result-object v1

    .line 250
    .local v1, "_arg1":Landroid/service/euicc/IGetEuiccProfileInfoListCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {v8, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V

    .line 252
    goto/16 :goto_0

    .line 237
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/service/euicc/IGetEuiccProfileInfoListCallback;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 239
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IOtaStatusChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IOtaStatusChangedCallback;

    move-result-object v1

    .line 240
    .local v1, "_arg1":Landroid/service/euicc/IOtaStatusChangedCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {v8, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->startOtaIfNecessary(ILandroid/service/euicc/IOtaStatusChangedCallback;)V

    .line 242
    goto/16 :goto_0

    .line 227
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/service/euicc/IOtaStatusChangedCallback;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 229
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IGetOtaStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetOtaStatusCallback;

    move-result-object v1

    .line 230
    .local v1, "_arg1":Landroid/service/euicc/IGetOtaStatusCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {v8, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->getOtaStatus(ILandroid/service/euicc/IGetOtaStatusCallback;)V

    .line 232
    goto/16 :goto_0

    .line 217
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/service/euicc/IGetOtaStatusCallback;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 219
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IGetEidCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetEidCallback;

    move-result-object v1

    .line 220
    .local v1, "_arg1":Landroid/service/euicc/IGetEidCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {v8, v0, v1}, Landroid/service/euicc/IEuiccService$Stub;->getEid(ILandroid/service/euicc/IGetEidCallback;)V

    .line 222
    goto :goto_0

    .line 203
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/service/euicc/IGetEidCallback;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/euicc/DownloadableSubscription;

    .line 207
    .local v1, "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 209
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;

    move-result-object v3

    .line 210
    .local v3, "_arg3":Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/service/euicc/IEuiccService$Stub;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V

    .line 212
    goto :goto_0

    .line 183
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 185
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 187
    .local v15, "_arg1":I
    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/telephony/euicc/DownloadableSubscription;

    .line 189
    .local v16, "_arg2":Landroid/telephony/euicc/DownloadableSubscription;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 191
    .local v17, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 193
    .local v18, "_arg4":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Bundle;

    .line 195
    .local v19, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/euicc/IDownloadSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IDownloadSubscriptionCallback;

    move-result-object v20

    .line 196
    .local v20, "_arg6":Landroid/service/euicc/IDownloadSubscriptionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/service/euicc/IEuiccService$Stub;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Landroid/service/euicc/IDownloadSubscriptionCallback;)V

    .line 198
    nop

    .line 365
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Landroid/telephony/euicc/DownloadableSubscription;
    .end local v17    # "_arg3":Z
    .end local v18    # "_arg4":Z
    .end local v19    # "_arg5":Landroid/os/Bundle;
    .end local v20    # "_arg6":Landroid/service/euicc/IDownloadSubscriptionCallback;
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
