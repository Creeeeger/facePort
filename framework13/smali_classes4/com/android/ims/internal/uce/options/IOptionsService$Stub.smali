.class public abstract Lcom/android/ims/internal/uce/options/IOptionsService$Stub;
.super Landroid/os/Binder;
.source "IOptionsService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/options/IOptionsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/IOptionsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.options.IOptionsService"

.field static final greylist-max-o TRANSACTION_addListener:I = 0x2

.field static final greylist-max-o TRANSACTION_getContactCap:I = 0x6

.field static final greylist-max-o TRANSACTION_getContactListCap:I = 0x7

.field static final greylist-max-o TRANSACTION_getMyInfo:I = 0x5

.field static final greylist-max-o TRANSACTION_getVersion:I = 0x1

.field static final greylist-max-o TRANSACTION_removeListener:I = 0x3

.field static final greylist-max-o TRANSACTION_responseIncomingOptions:I = 0x8

.field static final greylist-max-o TRANSACTION_setMyInfo:I = 0x4


# direct methods
.method public constructor greylist-max-r <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 128
    const-string v0, "com.android.ims.internal.uce.options.IOptionsService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 136
    if-nez p0, :cond_0

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_0
    const-string v0, "com.android.ims.internal.uce.options.IOptionsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 140
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/uce/options/IOptionsService;

    if-eqz v1, :cond_1

    .line 141
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/uce/options/IOptionsService;

    return-object v1

    .line 143
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 152
    packed-switch p0, :pswitch_data_0

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 184
    :pswitch_0
    const-string/jumbo v0, "responseIncomingOptions"

    return-object v0

    .line 180
    :pswitch_1
    const-string v0, "getContactListCap"

    return-object v0

    .line 176
    :pswitch_2
    const-string v0, "getContactCap"

    return-object v0

    .line 172
    :pswitch_3
    const-string v0, "getMyInfo"

    return-object v0

    .line 168
    :pswitch_4
    const-string/jumbo v0, "setMyInfo"

    return-object v0

    .line 164
    :pswitch_5
    const-string/jumbo v0, "removeListener"

    return-object v0

    .line 160
    :pswitch_6
    const-string v0, "addListener"

    return-object v0

    .line 156
    :pswitch_7
    const-string v0, "getVersion"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 595
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 195
    invoke-static {p1}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.android.ims.internal.uce.options.IOptionsService"

    .line 200
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 201
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 211
    packed-switch v8, :pswitch_data_1

    .line 326
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 207
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    return v12

    .line 307
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 309
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 311
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 313
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 315
    .local v16, "_arg3":Ljava/lang/String;
    sget-object v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    .line 317
    .local v17, "_arg4":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 318
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->responseIncomingOptions(IIILjava/lang/String;Lcom/android/ims/internal/uce/options/OptionsCapInfo;Z)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v0

    .line 320
    .local v0, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 322
    goto/16 :goto_0

    .line 293
    .end local v0    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .end local v18    # "_arg5":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 295
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 298
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v3

    .line 300
    .local v3, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 302
    goto/16 :goto_0

    .line 279
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 281
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v3

    .line 286
    .restart local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 288
    goto/16 :goto_0

    .line 267
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 270
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {v7, v0, v1}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getMyInfo(II)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v2

    .line 272
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 274
    goto :goto_0

    .line 253
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 255
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/android/ims/internal/uce/common/CapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/common/CapInfo;

    .line 257
    .local v1, "_arg1":Lcom/android/ims/internal/uce/common/CapInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->setMyInfo(ILcom/android/ims/internal/uce/common/CapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v3

    .line 260
    .restart local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 262
    goto :goto_0

    .line 241
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/ims/internal/uce/common/CapInfo;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/common/UceLong;

    .line 244
    .local v1, "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {v7, v0, v1}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v2

    .line 246
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 248
    goto :goto_0

    .line 226
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    move-result-object v1

    .line 230
    .local v1, "_arg1":Lcom/android/ims/internal/uce/options/IOptionsListener;
    sget-object v2, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/common/UceLong;

    .line 231
    .local v2, "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->addListener(ILcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v3

    .line 233
    .restart local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 235
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 236
    goto :goto_0

    .line 216
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/ims/internal/uce/options/IOptionsListener;
    .end local v2    # "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {v7, v0}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v1

    .line 219
    .local v1, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 221
    nop

    .line 329
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :goto_0
    return v12

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
