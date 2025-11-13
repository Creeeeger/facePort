.class public abstract Landroid/hardware/face/IFaceServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IFaceServiceReceiver.java"

# interfaces
.implements Landroid/hardware/face/IFaceServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/IFaceServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/IFaceServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAcquired:I = 0x2

.field static final blacklist TRANSACTION_onAuthenticationFailed:I = 0x5

.field static final blacklist TRANSACTION_onAuthenticationFrame:I = 0xb

.field static final blacklist TRANSACTION_onAuthenticationSucceeded:I = 0x3

.field static final blacklist TRANSACTION_onChallengeGenerated:I = 0xa

.field static final blacklist TRANSACTION_onEnrollResult:I = 0x1

.field static final blacklist TRANSACTION_onEnrollmentFrame:I = 0xc

.field static final blacklist TRANSACTION_onError:I = 0x6

.field static final blacklist TRANSACTION_onFaceDetected:I = 0x4

.field static final blacklist TRANSACTION_onFeatureGet:I = 0x9

.field static final blacklist TRANSACTION_onFeatureSet:I = 0x8

.field static final blacklist TRANSACTION_onRemoved:I = 0x7

.field static final blacklist TRANSACTION_onSemAuthenticationSucceeded:I = 0xd

.field static final blacklist TRANSACTION_onSemImageProcessed:I = 0xe

.field static final blacklist TRANSACTION_onSemStatusUpdate:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.hardware.face.IFaceServiceReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    const-string v0, "android.hardware.face.IFaceServiceReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v1, :cond_1

    .line 84
    move-object v1, v0

    check-cast v1, Landroid/hardware/face/IFaceServiceReceiver;

    return-object v1

    .line 86
    :cond_1
    new-instance v1, Landroid/hardware/face/IFaceServiceReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 95
    packed-switch p0, :pswitch_data_0

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 155
    :pswitch_0
    const-string/jumbo v0, "onSemStatusUpdate"

    return-object v0

    .line 151
    :pswitch_1
    const-string/jumbo v0, "onSemImageProcessed"

    return-object v0

    .line 147
    :pswitch_2
    const-string/jumbo v0, "onSemAuthenticationSucceeded"

    return-object v0

    .line 143
    :pswitch_3
    const-string/jumbo v0, "onEnrollmentFrame"

    return-object v0

    .line 139
    :pswitch_4
    const-string/jumbo v0, "onAuthenticationFrame"

    return-object v0

    .line 135
    :pswitch_5
    const-string/jumbo v0, "onChallengeGenerated"

    return-object v0

    .line 131
    :pswitch_6
    const-string/jumbo v0, "onFeatureGet"

    return-object v0

    .line 127
    :pswitch_7
    const-string/jumbo v0, "onFeatureSet"

    return-object v0

    .line 123
    :pswitch_8
    const-string/jumbo v0, "onRemoved"

    return-object v0

    .line 119
    :pswitch_9
    const-string/jumbo v0, "onError"

    return-object v0

    .line 115
    :pswitch_a
    const-string/jumbo v0, "onAuthenticationFailed"

    return-object v0

    .line 111
    :pswitch_b
    const-string/jumbo v0, "onFaceDetected"

    return-object v0

    .line 107
    :pswitch_c
    const-string/jumbo v0, "onAuthenticationSucceeded"

    return-object v0

    .line 103
    :pswitch_d
    const-string/jumbo v0, "onAcquired"

    return-object v0

    .line 99
    :pswitch_e
    const-string/jumbo v0, "onEnrollResult"

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

    .line 90
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 588
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 166
    invoke-static {p1}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 170
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "android.hardware.face.IFaceServiceReceiver"

    .line 171
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 172
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 182
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_1

    .line 347
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 178
    :pswitch_0
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    return v11

    .line 338
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {v7, v0, v1}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onSemStatusUpdate(ILjava/lang/String;)V

    .line 343
    goto/16 :goto_0

    .line 320
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 322
    .local v13, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 324
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 326
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 328
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 330
    .local v17, "_arg4":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 331
    .local v18, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onSemImageProcessed([BIIIILandroid/os/Bundle;)V

    .line 333
    goto/16 :goto_0

    .line 306
    .end local v13    # "_arg0":[B
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/os/Bundle;
    :pswitch_3
    sget-object v0, Landroid/hardware/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/Face;

    .line 308
    .local v0, "_arg0":Landroid/hardware/face/Face;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 310
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 312
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 313
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onSemAuthenticationSucceeded(Landroid/hardware/face/Face;IZ[B)V

    .line 315
    goto/16 :goto_0

    .line 298
    .end local v0    # "_arg0":Landroid/hardware/face/Face;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":[B
    :pswitch_4
    sget-object v0, Landroid/hardware/face/FaceEnrollFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceEnrollFrame;

    .line 299
    .local v0, "_arg0":Landroid/hardware/face/FaceEnrollFrame;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {v7, v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V

    .line 301
    goto/16 :goto_0

    .line 290
    .end local v0    # "_arg0":Landroid/hardware/face/FaceEnrollFrame;
    :pswitch_5
    sget-object v0, Landroid/hardware/face/FaceAuthenticationFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceAuthenticationFrame;

    .line 291
    .local v0, "_arg0":Landroid/hardware/face/FaceAuthenticationFrame;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {v7, v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V

    .line 293
    goto/16 :goto_0

    .line 278
    .end local v0    # "_arg0":Landroid/hardware/face/FaceAuthenticationFrame;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 282
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 283
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onChallengeGenerated(IIJ)V

    .line 285
    goto/16 :goto_0

    .line 266
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 268
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 270
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    .line 271
    .local v2, "_arg2":[Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onFeatureGet(Z[I[Z)V

    .line 273
    goto/16 :goto_0

    .line 256
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":[Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 258
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 259
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {v7, v0, v1}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onFeatureSet(ZI)V

    .line 261
    goto/16 :goto_0

    .line 246
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_9
    sget-object v0, Landroid/hardware/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/Face;

    .line 248
    .local v0, "_arg0":Landroid/hardware/face/Face;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {v7, v0, v1}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onRemoved(Landroid/hardware/face/Face;I)V

    .line 251
    goto :goto_0

    .line 236
    .end local v0    # "_arg0":Landroid/hardware/face/Face;
    .end local v1    # "_arg1":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 238
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 239
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {v7, v0, v1}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onError(II)V

    .line 241
    goto :goto_0

    .line 230
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onAuthenticationFailed()V

    .line 231
    goto :goto_0

    .line 219
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 221
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 223
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 224
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onFaceDetected(IIZ)V

    .line 226
    goto :goto_0

    .line 207
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_d
    sget-object v0, Landroid/hardware/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/Face;

    .line 209
    .local v0, "_arg0":Landroid/hardware/face/Face;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 212
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onAuthenticationSucceeded(Landroid/hardware/face/Face;IZ)V

    .line 214
    goto :goto_0

    .line 197
    .end local v0    # "_arg0":Landroid/hardware/face/Face;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {v7, v0, v1}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onAcquired(II)V

    .line 202
    goto :goto_0

    .line 187
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_f
    sget-object v0, Landroid/hardware/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/Face;

    .line 189
    .local v0, "_arg0":Landroid/hardware/face/Face;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 190
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {v7, v0, v1}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onEnrollResult(Landroid/hardware/face/Face;I)V

    .line 192
    nop

    .line 350
    .end local v0    # "_arg0":Landroid/hardware/face/Face;
    .end local v1    # "_arg1":I
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
