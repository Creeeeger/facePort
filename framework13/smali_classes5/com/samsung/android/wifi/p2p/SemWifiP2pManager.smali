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

.field public static final whitelist P2P_UNSUPPORTED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemWifiP2pManager"

.field public static final whitelist TYPE_WIFI_AWARE:Ljava/lang/String; = "aware"

.field public static final whitelist TYPE_WIFI_P2P:Ljava/lang/String; = "p2p"

.field public static final whitelist WIFI_P2P_STATE_CONNECTED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.5"
    .end annotation
.end field

.field public static final whitelist WIFI_P2P_STATE_DISABLED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.5"
    .end annotation
.end field

.field public static final whitelist WIFI_P2P_STATE_ENABLED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.5"
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mLooper:Landroid/os/Looper;

.field private final blacklist mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mLooper:Landroid/os/Looper;

    .line 85
    return-void
.end method


# virtual methods
.method public blacklist controlOpenWifiScanTimer(I)V
    .locals 1
    .param p1, "control"    # I

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->controlOpenWifiScanTimer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist discoverPeersOnSocialChannels(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;

    .line 402
    const/16 v0, 0x64b

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->discoverPeersOnSpecificChannel(ILcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V

    .line 403
    return-void
.end method

.method public whitelist discoverPeersOnSpecificChannel(ILcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "channelNum"    # I
    .param p2, "listener"    # Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;

    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, "callbackProxy":Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;
    if-eqz p2, :cond_0

    .line 420
    new-instance v1, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;

    iget-object v2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mLooper:Landroid/os/Looper;

    const-string v3, "discoverPeers"

    invoke-direct {v1, p0, v3, v2, p2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;-><init>(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/Object;)V

    move-object v0, v1

    .line 424
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->discoverPeers(ILcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    goto :goto_0

    .line 425
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Landroid/os/RemoteException;
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->onFailure(I)V

    .line 428
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist getInUsePackageList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->getInUsePackageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getP2pFactoryMacAddress()Landroid/net/MacAddress;
    .locals 2

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->getP2pFactoryMacAddress()Landroid/net/MacAddress;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isWifiP2pConnected()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.5"
    .end annotation

    .line 189
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->getWifiP2pState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist isWifiP2pEnabled()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.5"
    .end annotation

    .line 174
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->getWifiP2pState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist removeClient(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "callbackProxy":Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;
    if-eqz p2, :cond_0

    .line 379
    new-instance v1, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;

    iget-object v2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mLooper:Landroid/os/Looper;

    const-string/jumbo v3, "removeClient"

    invoke-direct {v1, p0, v3, v2, p2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;-><init>(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/Object;)V

    move-object v0, v1

    .line 383
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->removeClient(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    goto :goto_0

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Landroid/os/RemoteException;
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->onFailure(I)V

    .line 387
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist setInUsePackage(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "srcContext"    # Landroid/content/Context;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "reqNextAction"    # Z

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3, p4}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->setInUsePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 312
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setListenOffloading(IIII)V
    .locals 1
    .param p1, "channel"    # I
    .param p2, "period"    # I
    .param p3, "interval"    # I
    .param p4, "count"    # I

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->setListenOffloading(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 244
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setMsMiceInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "capability"    # I
    .param p2, "hexName"    # Ljava/lang/String;
    .param p3, "hexIpAddr"    # Ljava/lang/String;

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->setMsMiceInfo(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    nop

    .line 211
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setScreenSharing(Z)V
    .locals 2
    .param p1, "set"    # Z

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->setScreenSharing(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    nop

    .line 225
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unsetAllInUsePackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->unsetAllInUsePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 363
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist unsetInUsePackage(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "srcContext"    # Landroid/content/Context;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "reqNextAction"    # Z

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->mService:Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3, p4}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;->unsetInUsePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 342
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
