.class public final Landroidx/room/RoomConnectionManager;
.super Landroidx/room/BaseRoomConnectionManager;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final callbacks:Ljava/util/List;

.field public final configuration:Landroidx/room/DatabaseConfiguration;

.field public final connectionPool:Landroidx/room/coroutines/ConnectionPool;

.field public final openDelegate:Landroidx/room/RoomOpenDelegate;

.field public supportDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;


# direct methods
.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->configuration:Landroidx/room/DatabaseConfiguration;

    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Landroidx/room/RoomOpenDelegate;

    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    iput-object v0, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/util/List;

    const/4 v0, 0x1

    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    iget-object v3, p1, Landroidx/room/DatabaseConfiguration;->sqliteDriver:Landroidx/sqlite/SQLiteDriver;

    if-nez v3, :cond_2

    iget-object v3, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;

    if-eqz v3, :cond_1

    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;

    iget p2, p2, Landroidx/room/RoomOpenDelegate;->version:I

    invoke-direct {v3, p0, p2}, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;-><init>(Landroidx/room/RoomConnectionManager;I)V

    new-instance p2, Landroidx/room/RoomConnectionManager$SupportConnectionPool;

    new-instance v4, Landroidx/room/driver/SupportSQLiteDriver;

    new-instance v5, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    invoke-direct {v5, p1, v2, v3}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;)V

    invoke-direct {v4, v5}, Landroidx/room/driver/SupportSQLiteDriver;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V

    invoke-direct {p2, v4}, Landroidx/room/RoomConnectionManager$SupportConnectionPool;-><init>(Landroidx/room/driver/SupportSQLiteDriver;)V

    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Landroidx/room/coroutines/ConnectionPool;

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SQLiteManager was constructed with both null driver and open helper factory!"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-nez v2, :cond_3

    new-instance p1, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    invoke-direct {p1, p0, v3}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;-><init>(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V

    new-instance p2, Landroidx/room/coroutines/ConnectionPoolImpl;

    invoke-direct {p2, p1}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Landroidx/room/BaseRoomConnectionManager$DriverWrapper;)V

    goto :goto_2

    :cond_3
    new-instance p1, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    invoke-direct {p1, p0, v3}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;-><init>(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V

    const-string p2, "<this>"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/16 v3, 0x27

    const/4 v4, 0x2

    if-eq p2, v0, :cond_5

    if-ne p2, v4, :cond_4

    const/4 p2, 0x4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can\'t get max number of reader for journal mode \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move p2, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eq v5, v0, :cond_7

    if-ne v5, v4, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can\'t get max number of writers for journal mode \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    new-instance v3, Landroidx/room/coroutines/ConnectionPoolImpl;

    invoke-direct {v3, p1, v2, p2}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Landroidx/room/BaseRoomConnectionManager$DriverWrapper;Ljava/lang/String;I)V

    move-object p2, v3

    :goto_2
    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Landroidx/room/coroutines/ConnectionPool;

    :goto_3
    sget-object p1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v1, p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Landroidx/room/RoomConnectionManager;->getSupportOpenHelper$room_runtime_release()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-interface {p0, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_9
    return-void
.end method

.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Lkotlin/jvm/functions/Function1;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/room/RoomConnectionManager;->configuration:Landroidx/room/DatabaseConfiguration;

    new-instance v2, Landroidx/room/RoomConnectionManager$NoOpOpenDelegate;

    const/4 v3, -0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v4}, Landroidx/room/RoomOpenDelegate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Landroidx/room/RoomConnectionManager;->openDelegate:Landroidx/room/RoomOpenDelegate;

    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    if-nez v2, :cond_0

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, v0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/util/List;

    new-instance v3, Landroidx/room/RoomConnectionManager$configWithCompatibilityCallback$1;

    invoke-direct {v3, v0}, Landroidx/room/RoomConnectionManager$configWithCompatibilityCallback$1;-><init>(Landroidx/room/RoomConnectionManager;)V

    if-nez v2, :cond_1

    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_1
    check-cast v2, Ljava/util/Collection;

    new-instance v0, Landroidx/room/RoomConnectionManager$installOnOpenCallback$newCallbacks$1;

    invoke-direct {v0, v3}, Landroidx/room/RoomConnectionManager$installOnOpenCallback$newCallbacks$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    iget-object v5, v1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    iget-object v12, v1, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    iget-object v13, v1, Landroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    iget-object v14, v1, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidationServiceIntent:Landroid/content/Intent;

    iget-object v0, v1, Landroidx/room/DatabaseConfiguration;->migrationNotRequiredFrom:Ljava/util/Set;

    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->copyFromFile:Ljava/io/File;

    iget-object v3, v1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    iget-object v15, v1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    const-string v4, "context"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "migrationContainer"

    iget-object v6, v1, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    move-object v8, v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "journalMode"

    iget-object v6, v1, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    move-object v11, v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "queryExecutor"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "transactionExecutor"

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "typeConverters"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "autoMigrationSpecs"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Landroidx/room/DatabaseConfiguration;

    move-object v4, v10

    iget-object v6, v1, Landroidx/room/DatabaseConfiguration;->copyFromInputStream:Ljava/util/concurrent/Callable;

    move-object/from16 v20, v6

    iget-boolean v6, v1, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationForAllTables:Z

    move/from16 v23, v6

    iget-object v6, v1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    iget-object v7, v1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;

    move-object/from16 p0, v10

    iget-boolean v10, v1, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    move-object/from16 v26, p0

    move-object/from16 v16, v15

    iget-boolean v15, v1, Landroidx/room/DatabaseConfiguration;->requireMigration:Z

    move-object/from16 v22, v16

    move-object/from16 p0, v4

    iget-boolean v4, v1, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationOnDowngrade:Z

    move/from16 v16, v4

    iget-object v4, v1, Landroidx/room/DatabaseConfiguration;->copyFromAssetPath:Ljava/lang/String;

    move-object/from16 v18, v4

    iget-object v4, v1, Landroidx/room/DatabaseConfiguration;->sqliteDriver:Landroidx/sqlite/SQLiteDriver;

    move-object/from16 v24, v4

    iget-object v1, v1, Landroidx/room/DatabaseConfiguration;->queryCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    move-object/from16 v25, v1

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v25}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)V

    move-object/from16 v0, p2

    check-cast v0, Landroidx/room/RoomDatabase$createConnectionManager$1;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase$createConnectionManager$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public final getSupportOpenHelper$room_runtime_release()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 2

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Landroidx/room/coroutines/ConnectionPool;

    instance-of v0, p0, Landroidx/room/RoomConnectionManager$SupportConnectionPool;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/room/RoomConnectionManager$SupportConnectionPool;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportConnectionPool;->supportDriver:Landroidx/room/driver/SupportSQLiteDriver;

    if-eqz p0, :cond_1

    iget-object v1, p0, Landroidx/room/driver/SupportSQLiteDriver;->openHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    :cond_1
    return-object v1
.end method
