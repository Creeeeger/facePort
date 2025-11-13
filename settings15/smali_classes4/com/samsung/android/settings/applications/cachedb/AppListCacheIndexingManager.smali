.class public final Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sAppListCacheIndexingManager:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIndexingFuture:Ljava/util/concurrent/Future;

.field public mWorkerExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static -$$Nest$mgetContentValuesFromAppInfo(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;Ljava/lang/CharSequence;Landroid/content/pm/ApplicationInfo;)Landroid/content/ContentValues;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "last_updated"

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_title"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$AppListCacheIndexingManagerHolder;->INSTANCE:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    sput-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->sAppListCacheIndexingManager:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iget-object v1, v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    iput-object p0, v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mContext:Landroid/content/Context;

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->sAppListCacheIndexingManager:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    return-object p0
.end method


# virtual methods
.method public final startAsyncIndexing()V
    .locals 3

    const-string v0, "## startAsyncIndexing() START"

    const-string v1, "AppListCacheIndexingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mIndexingFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mIndexingFuture:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string v0, "loadAppListFromPackageManager Cancel previous indexing"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$1;-><init>(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mIndexingFuture:Ljava/util/concurrent/Future;

    return-void
.end method
