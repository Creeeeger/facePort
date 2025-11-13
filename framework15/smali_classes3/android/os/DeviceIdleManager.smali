.class public Landroid/os/DeviceIdleManager;
.super Ljava/lang/Object;
.source "DeviceIdleManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mService:Landroid/os/IDeviceIdleController;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/IDeviceIdleController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/DeviceIdleManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    return-void
.end method


# virtual methods
.method public whitelist endIdle(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
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

.method blacklist getService()Landroid/os/IDeviceIdleController;
    .locals 1

    iget-object v0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    return-object v0
.end method

.method public blacklist getSystemPowerWhitelist()[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

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

.method public blacklist getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

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
