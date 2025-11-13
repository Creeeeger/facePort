.class public abstract Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub;
.super Landroid/os/Binder;
.source "IFaceDaemonCallback.java"

# interfaces
.implements Lcom/samsung/android/bio/face/IFaceDaemonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/IFaceDaemonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAcquired:I = 0x2

.field static final blacklist TRANSACTION_onAuthenticated:I = 0x3

.field static final blacklist TRANSACTION_onEnrollResult:I = 0x1

.field static final blacklist TRANSACTION_onEnumerate:I = 0x6

.field static final blacklist TRANSACTION_onError:I = 0x4

.field static final blacklist TRANSACTION_onRemoved:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "com.samsung.android.bio.face.IFaceDaemonCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceDaemonCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    const-string v0, "com.samsung.android.bio.face.IFaceDaemonCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/bio/face/IFaceDaemonCallback;

    if-eqz v1, :cond_1

    .line 56
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/bio/face/IFaceDaemonCallback;

    return-object v1

    .line 58
    :cond_1
    new-instance v1, Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemonCallback;
    .locals 1

    .line 379
    sget-object v0, Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/bio/face/IFaceDaemonCallback;

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_0

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 91
    :pswitch_0
    const-string v0, "onEnumerate"

    return-object v0

    .line 87
    :pswitch_1
    const-string v0, "onRemoved"

    return-object v0

    .line 83
    :pswitch_2
    const-string v0, "onError"

    return-object v0

    .line 79
    :pswitch_3
    const-string v0, "onAuthenticated"

    return-object v0

    .line 75
    :pswitch_4
    const-string v0, "onAcquired"

    return-object v0

    .line 71
    :pswitch_5
    const-string v0, "onEnrollResult"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist setDefaultImpl(Lcom/samsung/android/bio/face/IFaceDaemonCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/samsung/android/bio/face/IFaceDaemonCallback;

    .line 369
    sget-object v0, Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/bio/face/IFaceDaemonCallback;

    if-nez v0, :cond_1

    .line 372
    if-eqz p0, :cond_0

    .line 373
    sput-object p0, Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/bio/face/IFaceDaemonCallback;

    .line 374
    const/4 v0, 0x1

    return v0

    .line 376
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 370
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 62
    return-object p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 102
    invoke-static {p1}, Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const-string v9, "com.samsung.android.bio.face.IFaceDaemonCallback"

    .line 107
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    packed-switch p1, :pswitch_data_0

    .line 115
    move-object/from16 v11, p3

    packed-switch p1, :pswitch_data_1

    .line 199
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 111
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v10

    .line 186
    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 190
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 192
    .local v2, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 193
    .local v3, "_arg2":[I
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub;->onEnumerate(J[I[I)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    return v10

    .line 173
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg2":[I
    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 177
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 179
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 180
    .local v3, "_arg2":I
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub;->onRemoved(JII)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    return v10

    .line 162
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 166
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .restart local v2    # "_arg1":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub;->onError(JI)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    return v10

    .line 145
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 149
    .local v12, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 151
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 153
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 155
    .local v16, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 156
    .local v17, "_arg4":[B
    move-object/from16 v0, p0

    move-wide v1, v12

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub;->onAuthenticated(JII[B[B)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    return v10

    .line 134
    .end local v12    # "_arg0":J
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":[B
    .end local v17    # "_arg4":[B
    :pswitch_5
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 138
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .restart local v2    # "_arg1":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub;->onAcquired(JI)V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    return v10

    .line 119
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_6
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 123
    .restart local v12    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 125
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 127
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 128
    .local v15, "_arg3":I
    move-object/from16 v0, p0

    move-wide v1, v12

    move v3, v6

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/IFaceDaemonCallback$Stub;->onEnrollResult(JIII)V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
