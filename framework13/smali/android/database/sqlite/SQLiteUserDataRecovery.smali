.class public final Landroid/database/sqlite/SQLiteUserDataRecovery;
.super Ljava/lang/Object;
.source "SQLiteUserDataRecovery.java"


# static fields
.field private static final blacklist RECOVERY_POSTFIX:Ljava/lang/String; = "-recover"

.field private static final blacklist SQLITE_UDR_DUPLICATE:I = 0x300

.field public static final blacklist TAG:Ljava/lang/String; = "SQLiteUDR"


# instance fields
.field private blacklist isWorking:Z

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->isWorking:Z

    return-void
.end method

.method private blacklist doRecoveryInner(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "password"    # [B
    .param p3, "locale"    # Ljava/lang/String;

    .line 45
    const-string v0, "SQLiteUDR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-recover"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "recoverPath":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v1, p2, p3}, Landroid/database/sqlite/SQLiteUserDataRecovery;->nativeDoRecovery(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I

    move-result v3

    .line 48
    .local v3, "rc":I
    if-nez v3, :cond_0

    .line 50
    invoke-static {p1}, Landroid/database/DefaultDatabaseErrorHandler;->backupDatabaseFile(Ljava/lang/String;)V

    .line 52
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v4, "recoverdb":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v5, "db":Ljava/io/File;
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0

    .line 55
    .end local v4    # "recoverdb":Ljava/io/File;
    .end local v5    # "db":Ljava/io/File;
    :cond_0
    const/16 v4, 0x300

    if-ne v3, v4, :cond_1

    .line 56
    const-string v4, "Another udr is worked."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_1
    return v2

    .line 61
    .end local v3    # "rc":I
    :catch_0
    move-exception v3

    .line 62
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v4, 0x3

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    const-string v4, "Failed to recover database."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 66
    :cond_2
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabaseFile(Ljava/lang/String;)Z

    .line 68
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    return v2
.end method

.method public static blacklist isDbUdrRecovered(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 93
    if-eqz p0, :cond_0

    .line 94
    const-string v0, ":memory:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-static {p0}, Landroid/database/sqlite/SQLiteUserDataRecovery;->nativeIsDbUdrRecovered(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static native blacklist nativeDoRecovery(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I
.end method

.method private static native blacklist nativeIsDbUdrRecovered(Ljava/lang/String;)Z
.end method


# virtual methods
.method public blacklist doRecovery(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "password"    # [B
    .param p3, "locale"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, ":memory:"

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->isWorking:Z

    if-eqz v2, :cond_1

    .line 78
    monitor-exit v1

    return v0

    .line 80
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->isWorking:Z

    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 84
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteUserDataRecovery;->doRecoveryInner(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    iget-object v2, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 87
    :try_start_2
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->isWorking:Z

    .line 88
    monitor-exit v2

    .line 84
    return v1

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 86
    :catchall_1
    move-exception v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 87
    :try_start_3
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->isWorking:Z

    .line 88
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 89
    throw v1

    .line 88
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 81
    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 74
    :cond_2
    :goto_0
    return v0
.end method
