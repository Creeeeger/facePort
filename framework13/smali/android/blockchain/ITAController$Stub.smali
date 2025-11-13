.class public abstract Landroid/blockchain/ITAController$Stub;
.super Landroid/os/Binder;
.source "ITAController.java"

# interfaces
.implements Landroid/blockchain/ITAController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/blockchain/ITAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/blockchain/ITAController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_loadTA:I = 0x1

.field static final blacklist TRANSACTION_processTACommand:I = 0x3

.field static final blacklist TRANSACTION_unloadTA:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "android.blockchain.ITAController"

    invoke-virtual {p0, p0, v0}, Landroid/blockchain/ITAController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/blockchain/ITAController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "android.blockchain.ITAController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/blockchain/ITAController;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Landroid/blockchain/ITAController;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Landroid/blockchain/ITAController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/blockchain/ITAController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 57
    packed-switch p0, :pswitch_data_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 69
    :pswitch_0
    const-string/jumbo v0, "processTACommand"

    return-object v0

    .line 65
    :pswitch_1
    const-string/jumbo v0, "unloadTA"

    return-object v0

    .line 61
    :pswitch_2
    const-string v0, "loadTA"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 209
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 80
    invoke-static {p1}, Landroid/blockchain/ITAController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 84
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "android.blockchain.ITAController"

    .line 85
    .local v3, "descriptor":Ljava/lang/String;
    const/4 v4, 0x1

    if-lt v0, v4, :cond_0

    const v5, 0xffffff

    if-gt v0, v5, :cond_0

    .line 86
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 96
    packed-switch v0, :pswitch_data_1

    .line 130
    move-object/from16 v12, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 92
    :pswitch_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return v4

    .line 121
    :pswitch_1
    sget-object v5, Landroid/blockchain/TACommandRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/blockchain/TACommandRequest;

    .line 122
    .local v5, "_arg0":Landroid/blockchain/TACommandRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    move-object/from16 v12, p0

    invoke-virtual {v12, v5}, Landroid/blockchain/ITAController$Stub;->processTACommand(Landroid/blockchain/TACommandRequest;)Landroid/blockchain/TACommandResponse;

    move-result-object v6

    .line 124
    .local v6, "_result":Landroid/blockchain/TACommandResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {v2, v6, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 126
    goto :goto_0

    .line 114
    .end local v5    # "_arg0":Landroid/blockchain/TACommandRequest;
    .end local v6    # "_result":Landroid/blockchain/TACommandResponse;
    :pswitch_2
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Landroid/blockchain/ITAController$Stub;->unloadTA()V

    .line 115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    goto :goto_0

    .line 101
    :pswitch_3
    move-object/from16 v12, p0

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 103
    .local v5, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 105
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 106
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    move-object/from16 v6, p0

    move-object v7, v5

    move-wide v8, v13

    move-wide v10, v15

    invoke-virtual/range {v6 .. v11}, Landroid/blockchain/ITAController$Stub;->loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v6

    .line 108
    .local v6, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 110
    nop

    .line 133
    .end local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "_result":Z
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":J
    :goto_0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
