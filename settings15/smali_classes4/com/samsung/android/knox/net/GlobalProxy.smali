.class public Lcom/samsung/android/knox/net/GlobalProxy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static TAG:Ljava/lang/String; = "GlobalProxy"


# instance fields
.field public final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/IMiscPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method


# virtual methods
.method public final canUsePacOrAuthConfig()Z
    .locals 1

    sget p0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v0, 0x11

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/GlobalProxy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/IMiscPolicy;->getGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    const-string v0, "RemoteException at method getGlobalProxy"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/IMiscPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    return-object p0
.end method

.method public final isUsingPacOrAuthConfig(Lcom/samsung/android/knox/net/ProxyProperties;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->isAuthenticationConfigured()Z

    move-result p1

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public setGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)I
    .locals 4

    const-string v0, "RemoteException at method setGlobalProxy"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/GlobalProxy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {p1, p0}, Lcom/samsung/android/knox/IMiscPolicy;->clearGlobalProxyEnableEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/GlobalProxy;->isUsingPacOrAuthConfig(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/GlobalProxy;->canUsePacOrAuthConfig()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v3, "GlobalProxy.setGlobalProxy"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v2

    if-gez v2, :cond_3

    sget-object p0, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    const-string p1, "inValid proxyPort"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/GlobalProxy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/GlobalProxy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/IMiscPolicy;->setGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    sget-object p0, Lcom/samsung/android/knox/net/GlobalProxy;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1
.end method
