.class public abstract Landroid/os/IVibratorManagerService$Stub;
.super Landroid/os/Binder;
.source "IVibratorManagerService.java"

# interfaces
.implements Landroid/os/IVibratorManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVibratorManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelVibrate:I = 0x8

.field static final blacklist TRANSACTION_getSupportedVibratorGroup:I = 0xa

.field static final blacklist TRANSACTION_getVibratorIds:I = 0x1

.field static final blacklist TRANSACTION_getVibratorInfo:I = 0x2

.field static final blacklist TRANSACTION_isVibrating:I = 0x3

.field static final blacklist TRANSACTION_registerVibratorStateListener:I = 0x4

.field static final blacklist TRANSACTION_semGetNumberOfSupportedPatterns:I = 0x9

.field static final blacklist TRANSACTION_setAlwaysOnEffect:I = 0x6

.field static final blacklist TRANSACTION_unregisterVibratorStateListener:I = 0x5

.field static final blacklist TRANSACTION_updateWatchConnectionState:I = 0xb

.field static final blacklist TRANSACTION_vibrate:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.os.IVibratorManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVibratorManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    const-string v0, "android.os.IVibratorManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVibratorManagerService;

    if-eqz v1, :cond_1

    .line 84
    move-object v1, v0

    check-cast v1, Landroid/os/IVibratorManagerService;

    return-object v1

    .line 86
    :cond_1
    new-instance v1, Landroid/os/IVibratorManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IVibratorManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 95
    packed-switch p0, :pswitch_data_0

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 139
    :pswitch_0
    const-string/jumbo v0, "updateWatchConnectionState"

    return-object v0

    .line 135
    :pswitch_1
    const-string/jumbo v0, "getSupportedVibratorGroup"

    return-object v0

    .line 131
    :pswitch_2
    const-string/jumbo v0, "semGetNumberOfSupportedPatterns"

    return-object v0

    .line 127
    :pswitch_3
    const-string v0, "cancelVibrate"

    return-object v0

    .line 123
    :pswitch_4
    const-string/jumbo v0, "vibrate"

    return-object v0

    .line 119
    :pswitch_5
    const-string/jumbo v0, "setAlwaysOnEffect"

    return-object v0

    .line 115
    :pswitch_6
    const-string/jumbo v0, "unregisterVibratorStateListener"

    return-object v0

    .line 111
    :pswitch_7
    const-string/jumbo v0, "registerVibratorStateListener"

    return-object v0

    .line 107
    :pswitch_8
    const-string/jumbo v0, "isVibrating"

    return-object v0

    .line 103
    :pswitch_9
    const-string/jumbo v0, "getVibratorInfo"

    return-object v0

    .line 99
    :pswitch_a
    const-string/jumbo v0, "getVibratorIds"

    return-object v0

    :pswitch_data_0
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

    .line 533
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 150
    invoke-static {p1}, Landroid/os/IVibratorManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 154
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.os.IVibratorManagerService"

    .line 155
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 156
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 166
    packed-switch v8, :pswitch_data_1

    .line 292
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 162
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return v12

    .line 284
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 285
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {v7, v0}, Landroid/os/IVibratorManagerService$Stub;->updateWatchConnectionState(Z)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    goto/16 :goto_0

    .line 276
    .end local v0    # "_arg0":Z
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVibratorManagerService$Stub;->getSupportedVibratorGroup()I

    move-result v0

    .line 277
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    goto/16 :goto_0

    .line 269
    .end local v0    # "_result":I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVibratorManagerService$Stub;->semGetNumberOfSupportedPatterns()I

    move-result v0

    .line 270
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    goto/16 :goto_0

    .line 259
    .end local v0    # "_result":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 261
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 262
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {v7, v0, v1}, Landroid/os/IVibratorManagerService$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto/16 :goto_0

    .line 240
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 242
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 244
    .local v14, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/CombinedVibration;

    .line 246
    .local v15, "_arg2":Landroid/os/CombinedVibration;
    sget-object v0, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/VibrationAttributes;

    .line 248
    .local v16, "_arg3":Landroid/os/VibrationAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 250
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 251
    .local v18, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IVibratorManagerService$Stub;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    goto/16 :goto_0

    .line 222
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Landroid/os/CombinedVibration;
    .end local v16    # "_arg3":Landroid/os/VibrationAttributes;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Landroid/os/IBinder;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 224
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 226
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 228
    .local v14, "_arg2":I
    sget-object v0, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/CombinedVibration;

    .line 230
    .local v15, "_arg3":Landroid/os/CombinedVibration;
    sget-object v0, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/VibrationAttributes;

    .line 231
    .local v16, "_arg4":Landroid/os/VibrationAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IVibratorManagerService$Stub;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z

    move-result v0

    .line 233
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 235
    goto :goto_0

    .line 210
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/CombinedVibration;
    .end local v16    # "_arg4":Landroid/os/VibrationAttributes;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object v1

    .line 213
    .local v1, "_arg1":Landroid/os/IVibratorStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {v7, v0, v1}, Landroid/os/IVibratorManagerService$Stub;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v2

    .line 215
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 217
    goto :goto_0

    .line 198
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IVibratorStateListener;
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object v1

    .line 201
    .restart local v1    # "_arg1":Landroid/os/IVibratorStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {v7, v0, v1}, Landroid/os/IVibratorManagerService$Stub;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v2

    .line 203
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 205
    goto :goto_0

    .line 188
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IVibratorStateListener;
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 189
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {v7, v0}, Landroid/os/IVibratorManagerService$Stub;->isVibrating(I)Z

    move-result v1

    .line 191
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 193
    goto :goto_0

    .line 178
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 179
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {v7, v0}, Landroid/os/IVibratorManagerService$Stub;->getVibratorInfo(I)Landroid/os/VibratorInfo;

    move-result-object v1

    .line 181
    .local v1, "_result":Landroid/os/VibratorInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 183
    goto :goto_0

    .line 170
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/VibratorInfo;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVibratorManagerService$Stub;->getVibratorIds()[I

    move-result-object v0

    .line 171
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 173
    nop

    .line 295
    .end local v0    # "_result":[I
    :goto_0
    return v12

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
