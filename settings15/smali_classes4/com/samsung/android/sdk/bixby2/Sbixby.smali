.class public final Lcom/samsung/android/sdk/bixby2/Sbixby;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static appMetaInfoMap:Ljava/util/Map;

.field public static mInstance:Lcom/samsung/android/sdk/bixby2/Sbixby;


# direct methods
.method public static addActionHandler(Ljava/lang/String;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;)V
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "handler added: "

    sget-object v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->sWaitLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->actionMap:Ljava/util/Map;

    move-object v3, v2

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;

    if-nez v3, :cond_0

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mActionId:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CapsuleProvider_1.0.25"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Action handler is NULL. pass valid app action handler implementation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/sdk/bixby2/Sbixby;
    .locals 3

    const-class v0, Lcom/samsung/android/sdk/bixby2/Sbixby;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/bixby2/Sbixby;->mInstance:Lcom/samsung/android/sdk/bixby2/Sbixby;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The Sbixby instance is NULL. do initialize Sbixby before accessing instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getStateHandler()Lcom/samsung/android/sdk/bixby2/state/StateHandler;
    .locals 3

    const-class v0, Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->mInstance:Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->mCallback:Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;

    sput-object v1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->mInstance:Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->mInstance:Lcom/samsung/android/sdk/bixby2/state/StateHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/bixby2/Sbixby;->mInstance:Lcom/samsung/android/sdk/bixby2/Sbixby;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/bixby2/Sbixby;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/Sbixby;->mInstance:Lcom/samsung/android/sdk/bixby2/Sbixby;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/bixby2/Sbixby;->mInstance:Lcom/samsung/android/sdk/bixby2/Sbixby;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->sWaitLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mIsAppInitialized:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mIsAppInitialized:Z

    const-string v0, "CapsuleProvider_1.0.25"

    const-string/jumbo v1, "releasing initialize wait lock."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$1;-><init>()V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string p0, "Sbixby_1.0.25"

    const-string v0, "initialized"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "package name is null or empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "App Context is NULL. pass valid context."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
