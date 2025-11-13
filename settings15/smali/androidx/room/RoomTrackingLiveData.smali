.class public final Landroidx/room/RoomTrackingLiveData;
.super Landroidx/lifecycle/LiveData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final computeFunction:Ljava/util/concurrent/Callable;

.field public final computing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final container:Landroidx/room/InvalidationLiveDataContainer;

.field public final database:Landroidx/room/RoomDatabase;

.field public final inTransaction:Z

.field public final invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final invalidationRunnable:Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda0;

.field public final observer:Landroidx/room/RoomTrackingLiveData$observer$1;

.field public final refreshRunnable:Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda0;

.field public final registeredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/InvalidationLiveDataContainer;Ljava/util/concurrent/Callable;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->database:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Landroidx/room/RoomTrackingLiveData;->container:Landroidx/room/InvalidationLiveDataContainer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/room/RoomTrackingLiveData;->inTransaction:Z

    iput-object p3, p0, Landroidx/room/RoomTrackingLiveData;->computeFunction:Ljava/util/concurrent/Callable;

    new-instance p2, Landroidx/room/RoomTrackingLiveData$observer$1;

    invoke-direct {p2, p4, p0}, Landroidx/room/RoomTrackingLiveData$observer$1;-><init>([Ljava/lang/String;Landroidx/room/RoomTrackingLiveData;)V

    iput-object p2, p0, Landroidx/room/RoomTrackingLiveData;->observer:Landroidx/room/RoomTrackingLiveData$observer$1;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Landroidx/room/RoomTrackingLiveData;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Landroidx/room/RoomTrackingLiveData;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Landroidx/room/RoomTrackingLiveData;->registeredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda0;-><init>(Landroidx/room/RoomTrackingLiveData;I)V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->refreshRunnable:Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda0;

    new-instance p1, Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda0;-><init>(Landroidx/room/RoomTrackingLiveData;I)V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->invalidationRunnable:Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onActive()V
    .locals 3

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->container:Landroidx/room/InvalidationLiveDataContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/room/InvalidationLiveDataContainer;->liveDataSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroidx/room/RoomTrackingLiveData;->inTransaction:Z

    iget-object v2, p0, Landroidx/room/RoomTrackingLiveData;->database:Landroidx/room/RoomDatabase;

    if-eqz v1, :cond_1

    iget-object v1, v2, Landroidx/room/RoomDatabase;->internalTransactionExecutor:Landroidx/room/TransactionExecutor;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "internalTransactionExecutor"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, v2, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_2

    :goto_0
    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData;->refreshRunnable:Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda0;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const-string p0, "internalQueryExecutor"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final onInactive()V
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->container:Landroidx/room/InvalidationLiveDataContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/room/InvalidationLiveDataContainer;->liveDataSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
