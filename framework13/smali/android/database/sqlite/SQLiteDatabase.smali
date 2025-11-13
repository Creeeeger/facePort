.class public final Landroid/database/sqlite/SQLiteDatabase;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$DatabaseOpenFlags;,
        Landroid/database/sqlite/SQLiteDatabase$OpenParams;,
        Landroid/database/sqlite/SQLiteDatabase$CustomFunction;,
        Landroid/database/sqlite/SQLiteDatabase$CursorFactory;,
        Landroid/database/sqlite/SQLiteDatabase$SyncMode;,
        Landroid/database/sqlite/SQLiteDatabase$JournalMode;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist CONFLICT_ABORT:I = 0x2

.field public static final whitelist CONFLICT_FAIL:I = 0x3

.field public static final whitelist CONFLICT_IGNORE:I = 0x4

.field public static final whitelist CONFLICT_NONE:I = 0x0

.field public static final whitelist CONFLICT_REPLACE:I = 0x5

.field public static final whitelist CONFLICT_ROLLBACK:I = 0x1

.field public static final greylist CONFLICT_VALUES:[Ljava/lang/String;

.field public static final whitelist CREATE_IF_NECESSARY:I = 0x10000000

.field private static final greylist-max-o DEBUG_CLOSE_IDLE_CONNECTIONS:Z

.field public static final blacklist ENABLE_LEGACY_COMPATIBILITY_WAL:I = -0x80000000

.field public static final blacklist ENABLE_ROLLBACK_JOURNAL:I = 0x400

.field public static final whitelist ENABLE_WRITE_AHEAD_LOGGING:I = 0x20000000

.field private static final greylist-max-o EVENT_DB_CORRUPT:I = 0x124fc

.field public static final whitelist JOURNAL_MODE_DELETE:Ljava/lang/String; = "DELETE"

.field public static final whitelist JOURNAL_MODE_MEMORY:Ljava/lang/String; = "MEMORY"

.field public static final whitelist JOURNAL_MODE_OFF:Ljava/lang/String; = "OFF"

.field public static final whitelist JOURNAL_MODE_PERSIST:Ljava/lang/String; = "PERSIST"

.field public static final whitelist JOURNAL_MODE_TRUNCATE:Ljava/lang/String; = "TRUNCATE"

.field public static final whitelist JOURNAL_MODE_WAL:Ljava/lang/String; = "WAL"

.field public static final whitelist MAX_SQL_CACHE_SIZE:I = 0x64

.field public static final whitelist NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final blacklist OPEN_FULLMUTEX:I = 0x100

.field public static final whitelist OPEN_READONLY:I = 0x1

.field public static final whitelist OPEN_READWRITE:I = 0x0

.field private static final greylist-max-o OPEN_READ_MASK:I = 0x1

.field public static final blacklist OPEN_SECURE:I = 0x200

.field public static final blacklist SEM_OPEN_SEPARATECACHE:I = 0x1000

.field public static final whitelist SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field private static final blacklist SUPPORT_KNOX_SDP_SQLITE:Z = true

.field public static final whitelist SYNC_MODE_EXTRA:Ljava/lang/String; = "EXTRA"

.field public static final whitelist SYNC_MODE_FULL:Ljava/lang/String; = "FULL"

.field public static final whitelist SYNC_MODE_NORMAL:Ljava/lang/String; = "NORMAL"

.field public static final whitelist SYNC_MODE_OFF:Ljava/lang/String; = "OFF"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteDatabase"

.field private static final blacklist mSecureLock:Ljava/lang/Object;

.field private static greylist-max-o sActiveDatabases:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBackgroundCheckpoint:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;

.field private final greylist-max-o mCloseGuardLocked:Ldalvik/system/CloseGuard;

.field private final greylist mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private greylist mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCorruptCode:I

.field private final greylist-max-o mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final blacklist mDefaultErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final greylist-max-o mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private greylist-max-o mHasAttachedDbsLocked:Z

.field private blacklist mInCorruptionHandling:Z

.field private blacklist mIntegrityErrorString:Ljava/lang/String;

.field private blacklist mIsDatabaseCorrupted:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private blacklist mPassword:[B

.field private blacklist mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

.field private final greylist-max-r mThreadSession:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/database/sqlite/SQLiteSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist udr:Landroid/database/sqlite/SQLiteUserDataRecovery;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 92
    nop

    .line 100
    const/4 v0, 0x0

    .line 101
    const-string/jumbo v1, "persist.debug.sqlite.close_idle_connections"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->DEBUG_CLOSE_IDLE_CONNECTIONS:Z

    .line 106
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    .line 239
    const-string v1, ""

    const-string v2, " OR ROLLBACK "

    const-string v3, " OR ABORT "

    const-string v4, " OR FAIL "

    const-string v5, " OR IGNORE "

    const-string v6, " OR REPLACE "

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 17
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "openFlags"    # I
    .param p3, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;
    .param p5, "lookasideSlotSize"    # I
    .param p6, "lookasideSlotCount"    # I
    .param p7, "idleConnectionTimeoutMs"    # J
    .param p9, "idleConnectionShrinkTimeoutMs"    # J
    .param p11, "journalMode"    # Ljava/lang/String;
    .param p12, "syncMode"    # Ljava/lang/String;
    .param p13, "cacheSize"    # I
    .param p14, "userDataRecovery"    # Z

    .line 526
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-wide/from16 v2, p9

    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 111
    new-instance v4, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 113
    invoke-static {v4}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v4

    iput-object v4, v0, Landroid/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    .line 123
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 128
    iput-boolean v4, v0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z

    .line 131
    const/4 v5, 0x0

    iput-object v5, v0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;

    .line 132
    iput-object v5, v0, Landroid/database/sqlite/SQLiteDatabase;->mPassword:[B

    .line 148
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 156
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v6

    iput-object v6, v0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    .line 180
    iput-object v5, v0, Landroid/database/sqlite/SQLiteDatabase;->udr:Landroid/database/sqlite/SQLiteUserDataRecovery;

    .line 1563
    iput-object v5, v0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    .line 3087
    iput v4, v0, Landroid/database/sqlite/SQLiteDatabase;->mCorruptCode:I

    .line 527
    move-object/from16 v5, p3

    iput-object v5, v0, Landroid/database/sqlite/SQLiteDatabase;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 528
    iput-object v1, v0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 529
    new-instance v6, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v6}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    .line 530
    .local v6, "defaultErrorHandler":Landroid/database/DefaultDatabaseErrorHandler;
    if-nez v1, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    move v8, v4

    :goto_0
    invoke-virtual {v6, v8}, Landroid/database/DefaultDatabaseErrorHandler;->setDeleteDatabaseIfCorrupted(Z)V

    .line 531
    iput-object v6, v0, Landroid/database/sqlite/SQLiteDatabase;->mDefaultErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 532
    new-instance v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-direct {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Ljava/lang/String;I)V

    iput-object v8, v0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 533
    move/from16 v11, p5

    iput v11, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    .line 534
    move/from16 v12, p6

    iput v12, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    .line 537
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 538
    iput v4, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    .line 539
    iput v4, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    .line 541
    :cond_1
    const-wide v13, 0x7fffffffffffffffL

    .line 543
    .local v13, "effectiveTimeoutMs":J
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v4

    const-wide/16 v15, 0x0

    if-nez v4, :cond_3

    .line 546
    cmp-long v4, p7, v15

    if-ltz v4, :cond_2

    .line 547
    move-wide/from16 v13, p7

    goto :goto_1

    .line 548
    :cond_2
    sget-boolean v4, Landroid/database/sqlite/SQLiteDatabase;->DEBUG_CLOSE_IDLE_CONNECTIONS:Z

    if-eqz v4, :cond_3

    .line 549
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getIdleConnectionTimeout()I

    move-result v4

    int-to-long v13, v4

    .line 552
    :cond_3
    :goto_1
    cmp-long v4, v2, v15

    if-ltz v4, :cond_4

    .line 553
    iput-wide v2, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionShrinkTimeoutMs:J

    .line 555
    :cond_4
    iput-wide v13, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    .line 556
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->isLegacyCompatibilityWalEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 557
    iget v4, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v15, -0x80000000

    or-int/2addr v4, v15

    iput v4, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 559
    :cond_5
    move-object/from16 v4, p11

    iput-object v4, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->journalMode:Ljava/lang/String;

    .line 560
    move-object/from16 v15, p12

    iput-object v15, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->syncMode:Ljava/lang/String;

    .line 561
    move/from16 v7, p13

    iput v7, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    .line 562
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 564
    new-instance v1, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;-><init>()V

    iput-object v1, v0, Landroid/database/sqlite/SQLiteDatabase;->mBackgroundCheckpoint:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;

    .line 566
    :cond_6
    if-eqz p14, :cond_7

    .line 567
    new-instance v1, Landroid/database/sqlite/SQLiteUserDataRecovery;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteUserDataRecovery;-><init>()V

    iput-object v1, v0, Landroid/database/sqlite/SQLiteDatabase;->udr:Landroid/database/sqlite/SQLiteUserDataRecovery;

    .line 568
    iget-object v1, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->setUserDataRecovery(Z)V

    .line 570
    :cond_7
    return-void
.end method

.method private greylist beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V
    .locals 4
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .param p2, "exclusive"    # Z

    .line 952
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 954
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    .line 955
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 956
    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    .line 958
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v2

    const/4 v3, 0x0

    .line 954
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 964
    nop

    .line 965
    return-void

    .line 963
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 961
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "transactionListener":Landroid/database/sqlite/SQLiteTransactionListener;
    .end local p2    # "exclusive":Z
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 963
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "transactionListener":Landroid/database/sqlite/SQLiteTransactionListener;
    .restart local p2    # "exclusive":Z
    :goto_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 964
    throw v0
.end method

.method private blacklist cleanCacheAndReOpen()V
    .locals 3

    .line 3492
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3493
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3495
    :cond_0
    const-string v0, "PRAGMA drop_db_fs_cache;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3498
    const/4 v0, 0x0

    .line 3499
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    .line 3500
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 3501
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setCheckpointOnClose(Z)V

    .line 3502
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->reOpen()V

    .line 3504
    :cond_1
    return-void
.end method

.method private greylist collectDbStats(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 3185
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3186
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_0

    .line 3187
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->collectDbStats(Ljava/util/ArrayList;)V

    .line 3189
    :cond_0
    monitor-exit v0

    .line 3190
    return-void

    .line 3189
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist convertByte2HexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "password"    # [B

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1299
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 1300
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1301
    aget-byte v2, p0, v1

    if-ltz v2, :cond_0

    aget-byte v2, p0, v1

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 1302
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1307
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist convertToPlainDatabase(Ljava/io/File;Ljava/io/File;[B)V
    .locals 8
    .param p0, "sourceDbFile"    # Ljava/io/File;
    .param p1, "destDbFile"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1312
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1317
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1318
    :try_start_0
    const-string v1, "SQLiteDatabase"

    const-string v2, "convertToPlainDatabase() start..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1322
    const-string v1, "SQLiteDatabase"

    const-string v2, "convertToPlainDatabase() Destination file exists, so delete it"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 1325
    :cond_0
    const/4 v1, 0x0

    .line 1326
    .local v1, "destDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1329
    .local v2, "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1331
    .local v3, "sourceDbVer":I
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1332
    nop

    .line 1338
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const v6, 0x10000010

    invoke-static {v5, v4, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object v1, v4

    .line 1340
    const-string v4, "attach database \'%s\' as secureDb key x\'%s\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1341
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Landroid/database/sqlite/SQLiteDatabase;->convertByte2HexString([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1340
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1342
    const-string/jumbo v4, "secureDb"

    invoke-direct {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->exportDB(Ljava/lang/String;)V

    .line 1343
    const-string v4, "detach database secureDb"

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    .line 1345
    .local v4, "destDbVer":I
    if-eq v4, v3, :cond_1

    .line 1346
    const-string v5, "SQLiteDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Note: sourceDb version was changed during conversion ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1349
    :cond_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1350
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1357
    :cond_2
    nop

    .line 1358
    :try_start_5
    const-string v5, "SQLiteDatabase"

    const-string v6, "convertToPlainDatabase() finished"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    nop

    .end local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sourceDbVer":I
    .end local v4    # "destDbVer":I
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1360
    return-void

    .line 1349
    .restart local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sourceDbVer":I
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1350
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1352
    :cond_3
    nop

    .end local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sourceDbVer":I
    .end local p0    # "sourceDbFile":Ljava/io/File;
    .end local p1    # "destDbFile":Ljava/io/File;
    .end local p2    # "password":[B
    throw v4
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1353
    .restart local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sourceDbVer":I
    .restart local p0    # "sourceDbFile":Ljava/io/File;
    .restart local p1    # "destDbFile":Ljava/io/File;
    .restart local p2    # "password":[B
    :catch_0
    move-exception v4

    .line 1354
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_7
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 1355
    const-string v5, "SQLiteDatabase"

    const-string v6, "convertToPlainDatabase() failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1356
    nop

    .end local p0    # "sourceDbFile":Ljava/io/File;
    .end local p1    # "destDbFile":Ljava/io/File;
    .end local p2    # "password":[B
    throw v4

    .line 1331
    .end local v3    # "sourceDbVer":I
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local p0    # "sourceDbFile":Ljava/io/File;
    .restart local p1    # "destDbFile":Ljava/io/File;
    .restart local p2    # "password":[B
    :catchall_1
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1332
    nop

    .end local p0    # "sourceDbFile":Ljava/io/File;
    .end local p1    # "destDbFile":Ljava/io/File;
    .end local p2    # "password":[B
    throw v3

    .line 1359
    .end local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "sourceDbFile":Ljava/io/File;
    .restart local p1    # "destDbFile":Ljava/io/File;
    .restart local p2    # "password":[B
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 1313
    :cond_4
    const-string v0, "SQLiteDatabase"

    const-string v1, "convertToPlainDatabase() parameters should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "parameters should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist convertToSecureDatabase(Ljava/io/File;Ljava/io/File;[B)V
    .locals 8
    .param p0, "sourceDbFile"    # Ljava/io/File;
    .param p1, "destDbFile"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1364
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1369
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1370
    :try_start_0
    const-string v1, "SQLiteDatabase"

    const-string v2, "convertToSecureDatabase() start..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1374
    const-string v1, "SQLiteDatabase"

    const-string v2, "convertToSecureDatabase() Destination file exists, so delete it"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 1377
    :cond_0
    const/4 v1, 0x0

    .line 1378
    .local v1, "destDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1381
    .local v2, "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1383
    .local v3, "sourceDbVer":I
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1384
    nop

    .line 1388
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const v6, 0x10000010

    invoke-static {v5, v4, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object v1, v4

    .line 1390
    const-string v4, "attach database \'%s\' as plainDb key \'\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1391
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1390
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1392
    const-string/jumbo v4, "plainDb"

    invoke-direct {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->exportDB(Ljava/lang/String;)V

    .line 1393
    const-string v4, "detach database plainDb"

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    .line 1395
    .local v4, "destDbVer":I
    if-eq v4, v3, :cond_1

    .line 1396
    const-string v5, "SQLiteDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Note: sourceDb version was changed during conversion ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1399
    :cond_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1400
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1407
    :cond_2
    nop

    .line 1408
    .end local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sourceDbVer":I
    .end local v4    # "destDbVer":I
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1409
    const-string v0, "SQLiteDatabase"

    const-string v1, "convertToSecureDatabase() finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    return-void

    .line 1399
    .restart local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sourceDbVer":I
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1400
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1402
    :cond_3
    nop

    .end local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sourceDbVer":I
    .end local p0    # "sourceDbFile":Ljava/io/File;
    .end local p1    # "destDbFile":Ljava/io/File;
    .end local p2    # "password":[B
    throw v4
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1403
    .restart local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sourceDbVer":I
    .restart local p0    # "sourceDbFile":Ljava/io/File;
    .restart local p1    # "destDbFile":Ljava/io/File;
    .restart local p2    # "password":[B
    :catch_0
    move-exception v4

    .line 1404
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_7
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 1405
    const-string v5, "SQLiteDatabase"

    const-string v6, "convertToSecureDatabase() failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1406
    nop

    .end local p0    # "sourceDbFile":Ljava/io/File;
    .end local p1    # "destDbFile":Ljava/io/File;
    .end local p2    # "password":[B
    throw v4

    .line 1383
    .end local v3    # "sourceDbVer":I
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local p0    # "sourceDbFile":Ljava/io/File;
    .restart local p1    # "destDbFile":Ljava/io/File;
    .restart local p2    # "password":[B
    :catchall_1
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1384
    nop

    .end local p0    # "sourceDbFile":Ljava/io/File;
    .end local p1    # "destDbFile":Ljava/io/File;
    .end local p2    # "password":[B
    throw v3

    .line 1408
    .end local v1    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "sourceDbFile":Ljava/io/File;
    .restart local p1    # "destDbFile":Ljava/io/File;
    .restart local p2    # "password":[B
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 1365
    :cond_4
    const-string v0, "SQLiteDatabase"

    const-string v1, "convertToSecureDatabase() parameters should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "parameters should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p0, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 1636
    const-string v0, ":memory:"

    const/high16 v1, 0x10000000

    invoke-static {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createInMemory(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p0, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 1652
    nop

    .line 1653
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->toBuilder()Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object v0

    .line 1652
    const-string v1, ":memory:"

    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createSecureDatabase(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[B)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .param p0, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p1, "password"    # [B

    .line 1667
    const-string v0, ":memory:"

    const/high16 v1, 0x10000000

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist deleteDatabase(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 1447
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist deleteDatabase(Ljava/io/File;Z)Z
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "removeCheckFile"    # Z

    .line 1453
    if-eqz p0, :cond_1

    .line 1457
    const/4 v0, 0x0

    .line 1458
    .local v0, "deleted":Z
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1459
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1460
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1461
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1462
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-se"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1463
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-udr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1466
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wipecheck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1468
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1469
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 1470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-mj"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1471
    .local v2, "prefix":Ljava/lang/String;
    new-instance v3, Landroid/database/sqlite/SQLiteDatabase$1;

    invoke-direct {v3, v2}, Landroid/database/sqlite/SQLiteDatabase$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 1477
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 1478
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 1479
    .local v6, "masterJournal":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    or-int/2addr v0, v7

    .line 1478
    .end local v6    # "masterJournal":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1483
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "files":[Ljava/io/File;
    :cond_0
    return v0

    .line 1454
    .end local v0    # "deleted":Z
    .end local v1    # "dir":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist deleteDatabaseFile(Ljava/lang/String;)Z
    .locals 5
    .param p0, "file"    # Ljava/lang/String;

    .line 4048
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4049
    .local v0, "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 4051
    .local v1, "ret":Z
    if-eqz v1, :cond_0

    .line 4052
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-journal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4053
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-wal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4054
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-shm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4055
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-se"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4056
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-udr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4057
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-wipecheck"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4059
    :cond_0
    return v1
.end method

.method private greylist-max-o dispose(Z)V
    .locals 4
    .param p1, "finalized"    # Z

    .line 591
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_1

    .line 593
    if-eqz p1, :cond_0

    .line 594
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 596
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 599
    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 600
    .local v1, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 604
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    .line 605
    .local v3, "sdpHelper":Landroid/database/sqlite/SQLiteSdpHelper;
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    .line 608
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 611
    if-eqz v3, :cond_2

    .line 612
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteSdpHelper;->unregisterListener()V

    .line 616
    :cond_2
    if-nez p1, :cond_3

    .line 617
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 618
    :try_start_1
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    if-eqz v1, :cond_3

    .line 622
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->close()V

    goto :goto_0

    .line 619
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 625
    :cond_3
    :goto_0
    return-void

    .line 608
    .end local v1    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local v3    # "sdpHelper":Landroid/database/sqlite/SQLiteSdpHelper;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method static blacklist dumpAll(Landroid/util/Printer;ZZ)V
    .locals 13
    .param p0, "printer"    # Landroid/util/Printer;
    .param p1, "verbose"    # Z
    .param p2, "isSystem"    # Z

    .line 3221
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3224
    .local v0, "directories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-wide/16 v1, 0x0

    .line 3225
    .local v1, "totalStatementsTimeInMs":J
    const-wide/16 v3, 0x0

    .line 3227
    .local v3, "totalStatementsCount":J
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getActiveDatabasePools()Ljava/util/ArrayList;

    move-result-object v5

    .line 3229
    .local v5, "activeConnectionPools":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnectionPool;>;"
    new-instance v6, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 3231
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteConnectionPool;

    .line 3232
    .local v7, "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 3233
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v8, :cond_0

    .line 3234
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Attached db: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->hasAttachedDbsLocked()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3235
    invoke-virtual {v7, p0, p1, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->dump(Landroid/util/Printer;ZLandroid/util/ArraySet;)V

    .line 3236
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsTime()J

    move-result-wide v9

    add-long/2addr v1, v9

    .line 3237
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsCount()J

    move-result-wide v9

    add-long/2addr v3, v9

    .line 3239
    .end local v7    # "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    goto :goto_0

    .line 3241
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_4

    .line 3245
    const-string v6, "Statements Executed per Database"

    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3246
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, " :    "

    const-string v9, "  "

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteConnectionPool;

    .line 3247
    .restart local v7    # "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3248
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsCount()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3247
    invoke-interface {p0, v8}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3249
    .end local v7    # "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    goto :goto_1

    .line 3250
    :cond_2
    const-string v6, ""

    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3251
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Total Statements Executed for all Active Databases: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3255
    new-instance v7, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 3257
    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3258
    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3259
    const-string v6, "Statement Time per Database (ms)"

    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3260
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteConnectionPool;

    .line 3261
    .restart local v7    # "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3262
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3261
    invoke-interface {p0, v10}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3263
    .end local v7    # "dbPool":Landroid/database/sqlite/SQLiteConnectionPool;
    goto :goto_2

    .line 3264
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total Statements Time for all Active Databases (ms): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3269
    :cond_4
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 3270
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 3271
    .local v6, "dirs":[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 3272
    array-length v7, v6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    .line 3273
    .local v9, "dir":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, p2}, Landroid/database/sqlite/SQLiteDatabase;->dumpDatabaseDirectory(Landroid/util/Printer;Ljava/io/File;Z)V

    .line 3272
    .end local v9    # "dir":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3276
    .end local v6    # "dirs":[Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private static blacklist dumpDatabaseDirectory(Landroid/util/Printer;Ljava/io/File;Z)V
    .locals 9
    .param p0, "pw"    # Landroid/util/Printer;
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "isSystem"    # Z

    .line 3279
    const-string v0, ""

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database files in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3281
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 3282
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_4

    array-length v2, v1

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 3286
    :cond_0
    new-instance v2, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 3288
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 3289
    .local v5, "f":Ljava/io/File;
    if-eqz p2, :cond_1

    .line 3294
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3295
    .local v6, "name":Ljava/lang/String;
    const-string v7, ".db"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ".db-wal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3296
    const-string v7, ".db-journal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3297
    const-string v7, "-wipecheck"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3298
    goto :goto_2

    .line 3301
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    .line 3302
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/database/sqlite/SQLiteDatabase;->getFileTimestamps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 3303
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/database/sqlite/SQLiteUserDataRecovery;->isDbUdrRecovered(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, " (R)"

    goto :goto_1

    :cond_2
    move-object v8, v0

    :goto_1
    aput-object v8, v6, v7

    .line 3301
    const-string v7, "  %-40s %7db %s%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3288
    .end local v5    # "f":Ljava/io/File;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3305
    :cond_3
    return-void

    .line 3283
    :cond_4
    :goto_3
    const-string v0, "  [none]"

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3284
    return-void
.end method

.method private blacklist exportDB(Ljava/lang/String;)V
    .locals 2
    .param p1, "attachedDB"    # Ljava/lang/String;

    .line 1614
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1615
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1617
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->exportDB(Ljava/lang/String;)V

    .line 1618
    monitor-exit v0

    .line 1619
    return-void

    .line 1618
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "tables"    # Ljava/lang/String;

    .line 1899
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1901
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1902
    .local v0, "spacepos":I
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1904
    .local v1, "commapos":I
    const/4 v2, 0x0

    if-lez v0, :cond_1

    if-lt v0, v1, :cond_0

    if-gez v1, :cond_1

    .line 1905
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1906
    :cond_1
    if-lez v1, :cond_3

    if-lt v1, v0, :cond_2

    if-gez v0, :cond_3

    .line 1907
    :cond_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1909
    :cond_3
    return-object p0

    .line 1911
    .end local v0    # "spacepos":I
    .end local v1    # "commapos":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid tables"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getActiveDatabasePools()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteConnectionPool;",
            ">;"
        }
    .end annotation

    .line 3202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3203
    .local v0, "connectionPools":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnectionPool;>;"
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 3204
    :try_start_0
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    .line 3205
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, v3, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3206
    :try_start_1
    iget-object v5, v3, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v5, :cond_0

    .line 3207
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3209
    :cond_0
    monitor-exit v4

    .line 3210
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_0

    .line 3209
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "connectionPools":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnectionPool;>;"
    :try_start_2
    throw v2

    .line 3211
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v0    # "connectionPools":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnectionPool;>;"
    :cond_1
    monitor-exit v1

    .line 3212
    return-object v0

    .line 3211
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private static greylist getActiveDatabases()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation

    .line 3194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3195
    .local v0, "databases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDatabase;>;"
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 3196
    :try_start_0
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3197
    monitor-exit v1

    .line 3198
    return-object v0

    .line 3197
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist getConnectionKey()[B
    .locals 2

    .line 3513
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3514
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_0

    .line 3515
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->getConnectionKey()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3517
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPassword:[B

    monitor-exit v0

    return-object v1

    .line 3519
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static greylist-max-o getDbStats()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .line 3176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3177
    .local v0, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    .line 3178
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->collectDbStats(Ljava/util/ArrayList;)V

    .line 3179
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_0

    .line 3180
    :cond_0
    return-object v0
.end method

.method public static blacklist getFileTimestamps(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 4002
    :try_start_0
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-class v2, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    .line 4001
    invoke-static {v0, v2, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    .line 4003
    .local v0, "attr":Ljava/nio/file/attribute/BasicFileAttributes;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4004
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " atime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4005
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4003
    return-object v1

    .line 4006
    .end local v0    # "attr":Ljava/nio/file/attribute/BasicFileAttributes;
    :catch_0
    move-exception v0

    .line 4007
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "[unable to obtain timestamp]"

    return-object v1
.end method

.method private static greylist-max-o isMainThread()Z
    .locals 2

    .line 838
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 839
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private greylist-max-o isReadOnlyLocked()Z
    .locals 2

    .line 2669
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic blacklist lambda$dumpAll$0(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool;)I
    .locals 4
    .param p0, "a"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p1, "b"    # Landroid/database/sqlite/SQLiteConnectionPool;

    .line 3230
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsCount()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsCount()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$dumpAll$1(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool;)I
    .locals 4
    .param p0, "a"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p1, "b"    # Landroid/database/sqlite/SQLiteConnectionPool;

    .line 3256
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsTime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->getTotalStatementsTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$dumpDatabaseDirectory$2(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .param p0, "a"    # Ljava/io/File;
    .param p1, "b"    # Ljava/io/File;

    .line 3286
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o open()V
    .locals 4

    .line 1522
    const-string v0, "SQLiteDatabase"

    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->openInner()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1531
    goto :goto_0

    .line 1532
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1523
    :catch_1
    move-exception v1

    .line 1524
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->isCorruptException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1525
    const-string v2, "Database corruption detected in open()"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1526
    move-object v2, v1

    check-cast v2, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 1527
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->openInner()V

    .line 1536
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    nop

    .line 1537
    return-void

    .line 1529
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1533
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open database \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1534
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1535
    throw v1
.end method

.method public static whitelist openDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p0, "path"    # Ljava/io/File;
    .param p1, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 1143
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I

    .line 1128
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 16
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 1188
    new-instance v15, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v14}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZ)V

    .line 1190
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase;->open()V

    .line 1191
    return-object v0
.end method

.method private static greylist openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 1149
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 17
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .param p2, "context"    # Landroid/content/Context;

    .line 1155
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "OpenParams cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1156
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmOpenFlags(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v4

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmCursorFactory(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmErrorHandler(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/DatabaseErrorHandler;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmLookasideSlotSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v7

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmLookasideSlotCount(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmIdleConnectionTimeout(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J

    move-result-wide v9

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmIdleConnectionShrinkTimeout(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J

    move-result-wide v11

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmJournalMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmSyncMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmCacheSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v15

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmUserDataRecovery(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Z

    move-result v16

    move-object v2, v0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZ)V

    .line 1162
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setContext(Landroid/content/Context;)V

    .line 1163
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase;->open()V

    .line 1164
    return-object v0
.end method

.method private greylist-max-o openInner()V
    .locals 3

    .line 1579
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1580
    nop

    .line 1581
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-static {p0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->open(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabaseConfiguration;)Landroid/database/sqlite/SQLiteConnectionPool;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 1582
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 1583
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1587
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1588
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    if-nez v0, :cond_0

    .line 1589
    new-instance v0, Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteSdpHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    .line 1591
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1592
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSdpHelper;->registerListener()V

    .line 1596
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 1597
    :try_start_2
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    monitor-exit v0

    .line 1599
    return-void

    .line 1598
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1591
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1583
    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    goto :goto_0
.end method

.method private blacklist openInnerSecureDatabase([B)V
    .locals 3
    .param p1, "password"    # [B

    .line 1602
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1603
    nop

    .line 1604
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-static {p0, v1, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->openSecure(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabaseConfiguration;[B)Landroid/database/sqlite/SQLiteConnectionPool;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 1605
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 1606
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1608
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 1609
    :try_start_1
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    monitor-exit v1

    .line 1611
    return-void

    .line 1610
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1606
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_0
.end method

.method public static whitelist openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 1199
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 1207
    const/high16 v0, 0x10000000

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 1215
    const/high16 v0, 0x10000000

    invoke-static {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist openSecureDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$OpenParams;[BLandroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .param p2, "password"    # [B
    .param p3, "context"    # Landroid/content/Context;

    .line 1256
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;[BLandroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;
    .locals 19
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;
    .param p4, "password"    # [B

    .line 1279
    move-object/from16 v0, p4

    const-string v1, "SQLiteDatabase"

    if-eqz v0, :cond_1

    .line 1284
    array-length v2, v0

    if-eqz v2, :cond_0

    .line 1289
    move/from16 v2, p2

    or-int/lit16 v15, v2, 0x300

    .line 1290
    .end local p2    # "flags":I
    .local v15, "flags":I
    new-instance v16, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v3, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v18, v15

    .end local v15    # "flags":I
    .local v18, "flags":I
    move/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZ)V

    .line 1292
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase([B)V

    .line 1293
    return-object v1

    .line 1285
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v18    # "flags":I
    .restart local p2    # "flags":I
    :cond_0
    move/from16 v2, p2

    const-string v3, "Could not open a secure database with empty password."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1280
    :cond_1
    move/from16 v2, p2

    const-string v3, "Could not open a secure database with null password."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$OpenParams;[BLandroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 18
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "openParams"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .param p2, "password"    # [B
    .param p3, "context"    # Landroid/content/Context;

    .line 1230
    move-object/from16 v0, p2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "OpenParams cannot be null"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1231
    const-string v1, "SQLiteDatabase"

    if-eqz v0, :cond_2

    .line 1235
    array-length v2, v0

    if-eqz v2, :cond_1

    .line 1239
    new-instance v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmOpenFlags(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v2

    or-int/lit16 v2, v2, 0x100

    or-int/lit16 v5, v2, 0x200

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmCursorFactory(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmErrorHandler(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/DatabaseErrorHandler;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmLookasideSlotSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmLookasideSlotCount(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmIdleConnectionTimeout(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J

    move-result-wide v10

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmIdleConnectionShrinkTimeout(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J

    move-result-wide v12

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmJournalMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmSyncMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmCacheSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v16

    invoke-static/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmUserDataRecovery(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Z

    move-result v17

    move-object v3, v1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v17}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZ)V

    .line 1245
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setContext(Landroid/content/Context;)V

    .line 1246
    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase([B)V

    .line 1247
    return-object v1

    .line 1236
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    move-object/from16 v2, p3

    const-string v3, "Could not open a secure database with empty password."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1232
    :cond_2
    move-object/from16 v2, p3

    const-string v3, "Could not open a secure database with null password."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist openSecureDatabase([B)V
    .locals 4
    .param p1, "password"    # [B

    .line 1542
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x0

    :try_start_0
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPassword:[B

    .line 1543
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openInnerSecureDatabase([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1553
    :goto_0
    :try_start_1
    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPassword:[B
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1554
    goto :goto_1

    .line 1553
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1544
    :catch_0
    move-exception v2

    .line 1545
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v2}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->isCorruptException(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1546
    const-string v3, "Database corruption detected in openSecureDatabase()"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1547
    move-object v3, v2

    check-cast v3, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 1548
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openInnerSecureDatabase([B)V

    goto :goto_0

    .line 1559
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :goto_1
    nop

    .line 1560
    return-void

    .line 1550
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "password":[B
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1553
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "password":[B
    :goto_2
    :try_start_3
    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPassword:[B

    .line 1554
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "password":[B
    throw v2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1555
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "password":[B
    :catch_1
    move-exception v1

    .line 1556
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open database \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1557
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1558
    throw v1
.end method

.method private blacklist releaseConnectionMemory()V
    .locals 2

    .line 632
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_0

    .line 635
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseConnectionMemory()V

    .line 638
    :cond_0
    monitor-exit v0

    .line 639
    return-void

    .line 638
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist releaseMemory()I
    .locals 2

    .line 648
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    .line 651
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v1}, Landroid/database/sqlite/SQLiteDatabase;->releaseConnectionMemory()V

    .line 652
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_0

    .line 653
    :cond_0
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->releaseMemory()I

    move-result v0

    return v0
.end method

.method public static blacklist renameDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .line 4019
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4020
    .local v0, "fi":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4022
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 4023
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4024
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4026
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 4027
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4028
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4030
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 4031
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4032
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4034
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-se"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 4035
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4036
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4038
    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-udr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 4039
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4040
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4042
    :cond_4
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wipecheck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4043
    return-void
.end method

.method public static whitelist semBackupDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .line 3006
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3010
    :cond_0
    invoke-static {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->nativeBackupDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3007
    :cond_1
    :goto_0
    const-string v0, "SQLiteDatabase"

    const-string/jumbo v1, "path should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist semBackupSecureDatabaseFile(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 2
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .param p2, "password"    # [B

    .line 3028
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3032
    :cond_0
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3033
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection;->nativeBackupSecureDatabaseFile(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v1

    .line 3034
    .local v1, "rc":I
    monitor-exit v0

    return v1

    .line 3035
    .end local v1    # "rc":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3029
    :cond_1
    :goto_0
    const-string v0, "SQLiteDatabase"

    const-string/jumbo v1, "path and password should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist semDeleteAllDatabases(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 7
    .param p0, "dbObj"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 758
    const-string v0, "SQLiteDatabase"

    if-eqz p0, :cond_3

    .line 761
    const/4 v1, 0x0

    .line 762
    .local v1, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 764
    .local v2, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 765
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 766
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 767
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 771
    :cond_0
    if-eqz v1, :cond_2

    .line 772
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 773
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@ Delete DB File : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    new-instance v5, Ljava/io/File;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 775
    nop

    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 778
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@ Failed to get attachedDbs, just delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_1
    nop

    .line 785
    const/4 v0, 0x1

    return v0

    .line 781
    :catch_0
    move-exception v3

    .line 782
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "!@ semDeleteAllDatabase - Exception during deleting"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v0, 0x0

    return v0

    .line 759
    .end local v1    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SQLiteDatabase should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist semRestoreDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .line 3051
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3055
    :cond_0
    invoke-static {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->nativeRestoreDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3052
    :cond_1
    :goto_0
    const-string v0, "SQLiteDatabase"

    const-string/jumbo v1, "path should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist semRestoreSecureDatabaseFile(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 2
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .param p2, "password"    # [B

    .line 3074
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3078
    :cond_0
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3079
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection;->nativeRestoreSecureDatabaseFile(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v1

    .line 3080
    .local v1, "rc":I
    monitor-exit v0

    return v1

    .line 3081
    .end local v1    # "rc":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3075
    :cond_1
    :goto_0
    const-string v0, "SQLiteDatabase"

    const-string/jumbo v1, "path and password should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o throwIfNotOpenLocked()V
    .locals 3

    .line 3528
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    .line 3532
    return-void

    .line 3529
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist wipeDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "reason"    # Ljava/lang/String;

    .line 3989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB wipe detected: package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3990
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3993
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->getFileTimestamps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " checkfile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-wipecheck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3994
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->getFileTimestamps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "STACKTRACE"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 3989
    const-string v2, "SQLiteDatabase"

    invoke-static {v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->wtfAsSystemServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3996
    return-void
.end method

.method static blacklist wtfAsSystemServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stacktrace"    # Ljava/lang/Throwable;

    .line 4013
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4014
    invoke-static {p0, p1, p2}, Landroid/content/ContentResolver;->onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4015
    return-void
.end method

.method private greylist-max-o yieldIfContendedHelper(ZJ)Z
    .locals 2
    .param p1, "throwIfUnsafe"    # Z
    .param p2, "sleepAfterYieldDelay"    # J

    .line 1092
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1094
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p1, v1}, Landroid/database/sqlite/SQLiteSession;->yieldTransaction(JZLandroid/os/CancellationSignal;)Z

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1094
    return v0

    .line 1099
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 1097
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "throwIfUnsafe":Z
    .end local p2    # "sleepAfterYieldDelay":J
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1099
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "throwIfUnsafe":Z
    .restart local p2    # "sleepAfterYieldDelay":J
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1100
    throw v0
.end method


# virtual methods
.method public whitelist beginTransaction()V
    .locals 2

    .line 864
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 865
    return-void
.end method

.method public whitelist beginTransactionNonExclusive()V
    .locals 2

    .line 888
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 889
    return-void
.end method

.method public whitelist beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .line 917
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 918
    return-void
.end method

.method public whitelist beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .line 946
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 947
    return-void
.end method

.method public blacklist changeDBPassword([B)I
    .locals 3
    .param p1, "newPassword"    # [B

    .line 1414
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1418
    if-eqz p1, :cond_0

    .line 1423
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1425
    :try_start_0
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1426
    :try_start_1
    const-string v1, "SQLiteDatabase"

    const-string v2, "changeDBPassword() start..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteSession;->changePassword([B)V

    .line 1428
    const-string v1, "SQLiteDatabase"

    const-string v2, "changeDBPassword() finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1430
    const/4 v0, 0x0

    .line 1435
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1430
    return v0

    .line 1429
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "newPassword":[B
    :try_start_3
    throw v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1435
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "newPassword":[B
    :catchall_1
    move-exception v0

    goto :goto_0

    .line 1431
    :catch_0
    move-exception v0

    .line 1432
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 1433
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "newPassword":[B
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1435
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "newPassword":[B
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1436
    throw v0

    .line 1419
    :cond_0
    const-string v0, "SQLiteDatabase"

    const-string v1, "Could not use null password to a secure database."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not use null password to a secure database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1415
    :cond_1
    const-string v0, "SQLiteDatabase"

    const-string v1, "changeDBPassword() DB is not open"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DB is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist closeAndDiscardNonPrimaryConnections(ZZ)V
    .locals 2
    .param p1, "needDiscard"    # Z
    .param p2, "fixPoolSize"    # Z

    .line 3440
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3441
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 3442
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAndDiscardNonPrimaryConnections(ZZ)V

    .line 3443
    monitor-exit v0

    .line 3444
    return-void

    .line 3443
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1930
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1932
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1934
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1932
    return-object v0

    .line 1934
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1935
    throw v0
.end method

.method greylist-max-o createSession()Landroid/database/sqlite/SQLiteSession;
    .locals 2

    .line 812
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 813
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 814
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 815
    .local v1, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    new-instance v0, Landroid/database/sqlite/SQLiteSession;

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteSession;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;)V

    return-object v0

    .line 815
    .end local v1    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .line 2433
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2435
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2436
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2438
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2440
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2443
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2438
    return v1

    .line 2440
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2441
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "whereClause":Ljava/lang/String;
    .end local p3    # "whereArgs":[Ljava/lang/String;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2443
    .end local v0    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "whereClause":Ljava/lang/String;
    .restart local p3    # "whereArgs":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2444
    throw v0
.end method

.method public blacklist diagnoseError()Z
    .locals 4

    .line 3480
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->cleanCacheAndReOpen()V

    .line 3481
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getCorruptCode()I

    move-result v1

    const/16 v2, 0x40b

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3482
    const-string v1, "SQLiteDatabase"

    const-string v2, "!@ Integrity Check for corrupted DB file gets OK as result"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3483
    return v3

    .line 3487
    :cond_1
    goto :goto_1

    .line 3485
    :catch_0
    move-exception v1

    .line 3488
    :goto_1
    return v0
.end method

.method public whitelist disableWriteAheadLogging()V
    .locals 5

    .line 2950
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2951
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2953
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2955
    .local v1, "oldFlags":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2957
    monitor-exit v0

    return-void

    .line 2962
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2963
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iput v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2966
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 2967
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mBackgroundCheckpoint:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2971
    nop

    .line 2972
    .end local v1    # "oldFlags":I
    :try_start_2
    monitor-exit v0

    .line 2973
    return-void

    .line 2968
    .restart local v1    # "oldFlags":I
    :catch_0
    move-exception v2

    .line 2969
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2970
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v2

    .line 2972
    .end local v1    # "oldFlags":I
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist doRecovery()Z
    .locals 6

    .line 4301
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isSecureDb:Z

    .line 4302
    .local v0, "isSecureDb":Z
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 4303
    .local v1, "isNoLocalized":Z
    :goto_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->udr:Landroid/database/sqlite/SQLiteUserDataRecovery;

    if-eqz v3, :cond_3

    .line 4304
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getConnectionKey()[B

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    .line 4305
    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4304
    :goto_2
    invoke-virtual {v3, v2, v5, v4}, Landroid/database/sqlite/SQLiteUserDataRecovery;->doRecovery(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v2

    return v2

    .line 4307
    :cond_3
    return v2
.end method

.method public whitelist enableWriteAheadLogging()Z
    .locals 5

    .line 2899
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2900
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2902
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2904
    monitor-exit v0

    return v2

    .line 2907
    :cond_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 2910
    monitor-exit v0

    return v3

    .line 2913
    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2914
    const-string v1, "SQLiteDatabase"

    const-string v2, "can\'t enable WAL for memory databases."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    monitor-exit v0

    return v3

    .line 2920
    :cond_2
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-eqz v1, :cond_4

    .line 2921
    const-string v1, "SQLiteDatabase"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2922
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "this database: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " has attached databases. can\'t  enable WAL."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    :cond_3
    monitor-exit v0

    return v3

    .line 2928
    :cond_4
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2930
    :try_start_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 2931
    new-instance v1, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mBackgroundCheckpoint:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2935
    nop

    .line 2936
    :try_start_2
    monitor-exit v0

    .line 2937
    return v2

    .line 2932
    :catch_0
    move-exception v1

    .line 2933
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2934
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v1

    .line 2936
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist endTransaction()V
    .locals 2

    .line 972
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 974
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 980
    nop

    .line 981
    return-void

    .line 979
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 977
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 979
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 980
    throw v0
.end method

.method public whitelist execPerConnectionSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1776
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    invoke-static {p2}, Landroid/database/DatabaseUtils;->deepCopyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 1782
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1783
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1785
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1786
    .local v1, "index":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1788
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1792
    nop

    .line 1793
    .end local v1    # "index":I
    :try_start_2
    monitor-exit v0

    .line 1794
    return-void

    .line 1789
    .restart local v1    # "index":I
    :catch_0
    move-exception v2

    .line 1790
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1791
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    throw v2

    .line 1793
    .end local v1    # "index":I
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist execSQL(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 2550
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2551
    return-void
.end method

.method public whitelist execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 2603
    if-eqz p2, :cond_0

    .line 2606
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2607
    return-void

    .line 2604
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty bindArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeSql(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 2611
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2613
    :try_start_0
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v0

    .line 2614
    .local v0, "statementType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2615
    const/4 v1, 0x0

    .line 2616
    .local v1, "disableWal":Z
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 2617
    :try_start_1
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-nez v3, :cond_0

    .line 2618
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    .line 2619
    const/4 v1, 0x1

    .line 2620
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteConnectionPool;->disableIdleConnectionHandler()V

    .line 2622
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2623
    if-eqz v1, :cond_1

    .line 2624
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_0

    .line 2622
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 2628
    .end local v1    # "disableWal":Z
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    :cond_1
    :goto_0
    const/16 v1, 0x8

    :try_start_5
    new-instance v2, Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {v2, p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2629
    .local v2, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2630
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2633
    if-ne v0, v1, :cond_2

    .line 2634
    :try_start_8
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptions()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 2638
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2629
    return v3

    .line 2628
    :catchall_1
    move-exception v3

    :try_start_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_a
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "statementType":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    :goto_1
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2633
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local v0    # "statementType":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    :catchall_3
    move-exception v2

    if-ne v0, v1, :cond_3

    .line 2634
    :try_start_b
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptions()V

    .line 2636
    :cond_3
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 2638
    .end local v0    # "statementType":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    :catchall_4
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2639
    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 575
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 578
    nop

    .line 579
    return-void

    .line 577
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 578
    throw v0
.end method

.method public whitelist getAttachedDbs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 3315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3316
    .local v0, "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3317
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3318
    monitor-exit v1

    return-object v3

    .line 3321
    :cond_0
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-nez v2, :cond_1

    .line 3331
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "main"

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3332
    monitor-exit v1

    return-object v0

    .line 3335
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 3336
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3340
    const/4 v1, 0x0

    .line 3342
    .local v1, "c":Landroid/database/Cursor;
    :try_start_1
    const-string/jumbo v2, "pragma database_list;"

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 3343
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3349
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3352
    :cond_2
    if-eqz v1, :cond_3

    .line 3353
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3356
    :cond_3
    nop

    .line 3358
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3356
    return-object v0

    .line 3352
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 3353
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3355
    :cond_4
    nop

    .end local v0    # "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3358
    .end local v1    # "c":Landroid/database/Cursor;
    .restart local v0    # "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3359
    throw v1

    .line 3336
    :catchall_2
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2
.end method

.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 4273
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getCorruptCode()I
    .locals 1

    .line 3091
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCorruptCode:I

    return v0
.end method

.method public blacklist getIntegrityErrorInfo()Ljava/lang/String;
    .locals 1

    .line 3432
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getLabel()Ljava/lang/String;
    .locals 2

    .line 674
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 676
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getMaxConnectionPoolSize()I
    .locals 2

    .line 4244
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4245
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->getMaxConnectionPoolSize()I

    move-result v1

    .line 4246
    .local v1, "poolSize":I
    monitor-exit v0

    .line 4247
    return v1

    .line 4246
    .end local v1    # "poolSize":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getMaximumSize()J
    .locals 4

    .line 1820
    const-string v0, "PRAGMA max_page_count;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1821
    .local v0, "pageCount":J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public whitelist getPageSize()J
    .locals 2

    .line 1849
    const-string v0, "PRAGMA page_size;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getPath()Ljava/lang/String;
    .locals 2

    .line 2711
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2712
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2713
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSyncedTables()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1109
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method greylist-max-o getThreadDefaultConnectionFlags(Z)I
    .locals 2
    .param p1, "readOnly"    # Z

    .line 827
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 828
    :cond_0
    const/4 v0, 0x2

    :goto_0
    nop

    .line 829
    .local v0, "flags":I
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 830
    or-int/lit8 v0, v0, 0x4

    .line 832
    :cond_1
    return v0
.end method

.method greylist getThreadSession()Landroid/database/sqlite/SQLiteSession;
    .locals 1

    .line 807
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteSession;

    return-object v0
.end method

.method public whitelist getVersion()I
    .locals 2

    .line 1802
    const-string v0, "PRAGMA user_version;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist hasAttachedDbsLocked()Z
    .locals 2

    .line 3166
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3167
    :try_start_0
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    monitor-exit v0

    return v1

    .line 3168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist inTransaction()Z
    .locals 1

    .line 1007
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1009
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->hasTransaction()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1009
    return v0

    .line 1011
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1012
    throw v0
.end method

.method public whitelist insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .line 2279
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 2280
    :catch_0
    move-exception v0

    .line 2281
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error inserting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteDatabase"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2282
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public whitelist insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 2305
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .param p4, "conflictAlgorithm"    # I

    .line 2378
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2380
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2381
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2382
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v1, v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2383
    const-string v1, " INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2384
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2385
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2387
    const/4 v1, 0x0

    .line 2388
    .local v1, "bindArgs":[Ljava/lang/Object;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2389
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2390
    .local v2, "size":I
    :goto_0
    const/16 v3, 0x29

    if-lez v2, :cond_5

    .line 2391
    new-array v4, v2, [Ljava/lang/Object;

    move-object v1, v4

    .line 2392
    const/4 v4, 0x0

    .line 2393
    .local v4, "i":I
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2394
    .local v6, "colName":Ljava/lang/String;
    if-lez v4, :cond_1

    const-string v7, ","

    goto :goto_2

    :cond_1
    const-string v7, ""

    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2395
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2396
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v4

    .line 2397
    .end local v6    # "colName":Ljava/lang/String;
    move v4, v7

    goto :goto_1

    .line 2398
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2399
    const-string v5, " VALUES ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_4

    .line 2401
    if-lez v4, :cond_3

    const-string v5, ",?"

    goto :goto_4

    :cond_3
    const-string v5, "?"

    :goto_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2403
    .end local v4    # "i":I
    :cond_4
    goto :goto_5

    .line 2404
    :cond_5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") VALUES (NULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2406
    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2408
    new-instance v3, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2410
    .local v3, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2412
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2415
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2410
    return-wide v4

    .line 2412
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2413
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "nullColumnHack":Ljava/lang/String;
    .end local p3    # "initialValues":Landroid/content/ContentValues;
    .end local p4    # "conflictAlgorithm":I
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2415
    .end local v0    # "sql":Ljava/lang/StringBuilder;
    .end local v1    # "bindArgs":[Ljava/lang/Object;
    .end local v2    # "size":I
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "nullColumnHack":Ljava/lang/String;
    .restart local p3    # "initialValues":Landroid/content/ContentValues;
    .restart local p4    # "conflictAlgorithm":I
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2416
    throw v0
.end method

.method public whitelist isDatabaseIntegrityOk()Z
    .locals 1

    .line 3376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk(Z)Z

    move-result v0

    return v0
.end method

.method public blacklist isDatabaseIntegrityOk(Z)Z
    .locals 9
    .param p1, "extraCheck"    # Z

    .line 3381
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 3383
    const/4 v0, 0x0

    .line 3385
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 3386
    if-eqz v0, :cond_0

    .line 3394
    goto :goto_0

    .line 3387
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "databaselist for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " couldn\'t be retrieved. probably because the database is closed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "extraCheck":Z
    throw v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3422
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "extraCheck":Z
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 3390
    .restart local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v1

    .line 3392
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 3393
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "main"

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3396
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 3397
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3398
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3400
    .local v3, "prog":Landroid/database/sqlite/SQLiteStatement;
    const/4 v4, 0x0

    const-string v5, "PRAGMA "

    if-nez p1, :cond_1

    .line 3401
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".integrity_check(1);"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    move-object v3, v5

    goto :goto_2

    .line 3403
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".extra_integrity_check(1);"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    move-object v3, v5

    .line 3406
    :goto_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForIntegrityCheck()Ljava/lang/String;

    move-result-object v5

    .line 3407
    .local v5, "rslt":Ljava/lang/String;
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;

    .line 3408
    if-eqz v5, :cond_3

    const-string/jumbo v6, "ok"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3410
    iput-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;

    .line 3411
    const-string v6, "SQLiteDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PRAGMA integrity_check on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " returned: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3412
    nop

    .line 3418
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3422
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3412
    return v4

    .line 3418
    .end local v5    # "rslt":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3396
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "prog":Landroid/database/sqlite/SQLiteStatement;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 3418
    .restart local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "prog":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v4

    goto :goto_3

    .line 3414
    :catch_1
    move-exception v5

    .line 3415
    .local v5, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_5
    const-string v6, "false"

    iput-object v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3416
    nop

    .line 3418
    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3422
    :cond_5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3416
    return v4

    .line 3418
    .end local v5    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :goto_3
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3419
    :cond_6
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "extraCheck":Z
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3422
    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "i":I
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "prog":Landroid/database/sqlite/SQLiteStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "extraCheck":Z
    :cond_7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3423
    nop

    .line 3424
    const/4 v0, 0x1

    return v0

    .line 3422
    :goto_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3423
    throw v0
.end method

.method public whitelist isDbLockedByCurrentThread()Z
    .locals 1

    .line 1028
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1030
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->hasConnection()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1030
    return v0

    .line 1032
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1033
    throw v0
.end method

.method public whitelist isDbLockedByOtherThreads()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1047
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isForcedReadOnlyDatabase()Z
    .locals 1

    .line 3148
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 3150
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->isForcedReadOnlyDatabase()Z

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3154
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3150
    return v0

    .line 3154
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3155
    throw v0

    .line 3151
    :catch_0
    move-exception v0

    .line 3154
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 3155
    nop

    .line 3156
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isInMemoryDatabase()Z
    .locals 2

    .line 2679
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2680
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2681
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isOpen()Z
    .locals 2

    .line 2690
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2691
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 2692
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isReadOnly()Z
    .locals 2

    .line 2663
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2664
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2665
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isUdrEnabled()Z
    .locals 1

    .line 3161
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->udr:Landroid/database/sqlite/SQLiteUserDataRecovery;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isWriteAheadLoggingEnabled()Z
    .locals 3

    .line 2984
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2985
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2987
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2989
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "deletedTable"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1874
    return-void
.end method

.method public whitelist markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "foreignKey"    # Ljava/lang/String;
    .param p3, "updateTable"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1890
    return-void
.end method

.method public whitelist needUpgrade(I)Z
    .locals 1
    .param p1, "newVersion"    # I

    .line 2702
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected whitelist onAllReferencesReleased()V
    .locals 1

    .line 583
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->dispose(Z)V

    .line 584
    return-void
.end method

.method greylist-max-o onCorruption()V
    .locals 5

    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, "poolSize":I
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 692
    :try_start_0
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    if-eqz v2, :cond_0

    .line 693
    const-string v2, "SQLiteDatabase"

    const-string v3, "Database corruption is already handling."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    monitor-exit v1

    return-void

    .line 696
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 697
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 698
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getMaxConnectionPoolSize()I

    move-result v3

    move v0, v3

    .line 699
    invoke-virtual {p0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->closeAndDiscardNonPrimaryConnections(ZZ)V

    .line 701
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 704
    const v1, 0x124fc

    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 705
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mDefaultErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v1, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 706
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    if-eqz v1, :cond_2

    .line 707
    invoke-interface {v1, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 710
    :cond_2
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 711
    if-lez v0, :cond_3

    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 712
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSize(I)V

    .line 714
    :cond_3
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 715
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z

    .line 716
    monitor-exit v1

    .line 717
    nop

    .line 718
    return-void

    .line 716
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 710
    :catchall_1
    move-exception v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 711
    if-lez v0, :cond_4

    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 712
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSize(I)V

    .line 714
    :cond_4
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 715
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z

    .line 716
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 717
    throw v1

    .line 716
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 701
    :catchall_3
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2
.end method

.method blacklist onCorruption(I)V
    .locals 6
    .param p1, "errorCode"    # I

    .line 3098
    const/4 v0, 0x0

    .line 3099
    .local v0, "poolSize":I
    const/4 v1, 0x0

    .line 3100
    .local v1, "waitCorruptionHandlingAndExit":Z
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3101
    :try_start_0
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 3102
    const/4 v1, 0x1

    goto :goto_0

    .line 3104
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 3105
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3106
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getMaxConnectionPoolSize()I

    move-result v5

    move v0, v5

    .line 3107
    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->closeAndDiscardNonPrimaryConnections(ZZ)V

    .line 3110
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3111
    if-eqz v1, :cond_4

    .line 3112
    const/4 v2, 0x0

    .line 3113
    .local v2, "tryCount":I
    const-string v3, "SQLiteDatabase"

    const-string v4, "Database corruption is already handling, wait."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    :cond_2
    const-wide/16 v3, 0x1f4

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3119
    goto :goto_1

    .line 3117
    :catch_0
    move-exception v3

    .line 3118
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3120
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    if-nez v3, :cond_3

    .line 3121
    goto :goto_2

    .line 3123
    :cond_3
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x14

    if-lt v2, v3, :cond_2

    .line 3124
    :goto_2
    const-string v3, "SQLiteDatabase"

    const-string v4, "Exit onCorruption."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    return-void

    .line 3129
    .end local v2    # "tryCount":I
    :cond_4
    :try_start_2
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCorruptCode:I

    .line 3130
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mDefaultErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v2, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3131
    const v2, 0x124fc

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3132
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    if-eqz v2, :cond_5

    .line 3133
    invoke-interface {v2, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3136
    :cond_5
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3137
    if-lez v0, :cond_6

    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3138
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSize(I)V

    .line 3140
    :cond_6
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 3141
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z

    .line 3142
    monitor-exit v2

    .line 3143
    nop

    .line 3144
    return-void

    .line 3142
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3136
    :catchall_1
    move-exception v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3137
    if-lez v0, :cond_7

    :try_start_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3138
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSize(I)V

    .line 3140
    :cond_7
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 3141
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z

    .line 3142
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3143
    throw v2

    .line 3142
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 3110
    :catchall_3
    move-exception v3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3
.end method

.method public whitelist query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .line 2140
    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    .line 2178
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "distinct"    # Z
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;

    .line 1972
    const/4 v1, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 12
    .param p1, "distinct"    # Z
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;
    .param p10, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 2013
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;

    .line 2053
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 9
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;
    .param p11, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 2096
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2098
    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    :try_start_0
    invoke-static/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2101
    .local v4, "sql":Ljava/lang/String;
    nop

    .line 2102
    invoke-static {p3}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2101
    move-object v2, p0

    move-object v3, p1

    move-object v5, p6

    move-object/from16 v7, p11

    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2104
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2101
    return-object v0

    .line 2104
    .end local v4    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2105
    throw v0
.end method

.method public whitelist rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 2193
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 2211
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "editTable"    # Ljava/lang/String;

    .line 2229
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "editTable"    # Ljava/lang/String;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 2250
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2252
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;

    invoke-direct {v0, p0, p2, p4, p5}, Landroid/database/sqlite/SQLiteDirectCursorDriver;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 2254
    .local v0, "driver":Landroid/database/sqlite/SQLiteCursorDriver;
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    :goto_0
    invoke-interface {v0, v1, p3}, Landroid/database/sqlite/SQLiteCursorDriver;->query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2257
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2254
    return-object v1

    .line 2257
    .end local v0    # "driver":Landroid/database/sqlite/SQLiteCursorDriver;
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2258
    throw v0
.end method

.method public blacklist reOpen()V
    .locals 2

    .line 3453
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3454
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 3455
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->reOpen()V

    .line 3456
    monitor-exit v0

    .line 3457
    return-void

    .line 3456
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist reopenReadWrite()V
    .locals 4

    .line 1499
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1500
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1502
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1503
    monitor-exit v0

    return-void

    .line 1507
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 1508
    .local v1, "oldOpenFlags":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v3, v3, -0x2

    or-int/lit8 v3, v3, 0x0

    iput v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1511
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1515
    nop

    .line 1516
    .end local v1    # "oldOpenFlags":I
    :try_start_2
    monitor-exit v0

    .line 1517
    return-void

    .line 1512
    .restart local v1    # "oldOpenFlags":I
    :catch_0
    move-exception v2

    .line 1513
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 1514
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    throw v2

    .line 1516
    .end local v1    # "oldOpenFlags":I
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .line 2326
    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 2328
    :catch_0
    move-exception v0

    .line 2329
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error inserting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteDatabase"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2330
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public whitelist replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 2353
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist semIsDatabaseCorrupted()Z
    .locals 2

    .line 739
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 740
    :try_start_0
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z

    monitor-exit v0

    return v1

    .line 741
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setAutomaticIndexEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 4084
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4085
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 4087
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->automaticIndexEnabled:Z

    if-ne v1, p1, :cond_0

    .line 4088
    monitor-exit v0

    return-void

    .line 4091
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-boolean p1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->automaticIndexEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4093
    :try_start_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4097
    nop

    .line 4098
    :try_start_2
    monitor-exit v0

    .line 4099
    return-void

    .line 4094
    :catch_0
    move-exception v1

    .line 4095
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    if-nez p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->automaticIndexEnabled:Z

    .line 4096
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "enable":Z
    throw v1

    .line 4098
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "enable":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist setBusyTimeout(J)V
    .locals 5
    .param p1, "timeout"    # J

    .line 4162
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4163
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 4165
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-wide v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 4166
    monitor-exit v0

    return-void

    .line 4169
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-wide v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J

    .line 4170
    .local v1, "busyTimeout":J
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-wide p1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4172
    :try_start_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4176
    nop

    .line 4177
    .end local v1    # "busyTimeout":J
    :try_start_2
    monitor-exit v0

    .line 4178
    return-void

    .line 4173
    .restart local v1    # "busyTimeout":J
    :catch_0
    move-exception v3

    .line 4174
    .local v3, "ex":Ljava/lang/RuntimeException;
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-wide v1, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J

    .line 4175
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "timeout":J
    throw v3

    .line 4177
    .end local v1    # "busyTimeout":J
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "timeout":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist setCacheSize(I)V
    .locals 4
    .param p1, "size"    # I

    .line 4200
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4201
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 4203
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    if-ne v1, p1, :cond_0

    .line 4204
    monitor-exit v0

    return-void

    .line 4207
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    .line 4208
    .local v1, "cacheSize":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput p1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4210
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4214
    nop

    .line 4215
    .end local v1    # "cacheSize":I
    :try_start_2
    monitor-exit v0

    .line 4216
    return-void

    .line 4211
    .restart local v1    # "cacheSize":I
    :catch_0
    move-exception v2

    .line 4212
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    .line 4213
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "size":I
    throw v2

    .line 4215
    .end local v1    # "cacheSize":I
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist setCaseSensitiveLikeEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 4124
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4125
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 4127
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->caseSensitiveLikeEnabled:Z

    if-ne v1, p1, :cond_0

    .line 4128
    monitor-exit v0

    return-void

    .line 4131
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-boolean p1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->caseSensitiveLikeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4133
    :try_start_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4137
    nop

    .line 4138
    :try_start_2
    monitor-exit v0

    .line 4139
    return-void

    .line 4134
    :catch_0
    move-exception v1

    .line 4135
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    if-nez p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->caseSensitiveLikeEnabled:Z

    .line 4136
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "enable":Z
    throw v1

    .line 4138
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "enable":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist setCheckpointOnClose(Z)V
    .locals 2
    .param p1, "set"    # Z

    .line 3465
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3466
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 3467
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->setCheckpointOnClose(Z)V

    .line 3468
    monitor-exit v0

    .line 3469
    return-void

    .line 3468
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 4257
    if-nez p1, :cond_0

    .line 4258
    return-void

    .line 4261
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4264
    goto :goto_0

    .line 4262
    :catch_0
    move-exception v0

    .line 4263
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mContext:Landroid/content/Context;

    .line 4265
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setCustomAggregateFunction(Ljava/lang/String;Ljava/util/function/BinaryOperator;)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/BinaryOperator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1742
    .local p2, "aggregateFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1746
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1748
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1750
    :try_start_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1754
    nop

    .line 1755
    :try_start_2
    monitor-exit v0

    .line 1756
    return-void

    .line 1751
    :catch_0
    move-exception v1

    .line 1752
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "functionName":Ljava/lang/String;
    .end local p2    # "aggregateFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/lang/String;>;"
    throw v1

    .line 1755
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "functionName":Ljava/lang/String;
    .restart local p2    # "aggregateFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist setCustomScalarFunction(Ljava/lang/String;Ljava/util/function/UnaryOperator;)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1696
    .local p2, "scalarFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1700
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1702
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1704
    :try_start_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1708
    nop

    .line 1709
    :try_start_2
    monitor-exit v0

    .line 1710
    return-void

    .line 1705
    :catch_0
    move-exception v1

    .line 1706
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "functionName":Ljava/lang/String;
    .end local p2    # "scalarFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljava/lang/String;>;"
    throw v1

    .line 1709
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "functionName":Ljava/lang/String;
    .restart local p2    # "scalarFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist setDatabaseIsCorrupted(Z)V
    .locals 2
    .param p1, "result"    # Z

    .line 722
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_0
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z

    .line 724
    monitor-exit v0

    .line 725
    return-void

    .line 724
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setForeignKeyConstraintsEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 2808
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2809
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2811
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-ne v1, p1, :cond_0

    .line 2812
    monitor-exit v0

    return-void

    .line 2815
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-boolean p1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2817
    :try_start_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2821
    nop

    .line 2822
    :try_start_2
    monitor-exit v0

    .line 2823
    return-void

    .line 2818
    :catch_0
    move-exception v1

    .line 2819
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    if-nez p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 2820
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "enable":Z
    throw v1

    .line 2822
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "enable":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist setLocale(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2727
    if-eqz p1, :cond_0

    .line 2731
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2732
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2734
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 2735
    .local v1, "oldLocale":Ljava/util/Locale;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-object p1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2737
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2741
    nop

    .line 2742
    .end local v1    # "oldLocale":Ljava/util/Locale;
    :try_start_2
    monitor-exit v0

    .line 2743
    return-void

    .line 2738
    .restart local v1    # "oldLocale":Ljava/util/Locale;
    :catch_0
    move-exception v2

    .line 2739
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-object v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 2740
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "locale":Ljava/util/Locale;
    throw v2

    .line 2742
    .end local v1    # "oldLocale":Ljava/util/Locale;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2728
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "locale must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLockingEnabled(Z)V
    .locals 0
    .param p1, "lockingEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 667
    return-void
.end method

.method public whitelist setMaxSqlCacheSize(I)V
    .locals 4
    .param p1, "cacheSize"    # I

    .line 2759
    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 2764
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2765
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2767
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 2768
    .local v1, "oldMaxSqlCacheSize":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput p1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2770
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2774
    nop

    .line 2775
    .end local v1    # "oldMaxSqlCacheSize":I
    :try_start_2
    monitor-exit v0

    .line 2776
    return-void

    .line 2771
    .restart local v1    # "oldMaxSqlCacheSize":I
    :catch_0
    move-exception v2

    .line 2772
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 2773
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "cacheSize":I
    throw v2

    .line 2775
    .end local v1    # "oldMaxSqlCacheSize":I
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "cacheSize":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2760
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "expected value between 0 and 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMaximumSize(J)J
    .locals 8
    .param p1, "numBytes"    # J

    .line 1832
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v0

    .line 1833
    .local v0, "pageSize":J
    div-long v2, p1, v0

    .line 1835
    .local v2, "numPages":J
    rem-long v4, p1, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 1836
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 1838
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRAGMA max_page_count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    .line 1840
    .local v4, "newPageCount":J
    mul-long v6, v4, v0

    return-wide v6
.end method

.method public whitelist setPageSize(J)V
    .locals 2
    .param p1, "numBytes"    # J

    .line 1860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA page_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1861
    return-void
.end method

.method public blacklist setReserveSpace()V
    .locals 4

    .line 4282
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4283
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->isMediaStoreDb:Z

    if-nez v1, :cond_0

    .line 4284
    monitor-exit v0

    return-void

    .line 4286
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4288
    :try_start_1
    const-string v0, "PRAGMA wal_reserve_space=10"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 4291
    .local v0, "reservedSpace":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 4292
    const-string v2, "SQLiteDatabase"

    const-string v3, "Failed to set wal reserve size"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4296
    .end local v0    # "reservedSpace":J
    :cond_1
    goto :goto_0

    .line 4294
    :catch_0
    move-exception v0

    .line 4295
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4297
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 4286
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist setSdpDatabase()V
    .locals 2

    .line 1569
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1570
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    if-nez v1, :cond_0

    .line 1571
    new-instance v1, Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-direct {v1, p0}, Landroid/database/sqlite/SQLiteSdpHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    .line 1573
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1574
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSdpHelper;->registerListener()V

    .line 1575
    return-void

    .line 1573
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist setTransactionSuccessful()V
    .locals 1

    .line 993
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 995
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 998
    nop

    .line 999
    return-void

    .line 997
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 998
    throw v0
.end method

.method public whitelist setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .line 1811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA user_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1812
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 3524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteDatabase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist tryWalBackgroundCheckpoint()V
    .locals 4

    .line 4221
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mBackgroundCheckpoint:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;

    if-nez v0, :cond_0

    .line 4222
    return-void

    .line 4224
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4225
    :try_start_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->isConnectionAcquired()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4228
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4229
    :try_start_2
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mBackgroundCheckpoint:Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-wal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;->tryBackgroundCheckpoint(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4232
    goto :goto_1

    .line 4226
    :cond_2
    :goto_0
    :try_start_3
    monitor-exit v0

    return-void

    .line 4228
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 4230
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v0

    .line 4233
    :goto_1
    return-void
.end method

.method public whitelist update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .line 2461
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "conflictAlgorithm"    # I

    .line 2480
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2484
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2486
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2487
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2488
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v1, v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2489
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2490
    const-string v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2493
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v1

    .line 2494
    .local v1, "setValuesSize":I
    if-nez p4, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, p4

    add-int/2addr v2, v1

    .line 2495
    .local v2, "bindArgsSize":I
    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    .line 2496
    .local v3, "bindArgs":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 2497
    .local v4, "i":I
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2498
    .local v6, "colName":Ljava/lang/String;
    if-lez v4, :cond_1

    const-string v7, ","

    goto :goto_2

    :cond_1
    const-string v7, ""

    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2499
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2500
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v4

    .line 2501
    const-string v4, "=?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2502
    move v4, v7

    .end local v6    # "colName":Ljava/lang/String;
    goto :goto_1

    .line 2503
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_2
    if-eqz p4, :cond_3

    .line 2504
    move v4, v1

    :goto_3
    if-ge v4, v2, :cond_3

    .line 2505
    sub-int v5, v4, v1

    aget-object v5, p4, v5

    aput-object v5, v3, v4

    .line 2504
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2508
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2509
    const-string v5, " WHERE "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2510
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2513
    :cond_4
    new-instance v5, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, v3}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2515
    .local v5, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2517
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2520
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2515
    return v6

    .line 2517
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2518
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "values":Landroid/content/ContentValues;
    .end local p3    # "whereClause":Ljava/lang/String;
    .end local p4    # "whereArgs":[Ljava/lang/String;
    .end local p5    # "conflictAlgorithm":I
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2520
    .end local v0    # "sql":Ljava/lang/StringBuilder;
    .end local v1    # "setValuesSize":I
    .end local v2    # "bindArgsSize":I
    .end local v3    # "bindArgs":[Ljava/lang/Object;
    .end local v4    # "i":I
    .end local v5    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "values":Landroid/content/ContentValues;
    .restart local p3    # "whereClause":Ljava/lang/String;
    .restart local p4    # "whereArgs":[Ljava/lang/String;
    .restart local p5    # "conflictAlgorithm":I
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2521
    throw v0

    .line 2481
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist validateSql(Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 2653
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    .line 2654
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v1

    .line 2653
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V

    .line 2655
    return-void
.end method

.method public whitelist yieldIfContended()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1060
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public whitelist yieldIfContendedSafely()Z
    .locals 3

    .line 1073
    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public whitelist yieldIfContendedSafely(J)Z
    .locals 1
    .param p1, "sleepAfterYieldDelay"    # J

    .line 1088
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method
