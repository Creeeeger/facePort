.class public Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
.super Ljava/lang/Object;
.source "SecureClient.java"


# instance fields
.field private blacklist clientId:Ljava/lang/String;

.field private blacklist privateSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

.field private blacklist sessionHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->clientId:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

    invoke-direct {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->privateSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist decryptMessageFrom(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist decryptMessageFrom(Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->decryptBytes([B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist destroy()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;

    invoke-virtual {v2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->destroySessionkey()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->privateSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist encryptMessageFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist encryptMessageFor(Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->encryptBytes([B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPublicKeyString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->privateSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;->getPublicKeyString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized blacklist hasActiveSecureSessions()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist initializeSecureSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;

    invoke-direct {v0, p2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    new-instance v2, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;

    iget-object v3, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->privateSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;-><init>(Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist terminateSecureSession(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->destroySessionkey()V

    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->sessionHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
