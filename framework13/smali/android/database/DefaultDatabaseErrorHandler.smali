.class public final Landroid/database/DefaultDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "DefaultDatabaseErrorHandler.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# static fields
.field private static final blacklist CORRUPT_SUFFIX:Ljava/lang/String; = ".corrupt"

.field private static final blacklist DATABASE_SUFFIX:[Ljava/lang/String;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DefaultDatabaseErrorHandler"


# instance fields
.field private blacklist mDeleteDatabaseIfCorrupted:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 42
    const-string v0, ""

    const-string v1, "-journal"

    const-string v2, "-shm"

    const-string v3, "-wal"

    const-string v4, "-se"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/database/DefaultDatabaseErrorHandler;->DATABASE_SUFFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/DefaultDatabaseErrorHandler;->mDeleteDatabaseIfCorrupted:Z

    return-void
.end method

.method public static blacklist backupDatabaseFile(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@ Back up corrupted DB File : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDatabaseErrorHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".corrupt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabaseFile(Ljava/lang/String;)Z

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->renameDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private blacklist getErrorHandler(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/ErrorHandler;
    .locals 2
    .param p1, "dbObj"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 79
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "path":Ljava/lang/String;
    const-string v1, ":memory:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    new-instance v1, Landroid/database/InvalidDatabaseErrorHandler;

    invoke-direct {v1}, Landroid/database/InvalidDatabaseErrorHandler;-><init>()V

    return-object v1

    .line 85
    :cond_1
    new-instance v1, Landroid/database/CorruptDatabaseErrorHandler;

    invoke-direct {v1}, Landroid/database/CorruptDatabaseErrorHandler;-><init>()V

    return-object v1

    .line 81
    :cond_2
    :goto_0
    new-instance v1, Landroid/database/DummyDatabaseErrorHandler;

    invoke-direct {v1}, Landroid/database/DummyDatabaseErrorHandler;-><init>()V

    return-object v1
.end method


# virtual methods
.method public whitelist onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "dbObj"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Corruption reported by sqlite on database: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDatabaseErrorHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "corruption"

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->wipeDetected(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1}, Landroid/database/DefaultDatabaseErrorHandler;->getErrorHandler(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/ErrorHandler;

    move-result-object v0

    .line 71
    .local v0, "errorHandler":Landroid/database/ErrorHandler;
    iget-boolean v2, p0, Landroid/database/DefaultDatabaseErrorHandler;->mDeleteDatabaseIfCorrupted:Z

    if-nez v2, :cond_0

    .line 72
    const-string v2, "This application uses own corruption handler."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-boolean v1, p0, Landroid/database/DefaultDatabaseErrorHandler;->mDeleteDatabaseIfCorrupted:Z

    invoke-virtual {v0, p1, v1}, Landroid/database/ErrorHandler;->handleError(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 76
    return-void
.end method

.method public blacklist setDeleteDatabaseIfCorrupted(Z)V
    .locals 0
    .param p1, "deleteDatabaseIfCorrupted"    # Z

    .line 58
    iput-boolean p1, p0, Landroid/database/DefaultDatabaseErrorHandler;->mDeleteDatabaseIfCorrupted:Z

    .line 59
    return-void
.end method
