.class public abstract Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;
.super Landroid/os/Binder;
.source "IIrisDaemonCallback.java"

# interfaces
.implements Lcom/samsung/android/camera/iris/IIrisDaemonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/IIrisDaemonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAcquired:I = 0x2

.field static final blacklist TRANSACTION_onAuthenticated:I = 0x3

.field static final blacklist TRANSACTION_onEnrollResult:I = 0x1

.field static final blacklist TRANSACTION_onEnumerate:I = 0x7

.field static final blacklist TRANSACTION_onError:I = 0x4

.field static final blacklist TRANSACTION_onGeneralParameterChanged:I = 0x9

.field static final blacklist TRANSACTION_onIRPropertyChanged:I = 0x6

.field static final blacklist TRANSACTION_onImageProcessed:I = 0x8

.field static final blacklist TRANSACTION_onRemoved:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisDaemonCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    const-string v0, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/camera/iris/IIrisDaemonCallback;

    if-eqz v1, :cond_1

    .line 65
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/camera/iris/IIrisDaemonCallback;

    return-object v1

    .line 67
    :cond_1
    new-instance v1, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_0

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 112
    :pswitch_0
    const-string v0, "onGeneralParameterChanged"

    return-object v0

    .line 108
    :pswitch_1
    const-string v0, "onImageProcessed"

    return-object v0

    .line 104
    :pswitch_2
    const-string v0, "onEnumerate"

    return-object v0

    .line 100
    :pswitch_3
    const-string v0, "onIRPropertyChanged"

    return-object v0

    .line 96
    :pswitch_4
    const-string v0, "onRemoved"

    return-object v0

    .line 92
    :pswitch_5
    const-string v0, "onError"

    return-object v0

    .line 88
    :pswitch_6
    const-string v0, "onAuthenticated"

    return-object v0

    .line 84
    :pswitch_7
    const-string v0, "onAcquired"

    return-object v0

    .line 80
    :pswitch_8
    const-string v0, "onEnrollResult"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 455
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 123
    invoke-static {p1}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 127
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    .line 128
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 129
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 139
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_1

    .line 266
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 135
    :pswitch_0
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v11

    .line 254
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 256
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onGeneralParameterChanged(JLjava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    goto/16 :goto_0

    .line 237
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 239
    .local v13, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 241
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 243
    .local v16, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 245
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 246
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    move-object/from16 v0, p0

    move-wide v1, v13

    move v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onImageProcessed(JI[BII)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    goto/16 :goto_0

    .line 224
    .end local v13    # "_arg0":J
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":[B
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 226
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 228
    .local v2, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 229
    .local v3, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onEnumerate(J[I[I)V

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    goto/16 :goto_0

    .line 211
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg2":[I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 213
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onIRPropertyChanged(JLjava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto/16 :goto_0

    .line 198
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 200
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 203
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onRemoved(JII)V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    goto/16 :goto_0

    .line 187
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 189
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 190
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onError(JI)V

    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    goto :goto_0

    .line 170
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 172
    .restart local v13    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 174
    .restart local v15    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 176
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 178
    .local v17, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 179
    .local v18, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    move-object/from16 v0, p0

    move-wide v1, v13

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onAuthenticated(JII[B[B)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    goto :goto_0

    .line 159
    .end local v13    # "_arg0":J
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":[B
    .end local v18    # "_arg4":[B
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 161
    .restart local v0    # "_arg0":J
    sget-object v2, Lcom/samsung/android/camera/iris/EyeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/iris/EyeInfo;

    .line 162
    .local v2, "_arg1":Lcom/samsung/android/camera/iris/EyeInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onAcquired(JLcom/samsung/android/camera/iris/EyeInfo;)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    goto :goto_0

    .line 144
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Lcom/samsung/android/camera/iris/EyeInfo;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 146
    .restart local v13    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 148
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 150
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 151
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    move-object/from16 v0, p0

    move-wide v1, v13

    move v3, v6

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onEnrollResult(JIII)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    nop

    .line 269
    .end local v6    # "_arg1":I
    .end local v13    # "_arg0":J
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
