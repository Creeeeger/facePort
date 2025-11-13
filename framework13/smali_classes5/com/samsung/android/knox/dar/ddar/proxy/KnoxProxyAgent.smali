.class public Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;
.super Landroid/app/Service;
.source "KnoxProxyAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent$ServiceImpl;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "KnoxProxyAgent"


# instance fields
.field blacklist mPolicyServiceLock:Ljava/lang/Object;

.field blacklist mPolicyServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->mPolicyServiceLock:Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->mPolicyServiceMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected blacklist establishSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "svcName"    # Ljava/lang/String;
    .param p3, "secureClientId"    # Ljava/lang/String;
    .param p4, "secureClientPubKey"    # Ljava/lang/String;

    .line 80
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->getService(Ljava/lang/String;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;

    move-result-object v0

    .line 81
    .local v0, "svc":Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
    if-nez v0, :cond_0

    .line 82
    const-string v1, "KnoxProxyAgent"

    const-string v2, "Service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v1, 0x0

    return-object v1

    .line 86
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getService(Ljava/lang/String;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->mPolicyServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->mPolicyServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    const-string v1, "KnoxProxyAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy Agent Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->mPolicyServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;

    monitor-exit v0

    return-object v1

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected blacklist onAgentReconnected()V
    .locals 0

    .line 102
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 44
    new-instance v0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent$ServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent$ServiceImpl;-><init>(Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent$ServiceImpl-IA;)V

    return-object v0
.end method

.method public whitelist onCreate()V
    .locals 2

    .line 38
    const-string v0, "KnoxProxyAgent"

    const-string v1, "onCreate!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public blacklist register(Ljava/lang/String;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;

    .line 112
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->mPolicyServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->mPolicyServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "KnoxProxyAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy Agent Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->mPolicyServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "KnoxProxyAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy Agent Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    monitor-exit v0

    .line 121
    const/4 v0, 0x1

    return v0

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "svcName"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;

    .line 70
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->getService(Ljava/lang/String;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;

    move-result-object v0

    .line 71
    .local v0, "svc":Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
    if-nez v0, :cond_0

    .line 72
    const-string v1, "KnoxProxyAgent"

    const-string v2, "Service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    return-object v1

    .line 76
    :cond_0
    invoke-virtual {v0, p1, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist teardownSecureSession(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "svcName"    # Ljava/lang/String;
    .param p3, "secureClientId"    # Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->getService(Ljava/lang/String;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;

    move-result-object v0

    .line 91
    .local v0, "svc":Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
    if-nez v0, :cond_0

    .line 92
    const-string v1, "KnoxProxyAgent"

    const-string v2, "Service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v1, 0x0

    return v1

    .line 96
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
