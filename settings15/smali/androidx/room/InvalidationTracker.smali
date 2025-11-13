.class public final Landroidx/room/InvalidationTracker;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final database:Landroidx/room/RoomDatabase;

.field public final implementation:Landroidx/room/TriggerBasedInvalidationTracker;

.field public final invalidationLiveDataContainer:Landroidx/room/InvalidationLiveDataContainer;

.field public multiInstanceClientInitState:Landroidx/room/InvalidationTracker$MultiInstanceClientInitState;

.field public multiInstanceInvalidationClient:Landroidx/room/MultiInstanceInvalidationClient;

.field public final onRefreshCompleted:Lkotlin/jvm/functions/Function0;

.field public final onRefreshScheduled:Lkotlin/jvm/functions/Function0;

.field public final tableNames:[Ljava/lang/String;

.field public final trackerLock:Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/InvalidationTracker;->database:Landroidx/room/RoomDatabase;

    iput-object p4, p0, Landroidx/room/InvalidationTracker;->tableNames:[Ljava/lang/String;

    new-instance v0, Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/room/TriggerBasedInvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    new-instance p2, Landroidx/room/InvalidationTracker$onRefreshScheduled$1;

    invoke-direct {p2, p0}, Landroidx/room/InvalidationTracker$onRefreshScheduled$1;-><init>(Landroidx/room/InvalidationTracker;)V

    iput-object p2, p0, Landroidx/room/InvalidationTracker;->onRefreshScheduled:Lkotlin/jvm/functions/Function0;

    new-instance p2, Landroidx/room/InvalidationTracker$onRefreshCompleted$1;

    invoke-direct {p2, p0}, Landroidx/room/InvalidationTracker$onRefreshCompleted$1;-><init>(Landroidx/room/InvalidationTracker;)V

    iput-object p2, p0, Landroidx/room/InvalidationTracker;->onRefreshCompleted:Lkotlin/jvm/functions/Function0;

    new-instance p2, Landroidx/room/InvalidationLiveDataContainer;

    invoke-direct {p2, p1}, Landroidx/room/InvalidationLiveDataContainer;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object p2, p0, Landroidx/room/InvalidationTracker;->invalidationLiveDataContainer:Landroidx/room/InvalidationLiveDataContainer;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/InvalidationTracker;->trackerLock:Ljava/lang/Object;

    new-instance p1, Landroidx/room/InvalidationTracker$1;

    invoke-direct {p1, p0}, Landroidx/room/InvalidationTracker$1;-><init>(Landroidx/room/InvalidationTracker;)V

    iput-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker;->onAllowRefresh:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final createLiveData([Ljava/lang/String;Ljava/util/concurrent/Callable;)Landroidx/room/RoomTrackingLiveData;
    .locals 2

    iget-object v0, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-virtual {v0, p1}, Landroidx/room/TriggerBasedInvalidationTracker;->validateTableNames$room_runtime_release([Ljava/lang/String;)Lkotlin/Pair;

    iget-object p0, p0, Landroidx/room/InvalidationTracker;->invalidationLiveDataContainer:Landroidx/room/InvalidationLiveDataContainer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/room/RoomTrackingLiveData;

    iget-object v1, p0, Landroidx/room/InvalidationLiveDataContainer;->database:Landroidx/room/RoomDatabase;

    invoke-direct {v0, v1, p0, p2, p1}, Landroidx/room/RoomTrackingLiveData;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/InvalidationLiveDataContainer;Ljava/util/concurrent/Callable;[Ljava/lang/String;)V

    return-object v0
.end method

.method public final refreshAsync()V
    .locals 5

    iget-object v0, p0, Landroidx/room/InvalidationTracker;->onRefreshScheduled:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Landroidx/room/InvalidationTracker;->onRefreshCompleted:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "onRefreshScheduled"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onRefreshCompleted"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/room/TriggerBasedInvalidationTracker;->pendingRefresh:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v0, Landroidx/room/InvalidationTracker$onRefreshScheduled$1;

    invoke-virtual {v0}, Landroidx/room/InvalidationTracker$onRefreshScheduled$1;->invoke()Ljava/lang/Object;

    iget-object v0, p0, Landroidx/room/TriggerBasedInvalidationTracker;->database:Landroidx/room/RoomDatabase;

    iget-object v0, v0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v3, Landroidx/room/TriggerBasedInvalidationTracker$refreshInvalidationAsync$3;

    invoke-direct {v3, p0, v1, v2}, Landroidx/room/TriggerBasedInvalidationTracker$refreshInvalidationAsync$3;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v3, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_0

    :cond_0
    const-string p0, "coroutineScope"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-void
.end method
