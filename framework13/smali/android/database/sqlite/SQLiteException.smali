.class public Landroid/database/sqlite/SQLiteException;
.super Landroid/database/SQLException;
.source "SQLiteException.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/database/SQLException;-><init>()V

    .line 27
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method private static blacklist waitIfDeviceOnShutdown()V
    .locals 3

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 39
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->isDeviceOnShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    :try_start_0
    const-string/jumbo v1, "waitIfOnShutdown"

    const-string/jumbo v2, "shutdown process is ongoing...freezing for a second."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_1

    .line 43
    :catch_0
    move-exception v1

    .line 38
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected blacklist parseCode(ILjava/lang/String;)I
    .locals 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 52
    if-eqz p2, :cond_1

    .line 55
    :try_start_0
    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "startIndex":I
    if-lez v0, :cond_0

    const-string v0, "])"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    .local v2, "endIndex":I
    if-lez v0, :cond_0

    .line 56
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "errString":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v3

    .line 61
    .end local v0    # "errString":Ljava/lang/String;
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :cond_0
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 63
    :cond_1
    :goto_0
    return p1
.end method
