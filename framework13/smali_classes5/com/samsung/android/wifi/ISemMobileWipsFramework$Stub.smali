.class public abstract Lcom/samsung/android/wifi/ISemMobileWipsFramework$Stub;
.super Landroid/os/Binder;
.source "ISemMobileWipsFramework.java"

# interfaces
.implements Lcom/samsung/android/wifi/ISemMobileWipsFramework;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/ISemMobileWipsFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/ISemMobileWipsFramework$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getScanResults:I = 0x4

.field static final blacklist TRANSACTION_invokeMethodBool:I = 0x1

.field static final blacklist TRANSACTION_invokeMethodStr:I = 0x2

.field static final blacklist TRANSACTION_partialScanStart:I = 0x3

.field static final blacklist TRANSACTION_sendHWParamToHQMwithAppId:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "com.samsung.android.wifi.ISemMobileWipsFramework"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/wifi/ISemMobileWipsFramework$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemMobileWipsFramework;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    const-string v0, "com.samsung.android.wifi.ISemMobileWipsFramework"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/wifi/ISemMobileWipsFramework;

    if-eqz v1, :cond_1

    .line 52
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/wifi/ISemMobileWipsFramework;

    return-object v1

    .line 54
    :cond_1
    new-instance v1, Lcom/samsung/android/wifi/ISemMobileWipsFramework$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/ISemMobileWipsFramework$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 83
    :pswitch_0
    const-string/jumbo v0, "sendHWParamToHQMwithAppId"

    return-object v0

    .line 79
    :pswitch_1
    const-string v0, "getScanResults"

    return-object v0

    .line 75
    :pswitch_2
    const-string/jumbo v0, "partialScanStart"

    return-object v0

    .line 71
    :pswitch_3
    const-string v0, "invokeMethodStr"

    return-object v0

    .line 67
    :pswitch_4
    const-string v0, "invokeMethodBool"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 58
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 298
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 94
    invoke-static {p1}, Lcom/samsung/android/wifi/ISemMobileWipsFramework$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 98
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "com.samsung.android.wifi.ISemMobileWipsFramework"

    .line 99
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v12, v10, :cond_0

    const v0, 0xffffff

    if-gt v12, v0, :cond_0

    .line 100
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    :cond_0
    packed-switch v12, :pswitch_data_0

    .line 110
    packed-switch v12, :pswitch_data_1

    .line 177
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 106
    :pswitch_0
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return v10

    .line 151
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 153
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 155
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 157
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 159
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 161
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 163
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 165
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 167
    .local v23, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 169
    .local v24, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 170
    .local v25, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v26, v10

    move-object/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/android/wifi/ISemMobileWipsFramework$Stub;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    goto :goto_0

    .line 143
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":Ljava/lang/String;
    .end local v24    # "_arg8":Ljava/lang/String;
    .end local v25    # "_arg9":Ljava/lang/String;
    :pswitch_2
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemMobileWipsFramework$Stub;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemMobileWipsScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 146
    goto :goto_0

    .line 135
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemMobileWipsScanResult;>;"
    :pswitch_3
    move/from16 v26, v10

    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 136
    .local v0, "_arg0":Landroid/os/Message;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {v11, v0}, Lcom/samsung/android/wifi/ISemMobileWipsFramework$Stub;->partialScanStart(Landroid/os/Message;)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    goto :goto_0

    .line 125
    .end local v0    # "_arg0":Landroid/os/Message;
    :pswitch_4
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {v11, v0}, Lcom/samsung/android/wifi/ISemMobileWipsFramework$Stub;->invokeMethodStr(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    goto :goto_0

    .line 115
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_5
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {v11, v0}, Lcom/samsung/android/wifi/ISemMobileWipsFramework$Stub;->invokeMethodBool(I)Z

    move-result v1

    .line 118
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 120
    nop

    .line 180
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :goto_0
    return v26

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
