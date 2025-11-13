.class public abstract Lcom/android/net/IProxyService$Stub;
.super Landroid/os/Binder;
.source "IProxyService.java"

# interfaces
.implements Lcom/android/net/IProxyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/IProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/IProxyService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getProxyPortForProfile:I = 0x9

.field static final blacklist TRANSACTION_getProxythreadStatus:I = 0xd

.field static final blacklist TRANSACTION_handleScreenunlock:I = 0xa

.field static final blacklist TRANSACTION_isProxyThreadAlive:I = 0xe

.field static final blacklist TRANSACTION_isProxyThreadRunning:I = 0xc

.field static final blacklist TRANSACTION_resetInterface:I = 0xb

.field static final blacklist TRANSACTION_resolvePacFile:I = 0x1

.field static final blacklist TRANSACTION_setMiscValueForPacProfile:I = 0x8

.field static final blacklist TRANSACTION_setPacFile:I = 0x2

.field static final blacklist TRANSACTION_setPacFileForKnoxProfile:I = 0x7

.field static final blacklist TRANSACTION_startPacSystemForKnoxProfile:I = 0x3

.field static final blacklist TRANSACTION_startProxyServerForKnoxProfile:I = 0x5

.field static final blacklist TRANSACTION_stopPacSystemForKnoxProfile:I = 0x4

.field static final blacklist TRANSACTION_stopProxyServerForKnoxProfile:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    const-string v0, "com.android.net.IProxyService"

    invoke-virtual {p0, p0, v0}, Lcom/android/net/IProxyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    const-string v0, "com.android.net.IProxyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 92
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/net/IProxyService;

    if-eqz v1, :cond_1

    .line 93
    move-object v1, v0

    check-cast v1, Lcom/android/net/IProxyService;

    return-object v1

    .line 95
    :cond_1
    new-instance v1, Lcom/android/net/IProxyService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/net/IProxyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 104
    packed-switch p0, :pswitch_data_0

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 160
    :pswitch_0
    const-string v0, "isProxyThreadAlive"

    return-object v0

    .line 156
    :pswitch_1
    const-string v0, "getProxythreadStatus"

    return-object v0

    .line 152
    :pswitch_2
    const-string v0, "isProxyThreadRunning"

    return-object v0

    .line 148
    :pswitch_3
    const-string/jumbo v0, "resetInterface"

    return-object v0

    .line 144
    :pswitch_4
    const-string v0, "handleScreenunlock"

    return-object v0

    .line 140
    :pswitch_5
    const-string v0, "getProxyPortForProfile"

    return-object v0

    .line 136
    :pswitch_6
    const-string/jumbo v0, "setMiscValueForPacProfile"

    return-object v0

    .line 132
    :pswitch_7
    const-string/jumbo v0, "setPacFileForKnoxProfile"

    return-object v0

    .line 128
    :pswitch_8
    const-string/jumbo v0, "stopProxyServerForKnoxProfile"

    return-object v0

    .line 124
    :pswitch_9
    const-string/jumbo v0, "startProxyServerForKnoxProfile"

    return-object v0

    .line 120
    :pswitch_a
    const-string/jumbo v0, "stopPacSystemForKnoxProfile"

    return-object v0

    .line 116
    :pswitch_b
    const-string/jumbo v0, "startPacSystemForKnoxProfile"

    return-object v0

    .line 112
    :pswitch_c
    const-string/jumbo v0, "setPacFile"

    return-object v0

    .line 108
    :pswitch_d
    const-string/jumbo v0, "resolvePacFile"

    return-object v0

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

    .line 99
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 636
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 171
    invoke-static {p1}, Lcom/android/net/IProxyService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 175
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p3

    const-string v11, "com.android.net.IProxyService"

    .line 176
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v9, v12, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 177
    move-object/from16 v13, p2

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_0
    move-object/from16 v13, p2

    .line 179
    :goto_0
    packed-switch v9, :pswitch_data_0

    .line 187
    packed-switch v9, :pswitch_data_1

    .line 345
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 183
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    return v12

    .line 336
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {v8, v0}, Lcom/android/net/IProxyService$Stub;->isProxyThreadAlive(Ljava/lang/String;)Z

    move-result v1

    .line 339
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 341
    goto/16 :goto_1

    .line 326
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {v8, v0}, Lcom/android/net/IProxyService$Stub;->getProxythreadStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    goto/16 :goto_1

    .line 316
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {v8, v0}, Lcom/android/net/IProxyService$Stub;->isProxyThreadRunning(Ljava/lang/String;)Z

    move-result v1

    .line 319
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 321
    goto/16 :goto_1

    .line 307
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {v8, v0}, Lcom/android/net/IProxyService$Stub;->resetInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    goto/16 :goto_1

    .line 300
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/net/IProxyService$Stub;->handleScreenunlock()V

    .line 301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    goto/16 :goto_1

    .line 291
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {v8, v0}, Lcom/android/net/IProxyService$Stub;->getProxyPortForProfile(Ljava/lang/String;)I

    move-result v1

    .line 294
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    goto/16 :goto_1

    .line 275
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 282
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/net/IProxyService$Stub;->setMiscValueForPacProfile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 284
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 286
    goto/16 :goto_1

    .line 263
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 266
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {v8, v0, v1}, Lcom/android/net/IProxyService$Stub;->setPacFileForKnoxProfile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 268
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 270
    goto/16 :goto_1

    .line 254
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {v8, v0}, Lcom/android/net/IProxyService$Stub;->stopProxyServerForKnoxProfile(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    goto/16 :goto_1

    .line 232
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 234
    .local v14, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 236
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 238
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 240
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 242
    .local v18, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 244
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 245
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/net/IProxyService$Stub;->startProxyServerForKnoxProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)I

    move-result v0

    .line 247
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    goto :goto_1

    .line 222
    .end local v0    # "_result":I
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":Z
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {v8, v0}, Lcom/android/net/IProxyService$Stub;->stopPacSystemForKnoxProfile(Ljava/lang/String;)Z

    move-result v1

    .line 225
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 227
    goto :goto_1

    .line 212
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {v8, v0}, Lcom/android/net/IProxyService$Stub;->startPacSystemForKnoxProfile(Ljava/lang/String;)Z

    move-result v1

    .line 215
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 217
    goto :goto_1

    .line 204
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {v8, v0}, Lcom/android/net/IProxyService$Stub;->setPacFile(Ljava/lang/String;)V

    .line 207
    goto :goto_1

    .line 192
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {v8, v0, v1}, Lcom/android/net/IProxyService$Stub;->resolvePacFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    nop

    .line 348
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :goto_1
    return v12

    nop

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
