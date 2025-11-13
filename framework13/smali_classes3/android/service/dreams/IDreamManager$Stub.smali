.class public abstract Landroid/service/dreams/IDreamManager$Stub;
.super Landroid/os/Binder;
.source "IDreamManager.java"

# interfaces
.implements Landroid/service/dreams/IDreamManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.dreams.IDreamManager"

.field static final greylist-max-o TRANSACTION_awaken:I = 0x2

.field static final greylist-max-o TRANSACTION_dream:I = 0x1

.field static final greylist-max-o TRANSACTION_finishSelf:I = 0x8

.field static final blacklist TRANSACTION_forceAmbientDisplayEnabled:I = 0xb

.field static final blacklist TRANSACTION_getDefaultDreamComponentForUser:I = 0x5

.field static final greylist-max-o TRANSACTION_getDreamComponents:I = 0x4

.field static final blacklist TRANSACTION_getDreamComponentsForUser:I = 0xc

.field static final greylist-max-o TRANSACTION_isDreaming:I = 0x7

.field static final blacklist TRANSACTION_registerDreamOverlayService:I = 0xe

.field static final blacklist TRANSACTION_semStartDozing:I = 0xf

.field static final greylist-max-o TRANSACTION_setDreamComponents:I = 0x3

.field static final blacklist TRANSACTION_setDreamComponentsForUser:I = 0xd

.field static final greylist-max-o TRANSACTION_startDozing:I = 0x9

.field static final greylist-max-o TRANSACTION_stopDozing:I = 0xa

.field static final greylist-max-o TRANSACTION_testDream:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    const-string v0, "android.service.dreams.IDreamManager"

    invoke-virtual {p0, p0, v0}, Landroid/service/dreams/IDreamManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    const-string v0, "android.service.dreams.IDreamManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_1

    .line 85
    move-object v1, v0

    check-cast v1, Landroid/service/dreams/IDreamManager;

    return-object v1

    .line 87
    :cond_1
    new-instance v1, Landroid/service/dreams/IDreamManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/dreams/IDreamManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 96
    packed-switch p0, :pswitch_data_0

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 156
    :pswitch_0
    const-string/jumbo v0, "semStartDozing"

    return-object v0

    .line 152
    :pswitch_1
    const-string/jumbo v0, "registerDreamOverlayService"

    return-object v0

    .line 148
    :pswitch_2
    const-string/jumbo v0, "setDreamComponentsForUser"

    return-object v0

    .line 144
    :pswitch_3
    const-string v0, "getDreamComponentsForUser"

    return-object v0

    .line 140
    :pswitch_4
    const-string v0, "forceAmbientDisplayEnabled"

    return-object v0

    .line 136
    :pswitch_5
    const-string/jumbo v0, "stopDozing"

    return-object v0

    .line 132
    :pswitch_6
    const-string/jumbo v0, "startDozing"

    return-object v0

    .line 128
    :pswitch_7
    const-string v0, "finishSelf"

    return-object v0

    .line 124
    :pswitch_8
    const-string/jumbo v0, "isDreaming"

    return-object v0

    .line 120
    :pswitch_9
    const-string/jumbo v0, "testDream"

    return-object v0

    .line 116
    :pswitch_a
    const-string v0, "getDefaultDreamComponentForUser"

    return-object v0

    .line 112
    :pswitch_b
    const-string v0, "getDreamComponents"

    return-object v0

    .line 108
    :pswitch_c
    const-string/jumbo v0, "setDreamComponents"

    return-object v0

    .line 104
    :pswitch_d
    const-string v0, "awaken"

    return-object v0

    .line 100
    :pswitch_e
    const-string v0, "dream"

    return-object v0

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

    .line 91
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 615
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 167
    invoke-static {p1}, Landroid/service/dreams/IDreamManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 171
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.service.dreams.IDreamManager"

    .line 172
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 173
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 183
    packed-switch v7, :pswitch_data_1

    .line 332
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 179
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    return v11

    .line 316
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 318
    .local v12, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 320
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 322
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 324
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 325
    .local v16, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/service/dreams/IDreamManager$Stub;->semStartDozing(Landroid/os/IBinder;IIIZ)V

    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    goto/16 :goto_0

    .line 307
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Z
    :pswitch_2
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 308
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {v6, v0}, Landroid/service/dreams/IDreamManager$Stub;->registerDreamOverlayService(Landroid/content/ComponentName;)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    goto/16 :goto_0

    .line 296
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 298
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    .line 299
    .local v1, "_arg1":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {v6, v0, v1}, Landroid/service/dreams/IDreamManager$Stub;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V

    .line 301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    goto/16 :goto_0

    .line 286
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/content/ComponentName;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 287
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {v6, v0}, Landroid/service/dreams/IDreamManager$Stub;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v1

    .line 289
    .local v1, "_result":[Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 291
    goto/16 :goto_0

    .line 277
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Landroid/content/ComponentName;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 278
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {v6, v0}, Landroid/service/dreams/IDreamManager$Stub;->forceAmbientDisplayEnabled(Z)V

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    goto/16 :goto_0

    .line 268
    .end local v0    # "_arg0":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 269
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {v6, v0}, Landroid/service/dreams/IDreamManager$Stub;->stopDozing(Landroid/os/IBinder;)V

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto/16 :goto_0

    .line 255
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 257
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 259
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 260
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {v6, v0, v1, v2}, Landroid/service/dreams/IDreamManager$Stub;->startDozing(Landroid/os/IBinder;II)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto/16 :goto_0

    .line 244
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 246
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 247
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {v6, v0, v1}, Landroid/service/dreams/IDreamManager$Stub;->finishSelf(Landroid/os/IBinder;Z)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto :goto_0

    .line 236
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/service/dreams/IDreamManager$Stub;->isDreaming()Z

    move-result v0

    .line 237
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 239
    goto :goto_0

    .line 226
    .end local v0    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 229
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {v6, v0, v1}, Landroid/service/dreams/IDreamManager$Stub;->testDream(ILandroid/content/ComponentName;)V

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    goto :goto_0

    .line 216
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {v6, v0}, Landroid/service/dreams/IDreamManager$Stub;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 219
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 221
    goto :goto_0

    .line 208
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/service/dreams/IDreamManager$Stub;->getDreamComponents()[Landroid/content/ComponentName;

    move-result-object v0

    .line 209
    .local v0, "_result":[Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 211
    goto :goto_0

    .line 200
    .end local v0    # "_result":[Landroid/content/ComponentName;
    :pswitch_d
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ComponentName;

    .line 201
    .local v0, "_arg0":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {v6, v0}, Landroid/service/dreams/IDreamManager$Stub;->setDreamComponents([Landroid/content/ComponentName;)V

    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto :goto_0

    .line 193
    .end local v0    # "_arg0":[Landroid/content/ComponentName;
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/service/dreams/IDreamManager$Stub;->awaken()V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_0

    .line 187
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/service/dreams/IDreamManager$Stub;->dream()V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    nop

    .line 335
    :goto_0
    return v11

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
