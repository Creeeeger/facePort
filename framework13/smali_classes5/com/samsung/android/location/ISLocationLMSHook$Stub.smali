.class public abstract Lcom/samsung/android/location/ISLocationLMSHook$Stub;
.super Landroid/os/Binder;
.source "ISLocationLMSHook.java"

# interfaces
.implements Lcom/samsung/android/location/ISLocationLMSHook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/location/ISLocationLMSHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/ISLocationLMSHook$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getHWGeofence:I = 0x2

.field static final blacklist TRANSACTION_isProviderEnabledForUser:I = 0x1

.field static final blacklist TRANSACTION_isUidForeground:I = 0x4

.field static final blacklist TRANSACTION_updateRequestInfo:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "com.samsung.android.location.ISLocationLMSHook"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/location/ISLocationLMSHook$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationLMSHook;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    const-string v0, "com.samsung.android.location.ISLocationLMSHook"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/location/ISLocationLMSHook;

    if-eqz v1, :cond_1

    .line 51
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/location/ISLocationLMSHook;

    return-object v1

    .line 53
    :cond_1
    new-instance v1, Lcom/samsung/android/location/ISLocationLMSHook$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/location/ISLocationLMSHook$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_0
    const-string v0, "isUidForeground"

    return-object v0

    .line 74
    :pswitch_1
    const-string/jumbo v0, "updateRequestInfo"

    return-object v0

    .line 70
    :pswitch_2
    const-string v0, "getHWGeofence"

    return-object v0

    .line 66
    :pswitch_3
    const-string v0, "isProviderEnabledForUser"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 262
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Lcom/samsung/android/location/ISLocationLMSHook$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p3

    const-string v11, "com.samsung.android.location.ISLocationLMSHook"

    .line 94
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v9, v12, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 95
    move-object/from16 v13, p2

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    move-object/from16 v13, p2

    .line 97
    :goto_0
    packed-switch v9, :pswitch_data_0

    .line 105
    packed-switch v9, :pswitch_data_1

    .line 159
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 101
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v12

    .line 150
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {v8, v0}, Lcom/samsung/android/location/ISLocationLMSHook$Stub;->isUidForeground(I)Z

    move-result v1

    .line 153
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 155
    goto :goto_1

    .line 129
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 131
    .local v14, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 133
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 135
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 137
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 139
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 141
    .local v19, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 142
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/location/ISLocationLMSHook$Stub;->updateRequestInfo(ZIILjava/lang/String;Ljava/lang/String;ZI)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    goto :goto_1

    .line 121
    .end local v14    # "_arg0":Z
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Z
    .end local v20    # "_arg6":I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/location/ISLocationLMSHook$Stub;->getHWGeofence()Landroid/location/IGpsGeofenceHardware;

    move-result-object v0

    .line 122
    .local v0, "_result":Landroid/location/IGpsGeofenceHardware;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 124
    goto :goto_1

    .line 110
    .end local v0    # "_result":Landroid/location/IGpsGeofenceHardware;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 113
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/location/ISLocationLMSHook$Stub;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v2

    .line 115
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 117
    nop

    .line 162
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :goto_1
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
