.class public Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;
.super Ljava/lang/Object;
.source "SemWifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;,
        Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;
    }
.end annotation


# static fields
.field public static final whitelist BUSY:I = 0x2

.field public static final whitelist ERROR:I = 0x0

.field public static final whitelist EXTRA_DEVICE:Ljava/lang/String; = "semWifiP2pDevice"

.field public static final whitelist P2P_UNSUPPORTED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemWifiP2pManager"

.field public static final whitelist TYPE_WIFI_AWARE:Ljava/lang/String; = "aware"

.field public static final whitelist TYPE_WIFI_P2P:Ljava/lang/String; = "p2p"

.field public static final blacklist WIFI_P2P_CLIENT_IP_UPDATED_ACTION:Ljava/lang/String; = "com.samsung.android.wifi.p2p.CLIENT_IP_UPDATED"

.field public static final whitelist WIFI_P2P_PEER_FOUND_ACTION:Ljava/lang/String; = "com.samsung.android.wifi.p2p.PEER_FOUND"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mLooper:Landroid/os/Looper;

.field private final blacklist mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mLooper:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public blacklist controlOpenWifiScanTimer(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->controlOpenWifiScanTimer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist disconnectApBlockAutojoin(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->disconnectApBlockAutojoin(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public whitelist discoverPeersOnSocialChannels(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V
    .locals 1

    const/16 v0, 0x64b

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->discoverPeersOnSpecificChannel(ILcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V

    return-void
.end method

.method public whitelist discoverPeersOnSpecificChannel(ILcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;

    const-string v2, "discoverPeers"

    iget-object v3, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2, v3, p2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;-><init>(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/Object;)V

    move-object v0, v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->discoverPeers(ILcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->onFailure(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist factoryReset()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->factoryReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getChannelsMhzForBand(I)[I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->getChannelsMhzForBand(I)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChannelsMhzForBand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onFailure="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiP2pManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1
.end method

.method public whitelist getInUsePackageList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->getInUsePackageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getP2pFactoryMacAddress()Landroid/net/MacAddress;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->getP2pFactoryMacAddress()Landroid/net/MacAddress;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getP2pFeature()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->getP2pFeature()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public whitelist getSemWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
    .locals 4

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->getVendorElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->getVendorElements()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->getSemWifiP2pDevice(Ljava/lang/String;)Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist isP2pSoftApConcurrencySupported()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->isP2pSoftApConcurrencySupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isP2pSoftApConcurrencySupported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiP2pManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isWifiP2pConnected()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->isP2pConnected()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public whitelist removeClient(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;

    const-string v2, "removeClient"

    iget-object v3, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2, v3, p2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;-><init>(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/Object;)V

    move-object v0, v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->removeClient(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->onFailure(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setAwareEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->setAwareEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public whitelist setInUsePackage(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3, p4}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->setInUsePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist setListenOffloading(IIII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->setListenOffloading(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist setMsMiceInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->setMsMiceInfo(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setPreparedAccountPin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    new-instance v1, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;

    const-string v2, "setPreparedAccountPin"

    iget-object v3, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2, v3, p6}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;-><init>(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/Object;)V

    move-object v0, v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->setPreparedAccountPin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->onFailure(I)V

    :cond_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setPreparedAccountPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.1"
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->setPreparedAccountPin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setPreparedAccountPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    new-instance v1, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;

    const-string v2, "setPreparedAccountPin"

    iget-object v3, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2, v3, p4}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;-><init>(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/Object;)V

    move-object v0, v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->setPreparedAccountPin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->onFailure(I)V

    :cond_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setScreenSharing(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->setScreenSharing(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unsetAllInUsePackage(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->unsetAllInUsePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public whitelist unsetInUsePackage(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3, p4}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->unsetInUsePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
