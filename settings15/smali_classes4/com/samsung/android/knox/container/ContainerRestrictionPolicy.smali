.class public Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static TAG:Ljava/lang/String; = "ContainerRestrictionPolicy"

.field public static gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static declared-synchronized getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v1, :cond_0

    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public allowShareList(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerRestrictionPolicy.allowShareList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowShareList(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public isCameraEnabled(Z)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with device info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public isScreenCaptureEnabled(Z)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public isShareListAllowed()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public isUseSecureKeypadEnabled()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public setCameraState(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerRestrictionPolicy.setCameraState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setCamera(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc info policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public setScreenCapture(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerRestrictionPolicy.setScreenCapture"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setScreenCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public setUseSecureKeypad(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerRestrictionPolicy.setUseSecureKeypad"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUseSecureKeypad(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with misc policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method
