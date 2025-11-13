.class public abstract Lcom/skms/android/agent/ISkpmService$Stub;
.super Landroid/os/Binder;
.source "ISkpmService.java"

# interfaces
.implements Lcom/skms/android/agent/ISkpmService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skms/android/agent/ISkpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skms/android/agent/ISkpmService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_SkpmChangeOtaServer:I = 0x6

.field static final blacklist TRANSACTION_SkpmReadInjectedKeyUID:I = 0x3

.field static final blacklist TRANSACTION_SkpmServiceCreateGetKeySession:I = 0x4

.field static final blacklist TRANSACTION_SkpmServiceInjectedKeyVerification:I = 0x2

.field static final blacklist TRANSACTION_SkpmServiceKeyInjection:I = 0x1

.field static final blacklist TRANSACTION_SkpmServiceReleaseGetKeySession:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "com.skms.android.agent.ISkpmService"

    invoke-virtual {p0, p0, v0}, Lcom/skms/android/agent/ISkpmService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/skms/android/agent/ISkpmService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    const-string v0, "com.skms.android.agent.ISkpmService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/skms/android/agent/ISkpmService;

    if-eqz v1, :cond_1

    .line 59
    move-object v1, v0

    check-cast v1, Lcom/skms/android/agent/ISkpmService;

    return-object v1

    .line 61
    :cond_1
    new-instance v1, Lcom/skms/android/agent/ISkpmService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/skms/android/agent/ISkpmService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 94
    :pswitch_0
    const-string v0, "SkpmChangeOtaServer"

    return-object v0

    .line 90
    :pswitch_1
    const-string v0, "SkpmServiceReleaseGetKeySession"

    return-object v0

    .line 86
    :pswitch_2
    const-string v0, "SkpmServiceCreateGetKeySession"

    return-object v0

    .line 82
    :pswitch_3
    const-string v0, "SkpmReadInjectedKeyUID"

    return-object v0

    .line 78
    :pswitch_4
    const-string v0, "SkpmServiceInjectedKeyVerification"

    return-object v0

    .line 74
    :pswitch_5
    const-string v0, "SkpmServiceKeyInjection"

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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 362
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 105
    invoke-static {p1}, Lcom/skms/android/agent/ISkpmService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 109
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "com.skms.android.agent.ISkpmService"

    .line 110
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 111
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    move-object/from16 v11, p2

    .line 113
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 121
    packed-switch v7, :pswitch_data_1

    .line 210
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 117
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v10

    .line 199
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {v6, v0, v1}, Lcom/skms/android/agent/ISkpmService$Stub;->SkpmChangeOtaServer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 204
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    goto/16 :goto_1

    .line 191
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/skms/android/agent/ISkpmService$Stub;->SkpmServiceReleaseGetKeySession()I

    move-result v0

    .line 192
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    goto/16 :goto_1

    .line 175
    .end local v0    # "_result":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 177
    .local v0, "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 181
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 182
    .local v3, "_arg3":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/skms/android/agent/ISkpmService$Stub;->SkpmServiceCreateGetKeySession(BLjava/lang/String;[BB)I

    move-result v4

    .line 184
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 187
    goto :goto_1

    .line 158
    .end local v0    # "_arg0":B
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":B
    .end local v4    # "_result":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 160
    .restart local v0    # "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 162
    .local v1, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 165
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/skms/android/agent/ISkpmService$Stub;->SkpmReadInjectedKeyUID(BBLjava/lang/String;[B)I

    move-result v4

    .line 167
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 170
    goto :goto_1

    .line 144
    .end local v0    # "_arg0":B
    .end local v1    # "_arg1":B
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 146
    .restart local v0    # "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 148
    .restart local v1    # "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {v6, v0, v1, v2}, Lcom/skms/android/agent/ISkpmService$Stub;->SkpmServiceInjectedKeyVerification(BBLjava/lang/String;)I

    move-result v3

    .line 151
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    goto :goto_1

    .line 126
    .end local v0    # "_arg0":B
    .end local v1    # "_arg1":B
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v12

    .line 128
    .local v12, "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v13

    .line 130
    .local v13, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 132
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 134
    .local v15, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v16

    .line 135
    .local v16, "_arg4":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/skms/android/agent/ISkpmService$Stub;->SkpmServiceKeyInjection(BBLjava/lang/String;[BB)I

    move-result v0

    .line 137
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    nop

    .line 213
    .end local v0    # "_result":I
    .end local v12    # "_arg0":B
    .end local v13    # "_arg1":B
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":[B
    .end local v16    # "_arg4":B
    :goto_1
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
