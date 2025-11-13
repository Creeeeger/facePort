.class public abstract Lcom/samsung/android/biometrics/IBiometricsService$Stub;
.super Landroid/os/Binder;
.source "IBiometricsService.java"

# interfaces
.implements Lcom/samsung/android/biometrics/IBiometricsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/IBiometricsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_authenticate:I = 0x1

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x2

.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0xa

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0x4

.field static final blacklist TRANSACTION_isHardwareDetected:I = 0x3

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x8

.field static final blacklist TRANSACTION_requestSessionClose:I = 0x6

.field static final blacklist TRANSACTION_requestSessionOpen:I = 0x5

.field static final blacklist TRANSACTION_resetTimeout:I = 0x7

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    const-string v0, "com.samsung.android.biometrics.IBiometricsService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/biometrics/IBiometricsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_0
    const-string v0, "com.samsung.android.biometrics.IBiometricsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v1, :cond_1

    .line 83
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/biometrics/IBiometricsService;

    return-object v1

    .line 85
    :cond_1
    new-instance v1, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;
    .locals 1

    .line 614
    sget-object v0, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/biometrics/IBiometricsService;

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 94
    packed-switch p0, :pswitch_data_0

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 134
    :pswitch_0
    const-string v0, "cancelAuthenticationFromService"

    return-object v0

    .line 130
    :pswitch_1
    const-string/jumbo v0, "startPreparedClient"

    return-object v0

    .line 126
    :pswitch_2
    const-string v0, "prepareForAuthentication"

    return-object v0

    .line 122
    :pswitch_3
    const-string v0, "resetTimeout"

    return-object v0

    .line 118
    :pswitch_4
    const-string v0, "requestSessionClose"

    return-object v0

    .line 114
    :pswitch_5
    const-string v0, "requestSessionOpen"

    return-object v0

    .line 110
    :pswitch_6
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 106
    :pswitch_7
    const-string v0, "isHardwareDetected"

    return-object v0

    .line 102
    :pswitch_8
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 98
    :pswitch_9
    const-string v0, "authenticate"

    return-object v0

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist setDefaultImpl(Lcom/samsung/android/biometrics/IBiometricsService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/samsung/android/biometrics/IBiometricsService;

    .line 604
    sget-object v0, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/biometrics/IBiometricsService;

    if-nez v0, :cond_1

    .line 607
    if-eqz p0, :cond_0

    .line 608
    sput-object p0, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/biometrics/IBiometricsService;

    .line 609
    const/4 v0, 0x1

    return v0

    .line 611
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 605
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 89
    return-object p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 145
    invoke-static {p1}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v12, "com.samsung.android.biometrics.IBiometricsService"

    .line 150
    .local v12, "descriptor":Ljava/lang/String;
    const/16 v16, 0x1

    packed-switch p1, :pswitch_data_0

    .line 158
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_1

    .line 308
    move-object v10, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 154
    :pswitch_0
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return v16

    .line 289
    :pswitch_1
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 293
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 295
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 297
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 299
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 301
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v6, v16

    goto :goto_0

    :cond_0
    move v6, v0

    .line 302
    .local v6, "_arg5":Z
    :goto_0
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    return v16

    .line 280
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :pswitch_2
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 283
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->startPreparedClient(I)V

    .line 284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    return v16

    .line 246
    .end local v0    # "_arg0":I
    :pswitch_3
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move/from16 v1, v16

    goto :goto_1

    :cond_1
    move v1, v0

    .line 250
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 252
    .local v17, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 254
    .local v18, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 256
    .local v20, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v21

    .line 258
    .local v21, "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 260
    .local v22, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 262
    .local v23, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 264
    .local v24, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 266
    .local v25, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 268
    .local v26, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v27, v0

    .local v0, "_arg10":Landroid/os/Bundle;
    goto :goto_2

    .line 272
    .end local v0    # "_arg10":Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    move-object/from16 v27, v0

    .line 274
    .local v27, "_arg10":Landroid/os/Bundle;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    move/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move-object v15, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v15, "descriptor":Ljava/lang/String;
    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;IIIILandroid/os/Bundle;)V

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    return v16

    .line 237
    .end local v1    # "_arg0":Z
    .end local v15    # "descriptor":Ljava/lang/String;
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg2":J
    .end local v20    # "_arg3":I
    .end local v21    # "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .end local v22    # "_arg5":Ljava/lang/String;
    .end local v23    # "_arg6":I
    .end local v24    # "_arg7":I
    .end local v25    # "_arg8":I
    .end local v26    # "_arg9":I
    .end local v27    # "_arg10":Landroid/os/Bundle;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4
    move-object v15, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 240
    .local v0, "_arg0":[B
    invoke-virtual {v13, v0}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->resetTimeout([B)V

    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    return v16

    .line 230
    .end local v0    # "_arg0":[B
    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_5
    move-object v15, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->requestSessionClose()V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    return v16

    .line 223
    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_6
    move-object v15, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->requestSessionOpen()V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    return v16

    .line 213
    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_7
    move-object v15, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v1

    .line 217
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v10, p3

    move-object v11, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 219
    return v16

    .line 201
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":J
    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_8
    move-object v11, v12

    move-object v10, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 205
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->isHardwareDetected(JLjava/lang/String;)Z

    move-result v3

    .line 207
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return v16

    .line 190
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_9
    move-object v11, v12

    move-object v10, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 194
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    return v16

    .line 162
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_a
    move-object v11, v12

    move-object v10, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 166
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 168
    .local v15, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 170
    .local v17, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 172
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    move-result-object v20

    .line 174
    .local v20, "_arg4":Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 176
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v22, v0

    .local v0, "_arg6":Landroid/os/Bundle;
    goto :goto_3

    .line 180
    .end local v0    # "_arg6":Landroid/os/Bundle;
    :cond_3
    const/4 v0, 0x0

    move-object/from16 v22, v0

    .line 183
    .local v22, "_arg6":Landroid/os/Bundle;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v23

    .line 184
    .local v23, "_arg7":[B
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v15

    move-wide/from16 v3, v17

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->authenticate(ILandroid/os/IBinder;JILcom/samsung/android/biometrics/IBiometricsServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;[B)V

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    return v16

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
