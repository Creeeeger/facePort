.class public final Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineSdk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl$LazyHolder;
    }
.end annotation


# instance fields
.field public a:Lcom/samsung/android/sdk/routines/v3/interfaces/ConditionStatusManager;

.field public c:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineInfoManager;

.field public d:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;

.field public e:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

.field public f:Z

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->a:Lcom/samsung/android/sdk/routines/v3/interfaces/ConditionStatusManager;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->c:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineInfoManager;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->d:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->e:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->f:Z

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;-><init>()V

    return-void
.end method

.method public static c()Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl$LazyHolder;->a()Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineSdk;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->c()Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->g:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "RoutineSdkImpl"

    const-string v3, "getActionHandler - InterruptedException"

    .line 6
    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 11
    :cond_0
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->e:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    return-object p0
.end method

.method public b()Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->g:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "RoutineSdkImpl"

    const-string v3, "getConditionHandler - InterruptedException"

    .line 6
    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 11
    :cond_0
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->d:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;

    return-object p0
.end method

.method public getConditionStatusManager()Lcom/samsung/android/sdk/routines/v3/interfaces/ConditionStatusManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->a:Lcom/samsung/android/sdk/routines/v3/interfaces/ConditionStatusManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionStatusManagerImpl;

    invoke-direct {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionStatusManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->a:Lcom/samsung/android/sdk/routines/v3/interfaces/ConditionStatusManager;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->a:Lcom/samsung/android/sdk/routines/v3/interfaces/ConditionStatusManager;

    return-object p0
.end method

.method public getRoutineInfoManager()Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineInfoManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->c:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineInfoManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineInfoManagerImpl;

    invoke-direct {v0}, Lcom/samsung/android/sdk/routines/v3/internal/RoutineInfoManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->c:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineInfoManager;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->c:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineInfoManager;

    return-object p0
.end method

.method public setHandler(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const-string p1, "RoutineSdkImpl"

    const-string/jumbo p2, "setHandler - set invalid handlers"

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "RoutineSdkImpl"

    const-string/jumbo v1, "setHandler - conditionHandler initialized"

    .line 4
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "RoutineSdkImpl"

    const-string/jumbo v1, "setHandler - actionHandler initialized"

    .line 7
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->d:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;

    .line 11
    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->e:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    :goto_0
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->f:Z

    .line 16
    iget-object p1, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 18
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
