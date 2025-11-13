.class public Lcom/samsung/android/wifi/stdp/StandardPlusManager;
.super Ljava/lang/Object;
.source "StandardPlusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy;,
        Lcom/samsung/android/wifi/stdp/StandardPlusManager$EventListener;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mLooper:Landroid/os/Looper;

.field private final blacklist mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/wifi/stdp/IStandardPlusManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    iget-object v0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mLooper:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public blacklist disableUsdNearby(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->disableUsdNearby(I)V
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

.method public blacklist enableUsdNearby(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->enableUsdNearby(I)V
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

.method public blacklist getStdPlusFeature()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->getStdPlusFeature()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public blacklist isVendorNanServiceAvailable()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->isVendorNanServiceAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist registerCallback(Lcom/samsung/android/wifi/stdp/StandardPlusManager$EventListener;)Z
    .locals 3

    new-instance v0, Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy;

    iget-object v1, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy;-><init>(Lcom/samsung/android/wifi/stdp/StandardPlusManager;Landroid/os/Looper;Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {p1}, Lcom/samsung/android/wifi/stdp/StandardPlusManager$EventListener;->hashCode()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->registerCallback(ILcom/samsung/android/wifi/stdp/IStandardPlusCallback;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setNanCommand(I[B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->setNanCommand(I[B)V
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

.method public blacklist startBleScan()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->startBleScan()V
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

.method public blacklist stopBleAdvertising()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->stopBleAdvertising()V
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

.method public blacklist stopBleScan()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->stopBleScan()V
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

.method public blacklist unregisterCallback(Lcom/samsung/android/wifi/stdp/StandardPlusManager$EventListener;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {p1}, Lcom/samsung/android/wifi/stdp/StandardPlusManager$EventListener;->hashCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->unregisterCallback(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
