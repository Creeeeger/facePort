.class public abstract Landroid/spay/ITAController$Stub;
.super Landroid/os/Binder;
.source "ITAController.java"

# interfaces
.implements Landroid/spay/ITAController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/spay/ITAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/spay/ITAController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_checkCertInfo:I = 0x6

.field static final blacklist TRANSACTION_clearDeviceCertificates:I = 0x5

.field static final blacklist TRANSACTION_loadTA:I = 0x1

.field static final blacklist TRANSACTION_makeSystemCall:I = 0x4

.field static final blacklist TRANSACTION_processTACommand:I = 0x3

.field static final blacklist TRANSACTION_unloadTA:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p0, p0, v0}, Landroid/spay/ITAController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/spay/ITAController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    const-string v0, "android.spay.ITAController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/spay/ITAController;

    if-eqz v1, :cond_1

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/spay/ITAController;

    return-object v1

    .line 60
    :cond_1
    new-instance v1, Landroid/spay/ITAController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/spay/ITAController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_0

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 93
    :pswitch_0
    const-string v0, "checkCertInfo"

    return-object v0

    .line 89
    :pswitch_1
    const-string v0, "clearDeviceCertificates"

    return-object v0

    .line 85
    :pswitch_2
    const-string/jumbo v0, "makeSystemCall"

    return-object v0

    .line 81
    :pswitch_3
    const-string/jumbo v0, "processTACommand"

    return-object v0

    .line 77
    :pswitch_4
    const-string/jumbo v0, "unloadTA"

    return-object v0

    .line 73
    :pswitch_5
    const-string/jumbo v0, "loadTA"

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

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 320
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 104
    invoke-static {p1}, Landroid/spay/ITAController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 108
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.spay.ITAController"

    .line 109
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 110
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 120
    packed-switch v7, :pswitch_data_1

    .line 184
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 116
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v11

    .line 175
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 176
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {v6, v0}, Landroid/spay/ITAController$Stub;->checkCertInfo(Ljava/util/List;)Landroid/spay/CertInfo;

    move-result-object v1

    .line 178
    .local v1, "_result":Landroid/spay/CertInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 180
    goto :goto_0

    .line 165
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_result":Landroid/spay/CertInfo;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {v6, v0}, Landroid/spay/ITAController$Stub;->clearDeviceCertificates(Ljava/lang/String;)Z

    move-result v1

    .line 168
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 170
    goto :goto_0

    .line 155
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 156
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {v6, v0}, Landroid/spay/ITAController$Stub;->makeSystemCall(I)Z

    move-result v1

    .line 158
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 160
    goto :goto_0

    .line 145
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4
    sget-object v0, Landroid/spay/TACommandRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/spay/TACommandRequest;

    .line 146
    .local v0, "_arg0":Landroid/spay/TACommandRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {v6, v0}, Landroid/spay/ITAController$Stub;->processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;

    move-result-object v1

    .line 148
    .local v1, "_result":Landroid/spay/TACommandResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 150
    goto :goto_0

    .line 138
    .end local v0    # "_arg0":Landroid/spay/TACommandRequest;
    .end local v1    # "_result":Landroid/spay/TACommandResponse;
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/spay/ITAController$Stub;->unloadTA()V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    goto :goto_0

    .line 125
    :pswitch_6
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/ParcelFileDescriptor;

    .line 127
    .local v12, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 129
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 130
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v13

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/spay/ITAController$Stub;->loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v0

    .line 132
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 134
    nop

    .line 187
    .end local v0    # "_result":Z
    .end local v12    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":J
    :goto_0
    return v11

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
