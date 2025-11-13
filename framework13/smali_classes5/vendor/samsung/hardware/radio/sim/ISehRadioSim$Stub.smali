.class public abstract Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;
.super Landroid/os/Binder;
.source "ISehRadioSim.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/sim/ISehRadioSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/sim/ISehRadioSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_accessPhonebookEntry:I = 0xb

.field static final blacklist TRANSACTION_changeIccPersonalization:I = 0x9

.field static final blacklist TRANSACTION_getAtr:I = 0xc

.field static final blacklist TRANSACTION_getIccCardStatus:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getPhonebookEntry:I = 0xa

.field static final blacklist TRANSACTION_getPhonebookStorageInfo:I = 0x3

.field static final blacklist TRANSACTION_getSimLockInfo:I = 0x7

.field static final blacklist TRANSACTION_getUsimPhonebookCapability:I = 0x4

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0xd

.field static final blacklist TRANSACTION_setSimInitEvent:I = 0x6

.field static final blacklist TRANSACTION_setSimOnOff:I = 0x5

.field static final blacklist TRANSACTION_supplyIccPersonalization:I = 0x8

.field static final blacklist TRANSACTION_supplyNetworkDepersonalization:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->markVintfStability()V

    .line 77
    sget-object v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/sim/ISehRadioSim;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 85
    if-nez p0, :cond_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    sget-object v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    if-eqz v1, :cond_1

    .line 90
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    return-object v1

    .line 92
    :cond_1
    new-instance v1, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 96
    return-object p0
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

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    sget-object v11, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 101
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 102
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_0
    sparse-switch v8, :sswitch_data_0

    .line 124
    packed-switch v8, :pswitch_data_0

    .line 267
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 108
    :sswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v12

    .line 113
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return v12

    .line 119
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v12

    .line 257
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;

    move-result-object v0

    .line 259
    .local v0, "_arg0":Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;

    move-result-object v1

    .line 260
    .local v1, "_arg1":Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->setResponseFunctions(Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto/16 :goto_0

    .line 249
    .end local v0    # "_arg0":Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;
    .end local v1    # "_arg1":Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 250
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->getAtr(I)V

    .line 252
    goto/16 :goto_0

    .line 231
    .end local v0    # "_arg0":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 233
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 235
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 237
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 239
    .local v16, "_arg3":I
    sget-object v0, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;

    .line 241
    .local v17, "_arg4":Lvendor/samsung/hardware/radio/sim/SehAdnRecord;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 242
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->accessPhonebookEntry(IIIILvendor/samsung/hardware/radio/sim/SehAdnRecord;Ljava/lang/String;)V

    .line 244
    goto/16 :goto_0

    .line 219
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Lvendor/samsung/hardware/radio/sim/SehAdnRecord;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 221
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 223
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 224
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->getPhonebookEntry(III)V

    .line 226
    goto/16 :goto_0

    .line 207
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->changeIccPersonalization(ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    goto/16 :goto_0

    .line 197
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->supplyIccPersonalization(ILjava/lang/String;)V

    .line 202
    goto :goto_0

    .line 185
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 187
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 190
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->getSimLockInfo(III)V

    .line 192
    goto :goto_0

    .line 177
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 178
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->setSimInitEvent(I)V

    .line 180
    goto :goto_0

    .line 167
    .end local v0    # "_arg0":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 170
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->setSimOnOff(II)V

    .line 172
    goto :goto_0

    .line 159
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->getUsimPhonebookCapability(I)V

    .line 162
    goto :goto_0

    .line 149
    .end local v0    # "_arg0":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->getPhonebookStorageInfo(II)V

    .line 154
    goto :goto_0

    .line 137
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;I)V

    .line 144
    goto :goto_0

    .line 129
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim$Stub;->getIccCardStatus(I)V

    .line 132
    nop

    .line 270
    .end local v0    # "_arg0":I
    :goto_0
    return v12

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

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
