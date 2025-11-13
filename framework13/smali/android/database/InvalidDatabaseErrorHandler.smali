.class public Landroid/database/InvalidDatabaseErrorHandler;
.super Landroid/database/ErrorHandler;
.source "InvalidDatabaseErrorHandler.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/database/ErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist diagnoseError(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method blacklist postHandleError(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "deleteDatabase"    # Z

    .line 40
    if-nez p2, :cond_0

    .line 41
    return-void

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DefaultDatabaseErrorHandler;->backupDatabaseFile(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method blacklist preHandleError(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    const/4 v0, 0x1

    return v0
.end method
