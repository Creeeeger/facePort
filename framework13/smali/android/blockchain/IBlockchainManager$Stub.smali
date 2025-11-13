.class public abstract Landroid/blockchain/IBlockchainManager$Stub;
.super Landroid/os/Binder;
.source "IBlockchainManager.java"

# interfaces
.implements Landroid/blockchain/IBlockchainManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/blockchain/IBlockchainManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/blockchain/IBlockchainManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCredential:I = 0x4

.field static final blacklist TRANSACTION_getMeasurementFile:I = 0x2

.field static final blacklist TRANSACTION_putCredential:I = 0x3

.field static final blacklist TRANSACTION_registerBlockchainFW:I = 0x1

.field static final blacklist TRANSACTION_sspExit:I = 0x6

.field static final blacklist TRANSACTION_sspInit:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.blockchain.IBlockchainManager"

    invoke-virtual {p0, p0, v0}, Landroid/blockchain/IBlockchainManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/blockchain/IBlockchainManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    const-string v0, "android.blockchain.IBlockchainManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/blockchain/IBlockchainManager;

    if-eqz v1, :cond_1

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/blockchain/IBlockchainManager;

    return-object v1

    .line 61
    :cond_1
    new-instance v1, Landroid/blockchain/IBlockchainManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/blockchain/IBlockchainManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo v0, "sspExit"

    return-object v0

    .line 90
    :pswitch_1
    const-string/jumbo v0, "sspInit"

    return-object v0

    .line 86
    :pswitch_2
    const-string v0, "getCredential"

    return-object v0

    .line 82
    :pswitch_3
    const-string/jumbo v0, "putCredential"

    return-object v0

    .line 78
    :pswitch_4
    const-string v0, "getMeasurementFile"

    return-object v0

    .line 74
    :pswitch_5
    const-string/jumbo v0, "registerBlockchainFW"

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

    .line 314
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 105
    invoke-static {p1}, Landroid/blockchain/IBlockchainManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const-string v0, "android.blockchain.IBlockchainManager"

    .line 110
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 121
    packed-switch p1, :pswitch_data_1

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 117
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 171
    :pswitch_1
    invoke-virtual {p0}, Landroid/blockchain/IBlockchainManager$Stub;->sspExit()I

    move-result v2

    .line 172
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    goto :goto_0

    .line 164
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {p0}, Landroid/blockchain/IBlockchainManager$Stub;->sspInit()I

    move-result v2

    .line 165
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    goto :goto_0

    .line 155
    .end local v2    # "_result":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 156
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2}, Landroid/blockchain/IBlockchainManager$Stub;->getCredential(I)[B

    move-result-object v3

    .line 158
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 160
    goto :goto_0

    .line 143
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 146
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2, v3}, Landroid/blockchain/IBlockchainManager$Stub;->putCredential(I[B)Z

    move-result v4

    .line 148
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 150
    goto :goto_0

    .line 135
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":Z
    :pswitch_5
    invoke-virtual {p0}, Landroid/blockchain/IBlockchainManager$Stub;->getMeasurementFile()[B

    move-result-object v2

    .line 136
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 138
    goto :goto_0

    .line 126
    .end local v2    # "_result":[B
    :pswitch_6
    sget-object v2, Landroid/blockchain/BlockchainTZServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/blockchain/BlockchainTZServiceConfig;

    .line 127
    .local v2, "_arg0":Landroid/blockchain/BlockchainTZServiceConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Landroid/blockchain/IBlockchainManager$Stub;->registerBlockchainFW(Landroid/blockchain/BlockchainTZServiceConfig;)Landroid/blockchain/BlockchainTZServiceCommnInfo;

    move-result-object v3

    .line 129
    .local v3, "_result":Landroid/blockchain/BlockchainTZServiceCommnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 131
    nop

    .line 181
    .end local v2    # "_arg0":Landroid/blockchain/BlockchainTZServiceConfig;
    .end local v3    # "_result":Landroid/blockchain/BlockchainTZServiceCommnInfo;
    :goto_0
    return v1

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
