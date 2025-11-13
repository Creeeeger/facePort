.class public Landroid/database/InvalidDatabaseErrorHandler;
.super Landroid/database/ErrorHandler;
.source "InvalidDatabaseErrorHandler.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/database/ErrorHandler;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/database/sqlite/SQLiteDump;)V
    .locals 0

    invoke-direct {p0}, Landroid/database/ErrorHandler;-><init>()V

    iput-object p1, p0, Landroid/database/InvalidDatabaseErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    return-void
.end method


# virtual methods
.method blacklist diagnoseError(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method blacklist postHandleError(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/database/InvalidDatabaseErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ Back up corrupted DB File : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ErrorHandler"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDump;->addDumpLog(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DefaultDatabaseErrorHandler;->backupDatabaseFile(Ljava/lang/String;)V

    return-void
.end method

.method blacklist preHandleError(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
