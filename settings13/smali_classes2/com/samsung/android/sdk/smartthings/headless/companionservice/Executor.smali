.class final Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;
.super Ljava/lang/Object;
.source "Executor.java"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final mConnection:Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private volatile mDisposed:Z

.field private mEmitter:Lio/reactivex/SingleEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleEmitter<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final mRequest:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$9_oxpzU0yor7uZq7Qgr863dX8Ss(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->lambda$handleRequest$0(Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PuJzWiKZJQcFmykKsZvut6g8JqA(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->issueOnError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fK6ZUG54x2aFgBOOPYhtIYNgsOc(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->handleRequest(Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request<",
            "TR;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executor::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mTag:Ljava/lang/String;

    .line 47
    sget-boolean v2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Constructor"

    .line 48
    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mContext:Landroid/content/Context;

    .line 51
    new-instance p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mConnection:Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;

    .line 52
    iput-object p2, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mRequest:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mDisposed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;Ljava/lang/Throwable;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->issueOnError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mRequest:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->throwIfExceptionIsNotNull(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->issueOnSuccess(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;)V

    return-void
.end method

.method static createExecutor(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request<",
            "TR;>;)",
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor<",
            "TR;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;)V

    return-object v0
.end method

.method private dispose()V
    .locals 2

    .line 70
    sget-boolean v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mTag:Ljava/lang/String;

    const-string v1, "dispose"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mDisposed:Z

    .line 74
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mConnection:Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->disconnect()V

    return-void
.end method

.method private getRequestMsg()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mRequest:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;->getParams()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;->TYPE:Ljava/lang/reflect/Type;

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/GsonHelper;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleAsyncRequest(Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;)V
    .locals 4

    .line 137
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;-><init>(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;)V

    .line 189
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->getRequestMsg()Ljava/lang/String;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mRequest:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;->what()I

    move-result v2

    invoke-interface {p1, v2, v1, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;->execute(ILjava/lang/String;Lcom/samsung/android/sdk/smartthings/headless/companionservice/IServiceCallback;)Ljava/lang/String;

    move-result-object p1

    .line 191
    sget-boolean v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "req msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "res msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;->TYPE:Ljava/lang/reflect/Type;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/GsonHelper;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;

    .line 196
    sget-boolean v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;->remoteException:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->throwIfExceptionIsNotNull(Ljava/lang/Throwable;)V

    .line 200
    iget-boolean p1, p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;->isSuccessful:Z

    if-nez p1, :cond_3

    .line 201
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "couldn\'t read value"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->issueOnError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 204
    sget-boolean v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mTag:Ljava/lang/String;

    const-string v1, "handleAsyncRequest"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->issueOnError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleRequest(Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mRequest:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->handleAsyncRequest(Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mRequest:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;->isSyncTakenLong()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p0

    .line 103
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Lio/reactivex/Single;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->handleSyncRequest(Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;)V

    :goto_0
    return-void
.end method

.method private handleSyncRequest(Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;)V
    .locals 4

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->getRequestMsg()Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mRequest:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;->what()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;->execute(ILjava/lang/String;Lcom/samsung/android/sdk/smartthings/headless/companionservice/IServiceCallback;)Ljava/lang/String;

    move-result-object p1

    .line 115
    sget-boolean v1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "req msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "res msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mDisposed:Z

    if-eqz v0, :cond_2

    .line 120
    sget-boolean p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 121
    iget-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mTag:Ljava/lang/String;

    const-string v0, "handleSyncRequest, but disposed"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mRequest:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;->getResponseType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/GsonHelper;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;

    .line 126
    iget-object v0, p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;->remoteException:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->throwIfExceptionIsNotNull(Ljava/lang/Throwable;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->issueOnSuccess(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 129
    sget-boolean v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mTag:Ljava/lang/String;

    const-string v1, "handleSyncRequest"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->issueOnError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private issueOnError(Ljava/lang/Throwable;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mEmitter:Lio/reactivex/SingleEmitter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mEmitter:Lio/reactivex/SingleEmitter;

    invoke-interface {p0, p1}, Lio/reactivex/SingleEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method private issueOnSuccess(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mEmitter:Lio/reactivex/SingleEmitter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mEmitter:Lio/reactivex/SingleEmitter;

    invoke-interface {p0, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$handleRequest$0(Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;Lio/reactivex/SingleEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->handleSyncRequest(Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;)V

    return-void
.end method

.method static onDispose(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;",
            ">(",
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor<",
            "TR;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->dispose()V

    return-void
.end method

.method private static throwIfExceptionIsNotNull(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "TR;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 213
    sget-boolean v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mEmitter:Lio/reactivex/SingleEmitter;

    .line 217
    iget-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mConnection:Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;

    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;)V

    new-instance v2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->connect(Landroid/content/Context;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method
