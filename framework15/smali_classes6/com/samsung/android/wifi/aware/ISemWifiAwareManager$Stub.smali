.class public abstract Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;
.super Landroid/os/Binder;
.source "ISemWifiAwareManager.java"

# interfaces
.implements Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getMaxNdpCountForAwareP2p:I = 0x8

.field static final blacklist TRANSACTION_getMaxNdpCountForAwareSoftAp:I = 0x9

.field static final blacklist TRANSACTION_getStdPlusFeature:I = 0x5

.field static final blacklist TRANSACTION_isAwareP2pConcurrencySupported:I = 0x7

.field static final blacklist TRANSACTION_isAwareSoftApConcurrencySupported:I = 0x6

.field static final blacklist TRANSACTION_isPreEnabled:I = 0x2

.field static final blacklist TRANSACTION_isVendorNanServiceAvailable:I = 0x4

.field static final blacklist TRANSACTION_setClusterMergingEnabled:I = 0x1

.field static final blacklist TRANSACTION_setNanCommand:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.wifi.aware.ISemWifiAwareManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.wifi.aware.ISemWifiAwareManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "getMaxNdpCountForAwareSoftAp"

    return-object v0

    :pswitch_1
    const-string v0, "getMaxNdpCountForAwareP2p"

    return-object v0

    :pswitch_2
    const-string v0, "isAwareP2pConcurrencySupported"

    return-object v0

    :pswitch_3
    const-string v0, "isAwareSoftApConcurrencySupported"

    return-object v0

    :pswitch_4
    const-string v0, "getStdPlusFeature"

    return-object v0

    :pswitch_5
    const-string v0, "isVendorNanServiceAvailable"

    return-object v0

    :pswitch_6
    const-string v0, "setNanCommand"

    return-object v0

    :pswitch_7
    const-string v0, "isPreEnabled"

    return-object v0

    :pswitch_8
    const-string v0, "setClusterMergingEnabled"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.wifi.aware.ISemWifiAwareManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;->getMaxNdpCountForAwareSoftAp()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;->getMaxNdpCountForAwareP2p()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;->isAwareP2pConcurrencySupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;->isAwareSoftApConcurrencySupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;->getStdPlusFeature()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;->isVendorNanServiceAvailable()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;->setNanCommand(I[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;->isPreEnabled()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/aware/ISemWifiAwareManager$Stub;->setClusterMergingEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
