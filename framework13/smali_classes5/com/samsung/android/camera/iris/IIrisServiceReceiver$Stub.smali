.class public abstract Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IIrisServiceReceiver.java"

# interfaces
.implements Lcom/samsung/android/camera/iris/IIrisServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAcquired:I = 0x2

.field static final blacklist TRANSACTION_onAuthenticationFailed:I = 0x4

.field static final blacklist TRANSACTION_onAuthenticationSucceeded:I = 0x3

.field static final blacklist TRANSACTION_onEnrollResult:I = 0x1

.field static final blacklist TRANSACTION_onError:I = 0x5

.field static final blacklist TRANSACTION_onIRImage:I = 0x7

.field static final blacklist TRANSACTION_onRemoved:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "com.samsung.android.camera.iris.IIrisServiceReceiver"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    const-string v0, "com.samsung.android.camera.iris.IIrisServiceReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    if-eqz v1, :cond_1

    .line 59
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    return-object v1

    .line 61
    :cond_1
    new-instance v1, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 98
    :pswitch_0
    const-string v0, "onIRImage"

    return-object v0

    .line 94
    :pswitch_1
    const-string v0, "onRemoved"

    return-object v0

    .line 90
    :pswitch_2
    const-string v0, "onError"

    return-object v0

    .line 86
    :pswitch_3
    const-string v0, "onAuthenticationFailed"

    return-object v0

    .line 82
    :pswitch_4
    const-string v0, "onAuthenticationSucceeded"

    return-object v0

    .line 78
    :pswitch_5
    const-string v0, "onAcquired"

    return-object v0

    .line 74
    :pswitch_6
    const-string v0, "onEnrollResult"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 336
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 109
    invoke-static {p1}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 113
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.samsung.android.camera.iris.IIrisServiceReceiver"

    .line 114
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 115
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 125
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 209
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 121
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v10

    .line 196
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 198
    .local v12, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 200
    .local v14, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 202
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 203
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->onIRImage(J[BII)V

    .line 205
    goto/16 :goto_0

    .line 184
    .end local v12    # "_arg0":J
    .end local v14    # "_arg1":[B
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 186
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->onRemoved(JII)V

    .line 191
    goto :goto_0

    .line 174
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 176
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->onError(JI)V

    .line 179
    goto :goto_0

    .line 166
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 167
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->onAuthenticationFailed(J)V

    .line 169
    goto :goto_0

    .line 154
    .end local v0    # "_arg0":J
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 156
    .restart local v0    # "_arg0":J
    sget-object v2, Lcom/samsung/android/camera/iris/Iris;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/iris/Iris;

    .line 158
    .local v2, "_arg1":Lcom/samsung/android/camera/iris/Iris;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 159
    .local v3, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->onAuthenticationSucceeded(JLcom/samsung/android/camera/iris/Iris;[B)V

    .line 161
    goto :goto_0

    .line 144
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Lcom/samsung/android/camera/iris/Iris;
    .end local v3    # "_arg2":[B
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 146
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->onAcquired(JI)V

    .line 149
    goto :goto_0

    .line 130
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 132
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 134
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 136
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 137
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    move-object/from16 v0, p0

    move-wide v1, v12

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->onEnrollResult(JIII)V

    .line 139
    nop

    .line 212
    .end local v12    # "_arg0":J
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
