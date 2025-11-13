.class public abstract Landroid/os/IUpdateEngine$Stub;
.super Landroid/os/Binder;
.source "IUpdateEngine.java"

# interfaces
.implements Landroid/os/IUpdateEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUpdateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUpdateEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IUpdateEngine"

.field static final blacklist TRANSACTION_allocateSpaceForPayload:I = 0xc

.field static final greylist-max-o TRANSACTION_applyPayload:I = 0x1

.field static final blacklist TRANSACTION_applyPayloadFd:I = 0x2

.field static final greylist-max-o TRANSACTION_bind:I = 0x3

.field static final greylist-max-o TRANSACTION_cancel:I = 0x7

.field static final blacklist TRANSACTION_cleanupSuccessfulUpdate:I = 0xd

.field static final blacklist TRANSACTION_resetShouldSwitchSlotOnReboot:I = 0xa

.field static final greylist-max-o TRANSACTION_resetStatus:I = 0x8

.field static final greylist-max-o TRANSACTION_resume:I = 0x6

.field static final blacklist TRANSACTION_setShouldSwitchSlotOnReboot:I = 0x9

.field static final greylist-max-o TRANSACTION_suspend:I = 0x5

.field static final greylist-max-o TRANSACTION_unbind:I = 0x4

.field static final greylist-max-o TRANSACTION_verifyPayloadApplicable:I = 0xb


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 100
    const-string v0, "android.os.IUpdateEngine"

    invoke-virtual {p0, p0, v0}, Landroid/os/IUpdateEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngine;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 108
    if-nez p0, :cond_0

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_0
    const-string v0, "android.os.IUpdateEngine"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 112
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IUpdateEngine;

    if-eqz v1, :cond_1

    .line 113
    move-object v1, v0

    check-cast v1, Landroid/os/IUpdateEngine;

    return-object v1

    .line 115
    :cond_1
    new-instance v1, Landroid/os/IUpdateEngine$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IUpdateEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 124
    packed-switch p0, :pswitch_data_0

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 176
    :pswitch_0
    const-string v0, "cleanupSuccessfulUpdate"

    return-object v0

    .line 172
    :pswitch_1
    const-string v0, "allocateSpaceForPayload"

    return-object v0

    .line 168
    :pswitch_2
    const-string/jumbo v0, "verifyPayloadApplicable"

    return-object v0

    .line 164
    :pswitch_3
    const-string/jumbo v0, "resetShouldSwitchSlotOnReboot"

    return-object v0

    .line 160
    :pswitch_4
    const-string/jumbo v0, "setShouldSwitchSlotOnReboot"

    return-object v0

    .line 156
    :pswitch_5
    const-string/jumbo v0, "resetStatus"

    return-object v0

    .line 152
    :pswitch_6
    const-string v0, "cancel"

    return-object v0

    .line 148
    :pswitch_7
    const-string/jumbo v0, "resume"

    return-object v0

    .line 144
    :pswitch_8
    const-string/jumbo v0, "suspend"

    return-object v0

    .line 140
    :pswitch_9
    const-string/jumbo v0, "unbind"

    return-object v0

    .line 136
    :pswitch_a
    const-string v0, "bind"

    return-object v0

    .line 132
    :pswitch_b
    const-string v0, "applyPayloadFd"

    return-object v0

    .line 128
    :pswitch_c
    const-string v0, "applyPayload"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 119
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 609
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 187
    invoke-static {p1}, Landroid/os/IUpdateEngine$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 191
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.os.IUpdateEngine"

    .line 192
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 193
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 203
    packed-switch v8, :pswitch_data_1

    .line 327
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 199
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    return v12

    .line 319
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUpdateEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineCallback;

    move-result-object v0

    .line 320
    .local v0, "_arg0":Landroid/os/IUpdateEngineCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {v7, v0}, Landroid/os/IUpdateEngine$Stub;->cleanupSuccessfulUpdate(Landroid/os/IUpdateEngineCallback;)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    goto/16 :goto_0

    .line 307
    .end local v0    # "_arg0":Landroid/os/IUpdateEngineCallback;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {v7, v0, v1}, Landroid/os/IUpdateEngine$Stub;->allocateSpaceForPayload(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 312
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {v10, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 314
    goto/16 :goto_0

    .line 297
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_result":J
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {v7, v0}, Landroid/os/IUpdateEngine$Stub;->verifyPayloadApplicable(Ljava/lang/String;)Z

    move-result v1

    .line 300
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 302
    goto/16 :goto_0

    .line 290
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUpdateEngine$Stub;->resetShouldSwitchSlotOnReboot()V

    .line 291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto/16 :goto_0

    .line 282
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {v7, v0}, Landroid/os/IUpdateEngine$Stub;->setShouldSwitchSlotOnReboot(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    goto/16 :goto_0

    .line 275
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUpdateEngine$Stub;->resetStatus()V

    .line 276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    goto/16 :goto_0

    .line 269
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUpdateEngine$Stub;->cancel()V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto/16 :goto_0

    .line 263
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUpdateEngine$Stub;->resume()V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto/16 :goto_0

    .line 257
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUpdateEngine$Stub;->suspend()V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    goto/16 :goto_0

    .line 248
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUpdateEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineCallback;

    move-result-object v0

    .line 249
    .local v0, "_arg0":Landroid/os/IUpdateEngineCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {v7, v0}, Landroid/os/IUpdateEngine$Stub;->unbind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v1

    .line 251
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 253
    goto :goto_0

    .line 238
    .end local v0    # "_arg0":Landroid/os/IUpdateEngineCallback;
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUpdateEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineCallback;

    move-result-object v0

    .line 239
    .restart local v0    # "_arg0":Landroid/os/IUpdateEngineCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {v7, v0}, Landroid/os/IUpdateEngine$Stub;->bind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v1

    .line 241
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 243
    goto :goto_0

    .line 223
    .end local v0    # "_arg0":Landroid/os/IUpdateEngineCallback;
    .end local v1    # "_result":Z
    :pswitch_c
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/ParcelFileDescriptor;

    .line 225
    .local v13, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 227
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 229
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    .line 230
    .local v18, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IUpdateEngine$Stub;->applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto :goto_0

    .line 208
    .end local v13    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":[Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 210
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 212
    .restart local v14    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 214
    .restart local v16    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    .line 215
    .restart local v18    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IUpdateEngine$Stub;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    nop

    .line 330
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":[Ljava/lang/String;
    :goto_0
    return v12

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
