.class public abstract Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.super Ljava/lang/Object;
.source "IProxyAgentService.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IProxyAgentService::Abstract"


# instance fields
.field protected blacklist mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "svcName"    # Ljava/lang/String;
    .param p3, "secureClientId"    # Ljava/lang/String;
    .param p4, "secureClientPubKey"    # Ljava/lang/String;

    .line 38
    const-string v0, "IProxyAgentService::Abstract"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeSecureSession between: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-direct {v1, p2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {v1, p3, p4}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->initializeSecureSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {v1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->getPublicKeyString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    const-string v2, "initializeSecureSession failed!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public blacklist terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "svcName"    # Ljava/lang/String;
    .param p3, "secureClientId"    # Ljava/lang/String;

    .line 53
    const-string v0, "IProxyAgentService::Abstract"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "terminateSecureSession between: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {v1, p3}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->terminateSecureSession(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {v1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->hasActiveSecureSessions()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {v1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->destroy()V

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    const-string/jumbo v2, "terminateSecureSession failed!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    return v0
.end method
