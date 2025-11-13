.class public final Landroidx/room/RoomConnectionManager;
.super Landroidx/room/BaseRoomConnectionManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final callbacks:Ljava/util/List;

.field public final configuration:Landroidx/room/DatabaseConfiguration;

.field public final connectionPool:Landroidx/room/coroutines/ConnectionPool;

.field public final openDelegate:Landroidx/room/RoomOpenDelegate;

.field public supportDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;


# direct methods
.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;)V
    .locals 11

    invoke-direct {p0}, Landroidx/room/BaseRoomConnectionManager;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->configuration:Landroidx/room/DatabaseConfiguration;

    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Landroidx/room/RoomOpenDelegate;

    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    iput-object v0, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/util/List;

    const/4 v0, 0x1

    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->sqliteDriver:Landroidx/sqlite/SQLiteDriver;

    if-nez v2, :cond_2

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    if-eqz v2, :cond_1

    sget-object v3, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->Companion:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Companion;

    iget-object v4, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    invoke-direct {v3, v4}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, v3, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name:Ljava/lang/String;

    new-instance v8, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;

    iget p2, p2, Landroidx/room/RoomOpenDelegate;->version:I

    invoke-direct {v8, p0, p2}, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;-><init>(Landroidx/room/RoomConnectionManager;I)V

    new-instance p2, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    iget-object v6, v3, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->context:Landroid/content/Context;

    iget-object v7, v3, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p2

    invoke-direct/range {v5 .. v10}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V

    new-instance v1, Landroidx/room/RoomConnectionManager$SupportConnectionPool;

    new-instance v3, Landroidx/room/driver/SupportSQLiteDriver;

    invoke-interface {v2, p2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p2

    invoke-direct {v3, p2}, Landroidx/room/driver/SupportSQLiteDriver;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V

    invoke-direct {v1, v3}, Landroidx/room/RoomConnectionManager$SupportConnectionPool;-><init>(Landroidx/room/driver/SupportSQLiteDriver;)V

    iput-object v1, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Landroidx/room/coroutines/ConnectionPool;

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SQLiteManager was constructed with both null driver and open helper factory!"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-nez v1, :cond_3

    new-instance p2, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    invoke-direct {p2, p0, v2}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;-><init>(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V

    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl;

    const-string v2, ":memory:"

    invoke-direct {v1, p2, v2}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance p2, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    invoke-direct {p2, p0, v2}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;-><init>(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V

    sget-object v2, Landroidx/room/BaseRoomConnectionManager$WhenMappings;->$EnumSwitchMapping$0:[I

    iget-object v3, p1, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v2, v4

    const/16 v5, 0x27

    const/4 v6, 0x2

    if-eq v4, v0, :cond_5

    if-ne v4, v6, :cond_4

    const/4 v4, 0x4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can\'t get max number of reader for journal mode \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move v4, v0

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v2, v2, v7

    if-eq v2, v0, :cond_7

    if-ne v2, v6, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can\'t get max number of writers for journal mode \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    new-instance v2, Landroidx/room/coroutines/ConnectionPoolImpl;

    invoke-direct {v2, p2, v1, v4, v0}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;II)V

    move-object v1, v2

    :goto_2
    iput-object v1, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Landroidx/room/coroutines/ConnectionPool;

    :goto_3
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    sget-object p2, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne p1, p2, :cond_8

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
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/DatabaseConfiguration;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroidx/room/BaseRoomConnectionManager;-><init>()V

    iput-object v1, v0, Landroidx/room/RoomConnectionManager;->configuration:Landroidx/room/DatabaseConfiguration;

    new-instance v2, Landroidx/room/RoomConnectionManager$NoOpOpenDelegate;

    invoke-direct {v2}, Landroidx/room/RoomConnectionManager$NoOpOpenDelegate;-><init>()V

    iput-object v2, v0, Landroidx/room/RoomConnectionManager;->openDelegate:Landroidx/room/RoomOpenDelegate;

    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    if-nez v2, :cond_0

    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    iput-object v2, v0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/util/List;

    new-instance v2, Landroidx/room/RoomConnectionManager$configWithCompatibilityCallback$1;

    invoke-direct {v2, v0}, Landroidx/room/RoomConnectionManager$configWithCompatibilityCallback$1;-><init>(Landroidx/room/RoomConnectionManager;)V

    iget-object v3, v1, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    if-nez v3, :cond_1

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_1
    check-cast v3, Ljava/util/Collection;

    new-instance v4, Landroidx/room/RoomConnectionManager$installOnOpenCallback$newCallbacks$1;

    invoke-direct {v4, v2}, Landroidx/room/RoomConnectionManager$installOnOpenCallback$newCallbacks$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iget-object v6, v1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    iget-object v13, v1, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    iget-object v14, v1, Landroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    iget-object v15, v1, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidationServiceIntent:Landroid/content/Intent;

    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->migrationNotRequiredFrom:Ljava/util/Set;

    iget-object v3, v1, Landroidx/room/DatabaseConfiguration;->copyFromFile:Ljava/io/File;

    iget-object v4, v1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    iget-object v12, v1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    new-instance v11, Landroidx/room/DatabaseConfiguration;

    move-object v5, v11

    iget-object v7, v1, Landroidx/room/DatabaseConfiguration;->prepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    move-object/from16 v22, v7

    iget-boolean v7, v1, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationForAllTables:Z

    move/from16 v25, v7

    iget-object v7, v1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    iget-object v8, v1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    iget-object v9, v1, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    move-object/from16 v16, v11

    iget-boolean v11, v1, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    move-object/from16 v0, v16

    move-object/from16 v16, v12

    iget-object v12, v1, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    move-object/from16 v24, v16

    move-object/from16 v28, v0

    iget-boolean v0, v1, Landroidx/room/DatabaseConfiguration;->requireMigration:Z

    move/from16 v16, v0

    iget-boolean v0, v1, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationOnDowngrade:Z

    move/from16 v17, v0

    iget-object v0, v1, Landroidx/room/DatabaseConfiguration;->copyFromAssetPath:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v1, Landroidx/room/DatabaseConfiguration;->copyFromInputStream:Ljava/util/concurrent/Callable;

    move-object/from16 v21, v0

    iget-object v0, v1, Landroidx/room/DatabaseConfiguration;->sqliteDriver:Landroidx/sqlite/SQLiteDriver;

    move-object/from16 v26, v0

    iget-object v0, v1, Landroidx/room/DatabaseConfiguration;->queryCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    move-object/from16 v27, v0

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v23, v4

    invoke-direct/range {v5 .. v27}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)V

    new-instance v0, Landroidx/room/RoomConnectionManager$SupportConnectionPool;

    new-instance v2, Landroidx/room/driver/SupportSQLiteDriver;

    move-object/from16 v3, p2

    move-object/from16 v4, v28

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-direct {v2, v3}, Landroidx/room/driver/SupportSQLiteDriver;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V

    invoke-direct {v0, v2}, Landroidx/room/RoomConnectionManager$SupportConnectionPool;-><init>(Landroidx/room/driver/SupportSQLiteDriver;)V

    move-object/from16 v2, p0

    iput-object v0, v2, Landroidx/room/RoomConnectionManager;->connectionPool:Landroidx/room/coroutines/ConnectionPool;

    iget-object v0, v1, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/room/RoomConnectionManager;->getSupportOpenHelper$room_runtime_release()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final getCallbacks()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/util/List;

    return-object p0
.end method

.method public final getConfiguration()Landroidx/room/DatabaseConfiguration;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->configuration:Landroidx/room/DatabaseConfiguration;

    return-object p0
.end method

.method public final getOpenDelegate()Landroidx/room/RoomOpenDelegate;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Landroidx/room/RoomOpenDelegate;

    return-object p0
.end method

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
