.class public Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Default;
.super Ljava/lang/Object;
.source "ISemWifiP2pManager.java"

# interfaces
.implements Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist controlOpenWifiScanTimer(I)V
    .locals 0
    .param p1, "control"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist discoverPeers(ILcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V
    .locals 0
    .param p1, "channelNum"    # I
    .param p2, "callback"    # Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist getInUsePackageList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getP2pFactoryMacAddress()Landroid/net/MacAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWifiP2pState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeClient(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist setInUsePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "ctxPkg"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "reqNextAction"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist setListenOffloading(IIII)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "period"    # I
    .param p3, "interval"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist setMsMiceInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "capability"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ipAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist setScreenSharing(Z)V
    .locals 0
    .param p1, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist unsetAllInUsePackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist unsetInUsePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "ctxPkg"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "reqNextAction"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method
