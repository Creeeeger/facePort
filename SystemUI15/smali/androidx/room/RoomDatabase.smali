.class public abstract Landroidx/room/RoomDatabase;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public allowMainThreadQueries:Z

.field public final closeBarrier:Landroidx/room/concurrent/CloseBarrier;

.field public connectionManager:Landroidx/room/RoomConnectionManager;

.field public coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public internalQueryExecutor:Ljava/util/concurrent/Executor;

.field public internalTracker:Landroidx/room/InvalidationTracker;

.field public internalTransactionExecutor:Landroidx/room/TransactionExecutor;

.field public final suspendingTransactionId:Ljava/lang/ThreadLocal;

.field public transactionContext:Lkotlin/coroutines/CoroutineContext;

.field public final typeConverters:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/RoomDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/RoomDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/room/concurrent/CloseBarrier;

    new-instance v1, Landroidx/room/RoomDatabase$closeBarrier$1;

    invoke-direct {v1, p0}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroidx/room/concurrent/CloseBarrier;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->closeBarrier:Landroidx/room/concurrent/CloseBarrier;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->suspendingTransactionId:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->typeConverters:Ljava/util/Map;

    return-void
.end method

.method public static unwrapOpenHelper(Ljava/lang/Class;Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Landroidx/room/DelegatingOpenHelper;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/room/DelegatingOpenHelper;

    invoke-interface {p1}, Landroidx/room/DelegatingOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/room/RoomDatabase;->unwrapOpenHelper(Ljava/lang/Class;Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public abstract createInvalidationTracker()Landroidx/room/InvalidationTracker;
.end method

.method public createOpenDelegate()Landroidx/room/RoomOpenDelegate;
    .locals 2

    new-instance p0, Lkotlin/NotImplementedError;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public getAutoMigrations()Ljava/util/List;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->internalTracker:Landroidx/room/InvalidationTracker;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    return-object p0
.end method

.method public getRequiredTypeConverters()Ljava/util/Map;
    .locals 0

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final inCompatibilityMode$room_runtime_release()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroidx/room/RoomConnectionManager;->getSupportOpenHelper$room_runtime_release()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final internalInitInvalidationTracker(Landroidx/sqlite/SQLiteConnection;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p0

    iget-object v0, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "PRAGMA temp_store = MEMORY"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLiteKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string v0, "PRAGMA recursive_triggers = 1"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLiteKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string v0, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLiteKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/room/InvalidationTracker;->trackerLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->multiInstanceInvalidationClient:Landroidx/room/MultiInstanceInvalidationClient;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/InvalidationTracker;->multiInstanceClientInitState:Landroidx/room/InvalidationTracker$MultiInstanceClientInitState;

    if-eqz v0, :cond_1

    new-instance v6, Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v1, v0, Landroidx/room/InvalidationTracker$MultiInstanceClientInitState;->context:Landroid/content/Context;

    iget-object v3, v0, Landroidx/room/InvalidationTracker$MultiInstanceClientInitState;->serviceIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroidx/room/InvalidationTracker;->database:Landroidx/room/RoomDatabase;

    iget-object v2, v2, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    move-object v5, v2

    iget-object v2, v0, Landroidx/room/InvalidationTracker$MultiInstanceClientInitState;->name:Ljava/lang/String;

    move-object v0, v6

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Landroidx/room/MultiInstanceInvalidationClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroidx/room/InvalidationTracker;Ljava/util/concurrent/Executor;)V

    iput-object v6, p0, Landroidx/room/InvalidationTracker;->multiInstanceInvalidationClient:Landroidx/room/MultiInstanceInvalidationClient;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1

    throw p0
.end method
