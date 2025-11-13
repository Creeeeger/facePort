.class public abstract Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IFaceServiceReceiver.java"

# interfaces
.implements Lcom/samsung/android/bio/face/IFaceServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/IFaceServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAcquired:I = 0x2

.field static final blacklist TRANSACTION_onAuthenticationFailed:I = 0x4

.field static final blacklist TRANSACTION_onAuthenticationSucceeded:I = 0x3

.field static final blacklist TRANSACTION_onEnrollResult:I = 0x1

.field static final blacklist TRANSACTION_onError:I = 0x5

.field static final blacklist TRANSACTION_onRemoved:I = 0x6

.field static final blacklist TRANSACTION_onStatusUpdate:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    const-string v0, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    if-eqz v1, :cond_1

    .line 59
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    return-object v1

    .line 61
    :cond_1
    new-instance v1, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultImpl()Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    .locals 1

    .line 403
    sget-object v0, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    return-object v0
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
    const-string v0, "onStatusUpdate"

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

.method public static blacklist setDefaultImpl(Lcom/samsung/android/bio/face/IFaceServiceReceiver;)Z
    .locals 2
    .param p0, "impl"    # Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    .line 393
    sget-object v0, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    if-nez v0, :cond_1

    .line 396
    if-eqz p0, :cond_0

    .line 397
    sput-object p0, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    .line 398
    const/4 v0, 0x1

    return v0

    .line 400
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 394
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 65
    return-object p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 109
    invoke-static {p1}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const-string v9, "com.samsung.android.bio.face.IFaceServiceReceiver"

    .line 114
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    packed-switch p1, :pswitch_data_0

    .line 122
    move-object/from16 v11, p3

    packed-switch p1, :pswitch_data_1

    .line 215
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 118
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v10

    .line 205
    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onStatusUpdate(ILjava/lang/String;)V

    .line 211
    return v10

    .line 193
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 197
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 200
    .local v3, "_arg2":I
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onRemoved(JII)V

    .line 201
    return v10

    .line 181
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 185
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onError(JILjava/lang/String;)V

    .line 189
    return v10

    .line 173
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 176
    .restart local v0    # "_arg0":J
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onAuthenticationFailed(J)V

    .line 177
    return v10

    .line 152
    .end local v0    # "_arg0":J
    :pswitch_5
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 156
    .local v12, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 158
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    .line 160
    .local v4, "_arg2":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    sget-object v0, Lcom/samsung/android/bio/face/SemBioFace;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/bio/face/SemBioFace;

    move-object v15, v0

    .local v0, "_arg3":Lcom/samsung/android/bio/face/SemBioFace;
    goto :goto_1

    .line 164
    .end local v0    # "_arg3":Lcom/samsung/android/bio/face/SemBioFace;
    :cond_1
    const/4 v0, 0x0

    move-object v15, v0

    .line 167
    .local v15, "_arg3":Lcom/samsung/android/bio/face/SemBioFace;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 168
    .local v16, "_arg4":[B
    move-object/from16 v0, p0

    move-wide v1, v12

    move v3, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onAuthenticationSucceeded(JIZLcom/samsung/android/bio/face/SemBioFace;[B)V

    .line 169
    return v10

    .line 140
    .end local v4    # "_arg2":Z
    .end local v12    # "_arg0":J
    .end local v14    # "_arg1":I
    .end local v15    # "_arg3":Lcom/samsung/android/bio/face/SemBioFace;
    .end local v16    # "_arg4":[B
    :pswitch_6
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 144
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 147
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onAcquired(JILjava/lang/String;)V

    .line 148
    return v10

    .line 126
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 130
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 132
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 134
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 135
    .local v15, "_arg3":I
    move-object/from16 v0, p0

    move-wide v1, v12

    move v3, v6

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onEnrollResult(JIII)V

    .line 136
    return v10

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
