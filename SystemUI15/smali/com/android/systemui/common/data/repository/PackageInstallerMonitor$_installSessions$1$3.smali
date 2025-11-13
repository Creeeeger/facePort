.class final Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;->this$0:Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;

    iget-object p0, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;->this$0:Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;-><init>(Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;->Z$0:Z

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;->Z$0:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;->this$0:Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;

    iget-object v0, p1, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->sessions:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->sessions:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->packageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInstaller$SessionInfo;

    sget-object v6, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->Companion:Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$Companion;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/systemui/common/shared/model/PackageInstallSession;

    iget v7, v5, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    iget-object v8, v5, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/android/systemui/common/shared/model/PackageInstallSession;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/os/UserHandle;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v2

    const/16 v4, 0x10

    if-ge v2, v4, :cond_1

    move v2, v4

    :cond_1
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/common/shared/model/PackageInstallSession;

    iget v5, v5, Lcom/android/systemui/common/shared/model/PackageInstallSession;->sessionId:I

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->updateInstallerSessionsFlow()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;->this$0:Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;

    iget-object p1, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->packageInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v0, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->bgHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    goto :goto_3

    :goto_2
    monitor-exit v0

    throw p0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;->this$0:Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;

    iget-object v0, p1, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->sessions:Ljava/util/Map;

    monitor-enter v0

    :try_start_1
    iget-object v1, p1, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->sessions:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    invoke-virtual {p1}, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->updateInstallerSessionsFlow()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    iget-object p0, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;->this$0:Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;

    iget-object p1, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->packageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
