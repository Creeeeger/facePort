.class public abstract Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.super Landroid/os/Binder;
.source "IBiometricAuthenticator.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0x6

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_dumpSensorServiceStateProto:I = 0x3

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0xb

.field static final blacklist TRANSACTION_getLockoutModeForUser:I = 0x9

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x2

.field static final blacklist TRANSACTION_hasEnrolledTemplates:I = 0x8

.field static final blacklist TRANSACTION_invalidateAuthenticatorId:I = 0xa

.field static final blacklist TRANSACTION_isHardwareDetected:I = 0x7

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x4

.field static final blacklist TRANSACTION_resetLockout:I = 0xc

.field static final blacklist TRANSACTION_semGetSecurityLevel:I = 0xd

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 90
    const-string v0, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricAuthenticator;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    const-string v0, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 102
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/biometrics/IBiometricAuthenticator;

    if-eqz v1, :cond_1

    .line 103
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/IBiometricAuthenticator;

    return-object v1

    .line 105
    :cond_1
    new-instance v1, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 114
    packed-switch p0, :pswitch_data_0

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 166
    :pswitch_0
    const-string/jumbo v0, "semGetSecurityLevel"

    return-object v0

    .line 162
    :pswitch_1
    const-string/jumbo v0, "resetLockout"

    return-object v0

    .line 158
    :pswitch_2
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 154
    :pswitch_3
    const-string v0, "invalidateAuthenticatorId"

    return-object v0

    .line 150
    :pswitch_4
    const-string v0, "getLockoutModeForUser"

    return-object v0

    .line 146
    :pswitch_5
    const-string v0, "hasEnrolledTemplates"

    return-object v0

    .line 142
    :pswitch_6
    const-string v0, "isHardwareDetected"

    return-object v0

    .line 138
    :pswitch_7
    const-string v0, "cancelAuthenticationFromService"

    return-object v0

    .line 134
    :pswitch_8
    const-string/jumbo v0, "startPreparedClient"

    return-object v0

    .line 130
    :pswitch_9
    const-string/jumbo v0, "prepareForAuthentication"

    return-object v0

    .line 126
    :pswitch_a
    const-string v0, "dumpSensorServiceStateProto"

    return-object v0

    .line 122
    :pswitch_b
    const-string v0, "getSensorProperties"

    return-object v0

    .line 118
    :pswitch_c
    const-string v0, "createTestSession"

    return-object v0

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

    .line 109
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 639
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 177
    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p3

    const-string v15, "android.hardware.biometrics.IBiometricAuthenticator"

    .line 182
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v13, v11, :cond_0

    const v0, 0xffffff

    if-gt v13, v0, :cond_0

    .line 183
    move-object/from16 v10, p2

    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_0
    move-object/from16 v10, p2

    .line 185
    :goto_0
    packed-switch v13, :pswitch_data_0

    .line 193
    packed-switch v13, :pswitch_data_1

    .line 351
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 189
    :pswitch_0
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    return v11

    .line 344
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->semGetSecurityLevel()I

    move-result v0

    .line 345
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    move v13, v11

    goto/16 :goto_1

    .line 330
    .end local v0    # "_result":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 332
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 336
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 337
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    move v13, v11

    goto/16 :goto_1

    .line 320
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[B
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 321
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getAuthenticatorId(I)J

    move-result-wide v1

    .line 323
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 325
    move v13, v11

    goto/16 :goto_1

    .line 309
    .end local v0    # "_arg0":I
    .end local v1    # "_result":J
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 311
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v1

    .line 312
    .local v1, "_arg1":Landroid/hardware/biometrics/IInvalidationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {v12, v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    move v13, v11

    goto/16 :goto_1

    .line 299
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/biometrics/IInvalidationCallback;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 300
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getLockoutModeForUser(I)I

    move-result v1

    .line 302
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    move v13, v11

    goto/16 :goto_1

    .line 287
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {v12, v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v2

    .line 292
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 294
    move v13, v11

    goto/16 :goto_1

    .line 277
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->isHardwareDetected(Ljava/lang/String;)Z

    move-result v1

    .line 280
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 282
    move v13, v11

    goto/16 :goto_1

    .line 264
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 266
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 269
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    move v13, v11

    goto/16 :goto_1

    .line 255
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 256
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->startPreparedClient(I)V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    move v13, v11

    goto/16 :goto_1

    .line 230
    .end local v0    # "_arg0":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 232
    .local v16, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 234
    .local v17, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 236
    .local v18, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 238
    .local v20, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v21

    .line 240
    .local v21, "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 242
    .local v22, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 244
    .local v23, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 246
    .local v25, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 247
    .local v26, "_arg8":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    move/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-wide/from16 v8, v23

    move/from16 v10, v25

    move v13, v11

    move/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto :goto_1

    .line 220
    .end local v16    # "_arg0":Z
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg2":J
    .end local v20    # "_arg3":I
    .end local v21    # "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .end local v22    # "_arg5":Ljava/lang/String;
    .end local v23    # "_arg6":J
    .end local v25    # "_arg7":I
    .end local v26    # "_arg8":Z
    :pswitch_b
    move v13, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 221
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->dumpSensorServiceStateProto(Z)[B

    move-result-object v1

    .line 223
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 225
    goto :goto_1

    .line 210
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":[B
    :pswitch_c
    move v13, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {v12, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v1

    .line 213
    .local v1, "_result":Landroid/hardware/biometrics/SensorPropertiesInternal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {v14, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 215
    goto :goto_1

    .line 198
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/hardware/biometrics/SensorPropertiesInternal;
    :pswitch_d
    move v13, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v0

    .line 200
    .local v0, "_arg0":Landroid/hardware/biometrics/ITestSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {v12, v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v2

    .line 203
    .local v2, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 205
    nop

    .line 354
    .end local v0    # "_arg0":Landroid/hardware/biometrics/ITestSessionCallback;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/hardware/biometrics/ITestSession;
    :goto_1
    return v13

    nop

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
