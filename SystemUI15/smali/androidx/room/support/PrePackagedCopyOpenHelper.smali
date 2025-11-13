.class public final Landroidx/room/support/PrePackagedCopyOpenHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.implements Landroidx/room/DelegatingOpenHelper;


# instance fields
.field public final context:Landroid/content/Context;

.field public final copyFromAssetPath:Ljava/lang/String;

.field public final copyFromFile:Ljava/io/File;

.field public final copyFromInputStream:Ljava/util/concurrent/Callable;

.field public databaseConfiguration:Landroidx/room/DatabaseConfiguration;

.field public final databaseVersion:I

.field public final delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

.field public verified:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;ILandroidx/sqlite/db/SupportSQLiteOpenHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;I",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyFromAssetPath:Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyFromFile:Ljava/io/File;

    iput-object p4, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyFromInputStream:Ljava/util/concurrent/Callable;

    iput p5, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->databaseVersion:I

    iput-object p6, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->verified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final copyDatabaseFile(Ljava/io/File;Z)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget-object v2, v0, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyFromAssetPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroidx/room/support/PrePackagedCopyOpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, v0, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyFromAssetPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyFromFile:Ljava/io/File;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, v0, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyFromFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, v0, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyFromInputStream:Ljava/util/concurrent/Callable;

    if-eqz v2, :cond_a

    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v2

    :goto_0
    iget-object v3, v0, Landroidx/room/support/PrePackagedCopyOpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "room-copy-helper"

    const-string v5, ".tmp"

    invoke-static {v4, v5, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    const-wide/16 v5, 0x0

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, v10

    move-object v4, v2

    :try_start_1
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {v10, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->close()V

    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create directories for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v2, v0, Landroidx/room/support/PrePackagedCopyOpenHelper;->databaseConfiguration:Landroidx/room/DatabaseConfiguration;

    const/4 v3, 0x0

    if-nez v2, :cond_4

    move-object v2, v3

    :cond_4
    iget-object v2, v2, Landroidx/room/DatabaseConfiguration;->prepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    if-nez v2, :cond_5

    :goto_2
    move-object/from16 v0, p1

    goto :goto_6

    :cond_5
    :try_start_2
    invoke-static {v9}, Landroidx/room/util/DBUtil;->readVersion(Ljava/io/File;)I

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    new-instance v4, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;

    invoke-direct {v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;-><init>()V

    sget-object v5, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->Companion:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Companion;

    iget-object v6, v0, Landroidx/room/support/PrePackagedCopyOpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    invoke-direct {v5, v6}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name:Ljava/lang/String;

    const/4 v6, 0x1

    if-ge v2, v6, :cond_6

    goto :goto_3

    :cond_6
    move v6, v2

    :goto_3
    new-instance v13, Landroidx/room/support/PrePackagedCopyOpenHelper$createFrameworkOpenHelper$configuration$1;

    invoke-direct {v13, v2, v6}, Landroidx/room/support/PrePackagedCopyOpenHelper$createFrameworkOpenHelper$configuration$1;-><init>(II)V

    new-instance v2, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    iget-object v11, v5, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->context:Landroid/content/Context;

    iget-object v12, v5, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V

    invoke-virtual {v4, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    if-eqz p2, :cond_7

    :try_start_3
    move-object v1, v2

    check-cast v1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    invoke-virtual {v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    goto :goto_5

    :goto_4
    move-object v1, v0

    goto :goto_7

    :cond_7
    move-object v4, v2

    check-cast v4, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    iget-object v4, v4, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->lazyDelegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    invoke-virtual {v4, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getSupportDatabase(Z)Landroidx/sqlite/db/SupportSQLiteDatabase;

    :goto_5
    iget-object v0, v0, Landroidx/room/support/PrePackagedCopyOpenHelper;->databaseConfiguration:Landroidx/room/DatabaseConfiguration;

    if-nez v0, :cond_8

    move-object v0, v3

    :cond_8
    iget-object v0, v0, Landroidx/room/DatabaseConfiguration;->prepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_6
    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to move intermediate file ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") to destination ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    goto :goto_4

    :goto_7
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Malformed database file, unable to read version."

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_2
    move-exception v0

    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->close()V

    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "inputStreamCallable exception on call"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "copyFromAssetPath, copyFromFile and copyFromInputStream are all null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getDatabaseName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 0

    iget-object p0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-object p0
.end method

.method public final getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 11

    iget-boolean v0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->verified:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    const-string v1, "ROOM"

    const-string v2, "Failed to delete database file ("

    iget-object v3, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v3}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v4, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->databaseConfiguration:Landroidx/room/DatabaseConfiguration;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move-object v5, v6

    :cond_0
    iget-boolean v5, v5, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidation:Z

    new-instance v7, Landroidx/sqlite/util/ProcessLock;

    iget-object v8, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v3, v8, v5}, Landroidx/sqlite/util/ProcessLock;-><init>(Ljava/lang/String;Ljava/io/File;Z)V

    :try_start_0
    iget-boolean v5, v7, Landroidx/sqlite/util/ProcessLock;->processLock:Z

    invoke-virtual {v7, v5}, Landroidx/sqlite/util/ProcessLock;->lock(Z)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "Unable to copy database file."

    if-nez v5, :cond_1

    :try_start_1
    invoke-virtual {p0, v4, v0}, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyDatabaseFile(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v7}, Landroidx/sqlite/util/ProcessLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v8, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :try_start_3
    invoke-static {v4}, Landroidx/room/util/DBUtil;->readVersion(Ljava/io/File;)I

    move-result v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget v9, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->databaseVersion:I

    if-ne v5, v9, :cond_2

    goto :goto_0

    :cond_2
    iget-object v10, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->databaseConfiguration:Landroidx/room/DatabaseConfiguration;

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    move-object v6, v10

    :goto_1
    invoke-virtual {v6, v5, v9}, Landroidx/room/DatabaseConfiguration;->isMigrationRequired(II)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    iget-object v5, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_5

    :try_start_5
    invoke-virtual {p0, v4, v0}, Landroidx/room/support/PrePackagedCopyOpenHelper;->copyDatabaseFile(Ljava/io/File;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_6
    invoke-static {v1, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") for a copy destructive migration."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v3, "Unable to read database version."

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :goto_2
    iput-boolean v0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->verified:Z

    goto :goto_4

    :goto_3
    invoke-virtual {v7}, Landroidx/sqlite/util/ProcessLock;->unlock()V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    iget-object p0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public final setWriteAheadLoggingEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
