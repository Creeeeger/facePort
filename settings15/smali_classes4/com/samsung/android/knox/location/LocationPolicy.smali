.class public Lcom/samsung/android/knox/location/LocationPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static TAG:Ljava/lang/String; = "LocationPolicy"


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/location/ILocationPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method


# virtual methods
.method public getAllLocationProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "getAllLocationProviders"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "LocationPolicy.getAllLocationProviders - Deprecated API LEVEL 30"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getLocationProviderState(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "getLocationProviderState"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "LocationPolicy.getLocationProviderState - Deprecated API LEVEL 30"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final getService()Lcom/samsung/android/knox/location/ILocationPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    if-nez v0, :cond_0

    const-string v0, "location_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/location/ILocationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/location/ILocationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    return-object p0
.end method

.method public isGPSOn()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isGPSOn"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v1, ">>> isGPSOn"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/location/LocationPolicy;->getService()Lcom/samsung/android/knox/location/ILocationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/location/ILocationPolicy;->isGPSOn(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "isGPSOn - Failed talking with Location service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isGPSStateChangeAllowed()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v1, ">>> isGPSStateChangeAllowed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/location/LocationPolicy;->getService()Lcom/samsung/android/knox/location/ILocationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/location/ILocationPolicy;->isGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "isGPSStateChangeAllowed - Failed talking with Location service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "isLocationProviderBlocked"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "LocationPolicy.isLocationProviderBlocked - Deprecated API LEVEL 30"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setGPSStateChangeAllowed(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LocationPolicy.setGPSStateChangeAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v1, ">>> setGPSStateChangeAllowed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/location/LocationPolicy;->getService()Lcom/samsung/android/knox/location/ILocationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/location/ILocationPolicy;->setGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setGPSStateChangeAllowed - Failed talking with Location service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setLocationProviderState(Ljava/lang/String;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo p1, "setLocationProviderState"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "LocationPolicy.setLocationProviderState - Deprecated API LEVEL 30"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public startGPS(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "startGPS"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LocationPolicy.startGPS"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v1, ">>> startGPS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/location/LocationPolicy;->getService()Lcom/samsung/android/knox/location/ILocationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mService:Lcom/samsung/android/knox/location/ILocationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/location/LocationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/location/ILocationPolicy;->startGPS(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/location/LocationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startGPS - Failed talking with Location service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
