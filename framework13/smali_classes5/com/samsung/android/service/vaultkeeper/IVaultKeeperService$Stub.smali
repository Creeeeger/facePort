.class public abstract Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;
.super Landroid/os/Binder;
.source "IVaultKeeperService.java"

# interfaces
.implements Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_checkDataWritable:I = 0xa

.field static final blacklist TRANSACTION_destroy:I = 0x3

.field static final blacklist TRANSACTION_encryptMessage:I = 0x7

.field static final blacklist TRANSACTION_generateHotpCode:I = 0xb

.field static final blacklist TRANSACTION_initialize:I = 0x2

.field static final blacklist TRANSACTION_isInitialized:I = 0x1

.field static final blacklist TRANSACTION_migrationStorage:I = 0x8

.field static final blacklist TRANSACTION_read:I = 0x4

.field static final blacklist TRANSACTION_sensitiveBox:I = 0x6

.field static final blacklist TRANSACTION_verifyCertificate:I = 0x9

.field static final blacklist TRANSACTION_write:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    const-string v0, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    if-eqz v1, :cond_1

    .line 82
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    return-object v1

    .line 84
    :cond_1
    new-instance v1, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 93
    packed-switch p0, :pswitch_data_0

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 137
    :pswitch_0
    const-string v0, "generateHotpCode"

    return-object v0

    .line 133
    :pswitch_1
    const-string v0, "checkDataWritable"

    return-object v0

    .line 129
    :pswitch_2
    const-string/jumbo v0, "verifyCertificate"

    return-object v0

    .line 125
    :pswitch_3
    const-string v0, "migrationStorage"

    return-object v0

    .line 121
    :pswitch_4
    const-string v0, "encryptMessage"

    return-object v0

    .line 117
    :pswitch_5
    const-string/jumbo v0, "sensitiveBox"

    return-object v0

    .line 113
    :pswitch_6
    const-string/jumbo v0, "write"

    return-object v0

    .line 109
    :pswitch_7
    const-string/jumbo v0, "read"

    return-object v0

    .line 105
    :pswitch_8
    const-string v0, "destroy"

    return-object v0

    .line 101
    :pswitch_9
    const-string v0, "initialize"

    return-object v0

    .line 97
    :pswitch_a
    const-string v0, "isInitialized"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 88
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 586
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 148
    invoke-static {p1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 152
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    .line 153
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 154
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_0
    move-object/from16 v11, p2

    .line 156
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 164
    packed-switch v7, :pswitch_data_1

    .line 324
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 160
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v10

    .line 315
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {v6, v0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->generateHotpCode(Ljava/lang/String;)I

    move-result v1

    .line 318
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    goto/16 :goto_3

    .line 305
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 306
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {v6, v0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->checkDataWritable(Ljava/lang/String;)I

    move-result v1

    .line 308
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    goto/16 :goto_3

    .line 293
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 296
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->verifyCertificate(Ljava/lang/String;[B)Z

    move-result v2

    .line 298
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 300
    goto/16 :goto_3

    .line 283
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {v6, v0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->migrationStorage(Ljava/lang/String;)Z

    move-result v1

    .line 286
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 288
    goto/16 :goto_3

    .line 271
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 274
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->encryptMessage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 276
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 278
    goto/16 :goto_3

    .line 251
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":[B
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 255
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 256
    .local v2, "_arg2_length":I
    if-gez v2, :cond_1

    .line 257
    const/4 v3, 0x0

    .local v3, "_arg2":[I
    goto :goto_1

    .line 259
    .end local v3    # "_arg2":[I
    :cond_1
    new-array v3, v2, [I

    .line 261
    .restart local v3    # "_arg2":[I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {v6, v0, v1, v3}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->sensitiveBox(Ljava/lang/String;I[I)[B

    move-result-object v4

    .line 263
    .local v4, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 265
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 266
    goto/16 :goto_3

    .line 233
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2_length":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_result":[B
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 235
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 237
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 239
    .local v14, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 241
    .local v15, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 242
    .local v16, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->write(Ljava/lang/String;I[B[B[B)I

    move-result v0

    .line 244
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    goto/16 :goto_3

    .line 213
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":[B
    .end local v15    # "_arg3":[B
    .end local v16    # "_arg4":[B
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 217
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 218
    .restart local v2    # "_arg2_length":I
    if-gez v2, :cond_2

    .line 219
    const/4 v3, 0x0

    .restart local v3    # "_arg2":[I
    goto :goto_2

    .line 221
    .end local v3    # "_arg2":[I
    :cond_2
    new-array v3, v2, [I

    .line 223
    .restart local v3    # "_arg2":[I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {v6, v0, v1, v3}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->read(Ljava/lang/String;I[I)[B

    move-result-object v4

    .line 225
    .restart local v4    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 227
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 228
    goto :goto_3

    .line 197
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2_length":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_result":[B
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 201
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 203
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 204
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->destroy(Ljava/lang/String;[B[B[B)I

    move-result v4

    .line 206
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    goto :goto_3

    .line 179
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 181
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 183
    .local v13, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 185
    .restart local v14    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 187
    .restart local v15    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 188
    .restart local v16    # "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->initialize(Ljava/lang/String;[B[B[B[B)I

    move-result v0

    .line 190
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    goto :goto_3

    .line 169
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":[B
    .end local v14    # "_arg2":[B
    .end local v15    # "_arg3":[B
    .end local v16    # "_arg4":[B
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {v6, v0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->isInitialized(Ljava/lang/String;)Z

    move-result v1

    .line 172
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 174
    nop

    .line 327
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :goto_3
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
