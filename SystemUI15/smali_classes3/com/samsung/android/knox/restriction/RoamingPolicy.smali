.class public Lcom/samsung/android/knox/restriction/RoamingPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static TAG:Ljava/lang/String; = "RoamingPolicy"


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method


# virtual methods
.method public final getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "roaming_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRoamingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    return-object p0
.end method

.method public isRoamingDataEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with roaming policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isRoamingPushEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->isRoamingPushEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with roaming policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isRoamingSyncEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with roaming policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isRoamingVoiceCallsEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->isRoamingVoiceCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with roaming policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setRoamingData(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RoamingPolicy.setRoamingData"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->setRoamingData(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with roaming policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setRoamingPush(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RoamingPolicy.setRoamingPush"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->setRoamingPush(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with roaming policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setRoamingSync(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RoamingPolicy.setRoamingSync"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->setRoamingSync(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with roaming policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setRoamingVoiceCalls(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RoamingPolicy.setRoamingVoiceCalls"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->getService()Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mService:Lcom/samsung/android/knox/restriction/IRoamingPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/RoamingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRoamingPolicy;->setRoamingVoiceCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with roaming policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
