.class public abstract Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;
.super Landroid/os/Binder;
.source "ISharedConnectivityCallback.java"

# interfaces
.implements Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onHotspotNetworkConnectionStatusChanged:I = 0x2

.field static final blacklist TRANSACTION_onHotspotNetworksUpdated:I = 0x1

.field static final blacklist TRANSACTION_onKnownNetworkConnectionStatusChanged:I = 0x4

.field static final blacklist TRANSACTION_onKnownNetworksUpdated:I = 0x3

.field static final blacklist TRANSACTION_onServiceConnected:I = 0x6

.field static final blacklist TRANSACTION_onSharedConnectivitySettingsChanged:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.wifi.sharedconnectivity.service.ISharedConnectivityCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.net.wifi.sharedconnectivity.service.ISharedConnectivityCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    return-object v1

    :cond_1
    new-instance v1, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "onServiceConnected"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "onSharedConnectivitySettingsChanged"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "onKnownNetworkConnectionStatusChanged"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "onKnownNetworksUpdated"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "onHotspotNetworkConnectionStatusChanged"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "onHotspotNetworksUpdated"

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

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.net.wifi.sharedconnectivity.service.ISharedConnectivityCallback"

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
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->onServiceConnected()V

    goto :goto_0

    :pswitch_1
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->onSharedConnectivitySettingsChanged(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V

    goto :goto_0

    :pswitch_2
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->onKnownNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V

    goto :goto_0

    :pswitch_3
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->onKnownNetworksUpdated(Ljava/util/List;)V

    goto :goto_0

    :pswitch_4
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->onHotspotNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V

    goto :goto_0

    :pswitch_5
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->onHotspotNetworksUpdated(Ljava/util/List;)V

    nop

    :goto_0
    return v1

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
