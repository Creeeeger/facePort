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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 342
    const/4 v0, 0x6

    return v0
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

    .line 113
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "com.samsung.android.bio.face.IFaceServiceReceiver"

    .line 114
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 115
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 125
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_1

    .line 213
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 121
    :pswitch_0
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v11

    .line 204
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 206
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onStatusUpdate(ILjava/lang/String;)V

    .line 209
    goto/16 :goto_0

    .line 192
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 194
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 197
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onRemoved(JII)V

    .line 199
    goto/16 :goto_0

    .line 180
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 182
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onError(JILjava/lang/String;)V

    .line 187
    goto/16 :goto_0

    .line 172
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 173
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onAuthenticationFailed(J)V

    .line 175
    goto :goto_0

    .line 156
    .end local v0    # "_arg0":J
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 158
    .local v13, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 160
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 162
    .local v16, "_arg2":Z
    sget-object v0, Lcom/samsung/android/bio/face/SemBioFace;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/samsung/android/bio/face/SemBioFace;

    .line 164
    .local v17, "_arg3":Lcom/samsung/android/bio/face/SemBioFace;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 165
    .local v18, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    move-object/from16 v0, p0

    move-wide v1, v13

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onAuthenticationSucceeded(JIZLcom/samsung/android/bio/face/SemBioFace;[B)V

    .line 167
    goto :goto_0

    .line 144
    .end local v13    # "_arg0":J
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":Lcom/samsung/android/bio/face/SemBioFace;
    .end local v18    # "_arg4":[B
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 146
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onAcquired(JILjava/lang/String;)V

    .line 151
    goto :goto_0

    .line 130
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 132
    .restart local v13    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 134
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 136
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 137
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    move-object/from16 v0, p0

    move-wide v1, v13

    move v3, v6

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onEnrollResult(JIII)V

    .line 139
    nop

    .line 216
    .end local v6    # "_arg1":I
    .end local v13    # "_arg0":J
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    :goto_0
    return v11

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
