.class public abstract Landroid/content/pm/IASKSManager$Stub;
.super Landroid/os/Binder;
.source "IASKSManager.java"

# interfaces
.implements Landroid/content/pm/IASKSManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IASKSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IASKSManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_applyScpmPolicyFromApp:I = 0x10

.field static final blacklist TRANSACTION_checkASKSTarget:I = 0xc

.field static final blacklist TRANSACTION_checkDeletableListForASKS:I = 0x9

.field static final blacklist TRANSACTION_checkFollowingLegitimateWay:I = 0x8

.field static final blacklist TRANSACTION_checkRestrictedPermission:I = 0x5

.field static final blacklist TRANSACTION_checkUnknownSourcePackage:I = 0xd

.field static final blacklist TRANSACTION_clearASKSruleForRemovedPackage:I = 0x4

.field static final blacklist TRANSACTION_getIMEIList:I = 0x7

.field static final blacklist TRANSACTION_getSEInfo:I = 0x6

.field static final blacklist TRANSACTION_getUNvalueForASKS:I = 0xb

.field static final blacklist TRANSACTION_getUnknownAppList:I = 0xf

.field static final blacklist TRANSACTION_isUnknownApps:I = 0xe

.field static final blacklist TRANSACTION_postASKSsetup:I = 0x3

.field static final blacklist TRANSACTION_setTrustTimebyStatusChanged:I = 0xa

.field static final blacklist TRANSACTION_systemReady:I = 0x1

.field static final blacklist TRANSACTION_verifyASKStokenForPackage:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    const-string v0, "android.content.pm.IASKSManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IASKSManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IASKSManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    const-string v0, "android.content.pm.IASKSManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 92
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IASKSManager;

    if-eqz v1, :cond_1

    .line 93
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IASKSManager;

    return-object v1

    .line 95
    :cond_1
    new-instance v1, Landroid/content/pm/IASKSManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IASKSManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 104
    packed-switch p0, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    return-object v0

    .line 168
    :pswitch_0
    const-string v0, "applyScpmPolicyFromApp"

    return-object v0

    .line 164
    :pswitch_1
    const-string v0, "getUnknownAppList"

    return-object v0

    .line 160
    :pswitch_2
    const-string v0, "isUnknownApps"

    return-object v0

    .line 156
    :pswitch_3
    const-string v0, "checkUnknownSourcePackage"

    return-object v0

    .line 152
    :pswitch_4
    const-string v0, "checkASKSTarget"

    return-object v0

    .line 148
    :pswitch_5
    const-string v0, "getUNvalueForASKS"

    return-object v0

    .line 144
    :pswitch_6
    const-string/jumbo v0, "setTrustTimebyStatusChanged"

    return-object v0

    .line 140
    :pswitch_7
    const-string v0, "checkDeletableListForASKS"

    return-object v0

    .line 136
    :pswitch_8
    const-string v0, "checkFollowingLegitimateWay"

    return-object v0

    .line 132
    :pswitch_9
    const-string v0, "getIMEIList"

    return-object v0

    .line 128
    :pswitch_a
    const-string v0, "getSEInfo"

    return-object v0

    .line 124
    :pswitch_b
    const-string v0, "checkRestrictedPermission"

    return-object v0

    .line 120
    :pswitch_c
    const-string v0, "clearASKSruleForRemovedPackage"

    return-object v0

    .line 116
    :pswitch_d
    const-string/jumbo v0, "postASKSsetup"

    return-object v0

    .line 112
    :pswitch_e
    const-string/jumbo v0, "verifyASKStokenForPackage"

    return-object v0

    .line 108
    :pswitch_f
    const-string/jumbo v0, "systemReady"

    return-object v0

    nop

    :pswitch_data_0
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

    .line 692
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 179
    invoke-static {p1}, Landroid/content/pm/IASKSManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "android.content.pm.IASKSManager"

    .line 184
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v12, v10, :cond_0

    const v0, 0xffffff

    if-gt v12, v0, :cond_0

    .line 185
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    :cond_0
    packed-switch v12, :pswitch_data_0

    .line 195
    packed-switch v12, :pswitch_data_1

    .line 370
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 191
    :pswitch_0
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    return v10

    .line 364
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IASKSManager$Stub;->applyScpmPolicyFromApp()V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    move/from16 v26, v10

    goto/16 :goto_0

    .line 357
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IASKSManager$Stub;->getUnknownAppList()Ljava/util/List;

    move-result-object v0

    .line 358
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 360
    move/from16 v26, v10

    goto/16 :goto_0

    .line 346
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    .line 349
    .local v1, "_arg1":[Landroid/content/pm/Signature;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {v11, v0, v1}, Landroid/content/pm/IASKSManager$Stub;->isUnknownApps(Ljava/lang/String;[Landroid/content/pm/Signature;)Z

    move-result v2

    .line 351
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 353
    move/from16 v26, v10

    goto/16 :goto_0

    .line 318
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[Landroid/content/pm/Signature;
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 320
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    .line 322
    .local v17, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 324
    .local v18, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, [Landroid/content/pm/Signature;

    .line 326
    .local v19, "_arg3":[Landroid/content/pm/Signature;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 328
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 330
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 332
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 334
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 336
    .local v24, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 337
    .local v25, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v26, v10

    move-object/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Landroid/content/pm/IASKSManager$Stub;->checkUnknownSourcePackage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 339
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    goto/16 :goto_0

    .line 308
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":[Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":[Landroid/content/pm/Signature;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":Ljava/lang/String;
    .end local v25    # "_arg9":Ljava/lang/String;
    :pswitch_5
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 309
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {v11, v0}, Landroid/content/pm/IASKSManager$Stub;->checkASKSTarget(I)[Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 313
    goto/16 :goto_0

    .line 300
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_6
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IASKSManager$Stub;->getUNvalueForASKS()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    goto/16 :goto_0

    .line 294
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_7
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IASKSManager$Stub;->setTrustTimebyStatusChanged()V

    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto/16 :goto_0

    .line 288
    :pswitch_8
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IASKSManager$Stub;->checkDeletableListForASKS()V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto/16 :goto_0

    .line 277
    :pswitch_9
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 280
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {v11, v0, v1}, Landroid/content/pm/IASKSManager$Stub;->checkFollowingLegitimateWay(Ljava/lang/String;I)Z

    move-result v2

    .line 282
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 284
    goto/16 :goto_0

    .line 269
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_a
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IASKSManager$Stub;->getIMEIList()Ljava/util/List;

    move-result-object v0

    .line 270
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 272
    goto/16 :goto_0

    .line 260
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {v11, v0}, Landroid/content/pm/IASKSManager$Stub;->getSEInfo(Ljava/lang/String;)[B

    move-result-object v1

    .line 263
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 265
    goto/16 :goto_0

    .line 248
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[B
    :pswitch_c
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 250
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {v11, v0, v1}, Landroid/content/pm/IASKSManager$Stub;->checkRestrictedPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 253
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    goto/16 :goto_0

    .line 239
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_d
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {v11, v0}, Landroid/content/pm/IASKSManager$Stub;->clearASKSruleForRemovedPackage(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    goto :goto_0

    .line 226
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_e
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {v11, v0, v1, v2}, Landroid/content/pm/IASKSManager$Stub;->postASKSsetup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto :goto_0

    .line 206
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_f
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 208
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 210
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 212
    .local v16, "_arg2":J
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Landroid/content/pm/Signature;

    .line 214
    .local v10, "_arg3":[Landroid/content/pm/Signature;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 216
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 217
    .local v19, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-wide/from16 v3, v16

    move-object v5, v10

    move-object/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/IASKSManager$Stub;->verifyASKStokenForPackage(Ljava/lang/String;Ljava/lang/String;J[Landroid/content/pm/Signature;Ljava/lang/String;Z)I

    move-result v0

    .line 219
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    goto :goto_0

    .line 199
    .end local v0    # "_result":I
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg3":[Landroid/content/pm/Signature;
    .end local v16    # "_arg2":J
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Z
    :pswitch_10
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IASKSManager$Stub;->systemReady()V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    nop

    .line 373
    :goto_0
    return v26

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
