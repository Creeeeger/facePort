.class public abstract Landroid/telephony/ims/aidl/IImsSmsListener$Stub;
.super Landroid/os/Binder;
.source "IImsSmsListener.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsSmsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsSmsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsSmsListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onReceiveSmsDeliveryReportAck:I = 0x5

.field static final blacklist TRANSACTION_onSendSmsResponse:I = 0x4

.field static final blacklist TRANSACTION_onSendSmsResult:I = 0x1

.field static final blacklist TRANSACTION_onSmsReceived:I = 0x3

.field static final blacklist TRANSACTION_onSmsStatusReportReceived:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.telephony.ims.aidl.IImsSmsListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsSmsListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    const-string v0, "android.telephony.ims.aidl.IImsSmsListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsSmsListener;

    if-eqz v1, :cond_1

    .line 54
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsSmsListener;

    return-object v1

    .line 56
    :cond_1
    new-instance v1, Landroid/telephony/ims/aidl/IImsSmsListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 65
    packed-switch p0, :pswitch_data_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :pswitch_0
    const-string/jumbo v0, "onReceiveSmsDeliveryReportAck"

    return-object v0

    .line 81
    :pswitch_1
    const-string/jumbo v0, "onSendSmsResponse"

    return-object v0

    .line 77
    :pswitch_2
    const-string/jumbo v0, "onSmsReceived"

    return-object v0

    .line 73
    :pswitch_3
    const-string/jumbo v0, "onSmsStatusReportReceived"

    return-object v0

    .line 69
    :pswitch_4
    const-string/jumbo v0, "onSendSmsResult"

    return-object v0

    nop

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

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 288
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    move-object/from16 v7, p0

    move/from16 v8, p1

    const-string v9, "android.telephony.ims.aidl.IImsSmsListener"

    .line 101
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v8, v10, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 102
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_0
    move-object/from16 v11, p2

    .line 104
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 112
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_1

    .line 184
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 108
    :pswitch_0
    move-object/from16 v12, p3

    invoke-virtual {v12, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v10

    .line 175
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {v7, v0, v1}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->onReceiveSmsDeliveryReportAck(II)V

    .line 180
    goto/16 :goto_1

    .line 157
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 159
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 161
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 163
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 165
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 167
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 168
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->onSendSmsResponse(IIIIII)V

    .line 170
    goto :goto_1

    .line 145
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 147
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 150
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {v7, v0, v1, v2}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->onSmsReceived(ILjava/lang/String;[B)V

    .line 152
    goto :goto_1

    .line 133
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 138
    .restart local v2    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {v7, v0, v1, v2}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->onSmsStatusReportReceived(ILjava/lang/String;[B)V

    .line 140
    goto :goto_1

    .line 117
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 119
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 121
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 123
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 125
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 126
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    move-object/from16 v0, p0

    move v1, v6

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->onSendSmsResult(IIIII)V

    .line 128
    nop

    .line 187
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :goto_1
    return v10

    nop

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
