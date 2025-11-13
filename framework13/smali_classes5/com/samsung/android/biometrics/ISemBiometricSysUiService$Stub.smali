.class public abstract Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;
.super Landroid/os/Binder;
.source "ISemBiometricSysUiService.java"

# interfaces
.implements Lcom/samsung/android/biometrics/ISemBiometricSysUiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/ISemBiometricSysUiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_hideBiometricDialog:I = 0x5

.field static final blacklist TRANSACTION_onBiometricAuthenticated:I = 0x2

.field static final blacklist TRANSACTION_onBiometricError:I = 0x4

.field static final blacklist TRANSACTION_onBiometricHelp:I = 0x3

.field static final blacklist TRANSACTION_sendCommand:I = 0x6

.field static final blacklist TRANSACTION_setBiometricTheme:I = 0x7

.field static final blacklist TRANSACTION_showBiometricDialog:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "com.samsung.android.biometrics.ISemBiometricSysUiService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/biometrics/ISemBiometricSysUiService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    const-string v0, "com.samsung.android.biometrics.ISemBiometricSysUiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    if-eqz v1, :cond_1

    .line 65
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    return-object v1

    .line 67
    :cond_1
    new-instance v1, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_0

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 104
    :pswitch_0
    const-string/jumbo v0, "setBiometricTheme"

    return-object v0

    .line 100
    :pswitch_1
    const-string/jumbo v0, "sendCommand"

    return-object v0

    .line 96
    :pswitch_2
    const-string v0, "hideBiometricDialog"

    return-object v0

    .line 92
    :pswitch_3
    const-string v0, "onBiometricError"

    return-object v0

    .line 88
    :pswitch_4
    const-string v0, "onBiometricHelp"

    return-object v0

    .line 84
    :pswitch_5
    const-string v0, "onBiometricAuthenticated"

    return-object v0

    .line 80
    :pswitch_6
    const-string/jumbo v0, "showBiometricDialog"

    return-object v0

    nop

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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 392
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 115
    invoke-static {p1}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    const-string v14, "com.samsung.android.biometrics.ISemBiometricSysUiService"

    .line 120
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v12, v15, :cond_0

    const v0, 0xffffff

    if-gt v12, v0, :cond_0

    .line 121
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    :cond_0
    packed-switch v12, :pswitch_data_0

    .line 131
    move-object/from16 v10, p3

    packed-switch v12, :pswitch_data_1

    .line 245
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 127
    :pswitch_0
    move-object/from16 v10, p3

    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v15

    .line 232
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 234
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 238
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 239
    .local v3, "_arg3":Ljava/io/FileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;->setBiometricTheme(ILjava/lang/String;[BLjava/io/FileDescriptor;)V

    .line 241
    goto/16 :goto_0

    .line 218
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":Ljava/io/FileDescriptor;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 220
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 224
    .local v2, "_arg2":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 225
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;->sendCommand(IIILandroid/os/Bundle;)V

    .line 227
    goto/16 :goto_0

    .line 206
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 210
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {v11, v0, v1, v2}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;->hideBiometricDialog(III)V

    .line 213
    goto/16 :goto_0

    .line 190
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 192
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 194
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 196
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 198
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 199
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;->onBiometricError(IIIILjava/lang/String;)V

    .line 201
    goto/16 :goto_0

    .line 174
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 176
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 178
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 180
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 182
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 183
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;->onBiometricHelp(IIIILjava/lang/String;)V

    .line 185
    goto :goto_0

    .line 160
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 164
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 166
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;->onBiometricAuthenticated(IIZLjava/lang/String;)V

    .line 169
    goto :goto_0

    .line 136
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 138
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 140
    .local v17, "_arg1":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 142
    .local v18, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    move-result-object v19

    .line 144
    .local v19, "_arg3":Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 146
    .local v20, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 148
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 150
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 152
    .local v23, "_arg7":J
    sget-object v0, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/hardware/biometrics/PromptInfo;

    .line 153
    .local v25, "_arg8":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v7, v22

    move-wide/from16 v8, v23

    move-object/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;->showBiometricDialog(IILandroid/os/Bundle;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V

    .line 155
    nop

    .line 248
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Landroid/os/Bundle;
    .end local v19    # "_arg3":Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":J
    .end local v25    # "_arg8":Landroid/hardware/biometrics/PromptInfo;
    :goto_0
    return v15

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
