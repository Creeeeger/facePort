.class public Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CONN_MAX_WAIT_TIME:I = 0x9c4

.field public static final TAG:Ljava/lang/String; = "KnoxAiManagerInternal"

.field public static sKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;


# instance fields
.field public final mConnLock:Ljava/lang/Object;

.field public mContext:Landroid/content/Context;

.field public mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

.field public mKFAConn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;-><init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;)V

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mKFAConn:Landroid/content/ServiceConnection;

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KnoxAiManagerInternal Constructor called: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->sKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->sKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->sKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->sKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final bindKFAServiceInstance()Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action.decrypt"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.kfa"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "binder"

    const-string v2, "decrypt"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mKFAConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string v1, "getKFAServiceInstance trying to bind, status: "

    invoke-static {v1, v0, p0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public close(J)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->close(J)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    return-object p1

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string p2, "RemoteException in KFA"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string v0, "DeadObjectException in KFA, retrying bind"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    :goto_3
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    return-object p0
.end method

.method public createKnoxAiSession()J
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string v1, "createKnoxAiSession entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getValue()I

    move-result p0

    :goto_0
    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-string v1, "createKnoxAiSession connection exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$2;-><init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;)V

    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    invoke-interface {v1, v0}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->createKnoxAiSession(Lcom/samsung/android/knox/ex/knoxAI/IDeathNotifier;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string v1, "RemoteException in KFA"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string v2, "DeadObjectException in KFA, retrying bind"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    :goto_3
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getValue()I

    move-result p0

    goto :goto_0
.end method

.method public destroyKnoxAiSession(J)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string v1, "destroyKnoxAiSession entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    return-object p0

    :cond_0
    const-string v1, "destroyKnoxAiSession connection exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->destroyKnoxAiSession(J)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    return-object p1

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string p2, "RemoteException in KFA"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string v0, "DeadObjectException in KFA, retrying bind"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    :goto_3
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    return-object p0
.end method

.method public execute(J[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->execute(J[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    return-object p1

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string p2, "RemoteException in KFA"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string p3, "DeadObjectException in KFA, retrying bind"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    :goto_3
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    return-object p0
.end method

.method public final getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string v2, "getKFAServiceInstance service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    xor-int/2addr v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string v1, "getKFAServiceInstance trying to rebind from client"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    const-string v0, "KFAService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :try_start_4
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string v1, "getKFAServiceInstance() interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string v1, "getKFAServiceInstance binding timed out or success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    return-object p0

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public getKeyProvisioning(Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;-><init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;)V

    iget-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    invoke-interface {p1, v0}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->getKeyProvisioning(Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string v0, "RemoteException in KFA"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string v1, "DeadObjectException in KFA, retrying bind"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    :goto_2
    return-void
.end method

.method public getModelInputShape(JI[I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->getModelInputShape(JI[I)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    return-object p1

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string p2, "RemoteException in KFA"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string p3, "DeadObjectException in KFA, retrying bind"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    :goto_3
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    return-object p0
.end method

.method public open(JLcom/samsung/android/knox/ex/knoxAI/KfaOptions;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKFAServiceInstance()Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;->open(JLcom/samsung/android/knox/ex/knoxAI/KfaOptions;)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    return-object p1

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string p2, "RemoteException in KFA"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string p3, "DeadObjectException in KFA, retrying bind"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    :goto_3
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    return-object p0
.end method
