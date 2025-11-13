.class public final Lcom/android/wm/shell/bubbles/BubbleDataRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public bubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

.field public final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public job:Lkotlinx/coroutines/Job;

.field public final launcherApps:Landroid/content/pm/LauncherApps;

.field public final mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final persistentRepository:Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;

.field public final volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->launcherApps:Landroid/content/pm/LauncherApps;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistentRepository:Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;

    new-instance p2, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;-><init>(Landroid/content/pm/LauncherApps;)V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method

.method public static persistToDisk$default(Lcom/android/wm/shell/bubbles/BubbleDataRepository;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, v0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistToDisk(Landroid/util/SparseArray;)V

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static transform(Ljava/util/List;)Ljava/util/List;
    .locals 14

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    iget-object v5, v1, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget v8, v1, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeight:I

    iget v9, v1, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeightResId:I

    iget-object v10, v1, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getTaskId()I

    move-result v11

    iget-object v3, v1, Lcom/android/wm/shell/bubbles/Bubble;->mLocusId:Landroid/content/LocusId;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v12, v2

    iget-boolean v13, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIsDismissable:Z

    new-instance v2, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    iget-object v7, v1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Z)V

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final filterForActiveUsersAndPersist(Ljava/util/List;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/storage/BubbleEntity;",
            ">;>;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/storage/BubbleEntity;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    iget v9, v8, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move v3, v6

    goto :goto_1

    :cond_1
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v6, v7

    if-eqz v6, :cond_3

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    move v3, v6

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistToDisk(Landroid/util/SparseArray;)V

    return-object v0

    :cond_5
    return-object p2
.end method

.method public final persistToDisk(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/storage/BubbleEntity;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->job:Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, p1, v2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;-><init>(Lkotlinx/coroutines/Job;Lcom/android/wm/shell/bubbles/BubbleDataRepository;Landroid/util/SparseArray;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v0, v2, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->job:Lkotlinx/coroutines/Job;

    return-void
.end method
