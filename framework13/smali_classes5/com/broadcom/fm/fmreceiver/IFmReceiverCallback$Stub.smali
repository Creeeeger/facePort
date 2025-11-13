.class public abstract Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;
.super Landroid/os/Binder;
.source "IFmReceiverCallback.java"

# interfaces
.implements Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onRdsAFEvent:I = 0x4

.field static final blacklist TRANSACTION_onRdsDataEvent:I = 0x2

.field static final blacklist TRANSACTION_onRdsPIECCEvent:I = 0x5

.field static final blacklist TRANSACTION_onRdsRTPlusEvent:I = 0x3

.field static final blacklist TRANSACTION_onStatusEvent:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 81
    if-nez p0, :cond_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    if-eqz v1, :cond_1

    .line 86
    move-object v1, v0

    check-cast v1, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    return-object v1

    .line 88
    :cond_1
    new-instance v1, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 97
    packed-switch p0, :pswitch_data_0

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 117
    :pswitch_0
    const-string v0, "onRdsPIECCEvent"

    return-object v0

    .line 113
    :pswitch_1
    const-string v0, "onRdsAFEvent"

    return-object v0

    .line 109
    :pswitch_2
    const-string v0, "onRdsRTPlusEvent"

    return-object v0

    .line 105
    :pswitch_3
    const-string v0, "onRdsDataEvent"

    return-object v0

    .line 101
    :pswitch_4
    const-string v0, "onStatusEvent"

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

    .line 92
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 378
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 128
    invoke-static {p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    move-object/from16 v10, p0

    move/from16 v11, p1

    const-string v12, "com.broadcom.fm.fmreceiver.IFmReceiverCallback"

    .line 133
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v11, v13, :cond_0

    const v0, 0xffffff

    if-gt v11, v0, :cond_0

    .line 134
    move-object/from16 v14, p2

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    move-object/from16 v14, p2

    .line 136
    :goto_0
    packed-switch v11, :pswitch_data_0

    .line 144
    move-object/from16 v15, p3

    packed-switch v11, :pswitch_data_1

    .line 225
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 140
    :pswitch_0
    move-object/from16 v15, p3

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return v13

    .line 215
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 218
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {v10, v0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;->onRdsPIECCEvent(II)V

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    goto/16 :goto_1

    .line 206
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {v10, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;->onRdsAFEvent(I)V

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto/16 :goto_1

    .line 187
    .end local v0    # "_arg0":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 189
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 191
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 193
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 195
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 197
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 198
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;->onRdsRTPlusEvent(IIIIII)V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_1

    .line 174
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {v10, v0, v1, v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;->onRdsDataEvent(IILjava/lang/String;)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    goto :goto_1

    .line 149
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 151
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 153
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 155
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 157
    .local v19, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 159
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 161
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 163
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 165
    .local v23, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v24

    .line 166
    .local v24, "_arg8":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;->onStatusEvent(IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    nop

    .line 228
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Z
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":Ljava/lang/String;
    .end local v24    # "_arg8":Z
    :goto_1
    return v13

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
