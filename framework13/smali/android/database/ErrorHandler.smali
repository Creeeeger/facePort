.class public abstract Landroid/database/ErrorHandler;
.super Ljava/lang/Object;
.source "ErrorHandler.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ErrorHandler"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist diagnoseError(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->diagnoseError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "ErrorHandler"

    const-string v1, "!@ Diagnose Succeed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist handleError(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "deleteDatabase"    # Z

    .line 33
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/ErrorHandler;->preHandleError(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Landroid/database/ErrorHandler;->diagnoseError(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0, p1}, Landroid/database/ErrorHandler;->recoverError(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    return-void

    .line 39
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setDatabaseIsCorrupted(Z)V

    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/database/ErrorHandler;->postHandleError(Landroid/database/sqlite/SQLiteDatabase;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ErrorHandler"

    const-string v2, "!@ Exception in error handling"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method blacklist postHandleError(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "deleteDatabase"    # Z

    .line 92
    return-void
.end method

.method abstract blacklist preHandleError(Landroid/database/sqlite/SQLiteDatabase;)Z
.end method

.method blacklist recoverError(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->doRecovery()Z

    move-result v0

    const-string v1, "ErrorHandler"

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "!@ Recovery Succeed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x1

    return v0

    .line 80
    :cond_0
    const-string v0, "!@ Recovery Failed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x0

    return v0
.end method
