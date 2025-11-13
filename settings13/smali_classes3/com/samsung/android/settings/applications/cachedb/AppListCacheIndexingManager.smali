.class public Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;
.super Ljava/lang/Object;
.source "AppListCacheIndexingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$AppListCacheIndexingManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppListCacheIndexingManager"

.field private static sAppListCacheIndexingManager:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIndexingFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mWorkerExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndexingFuture(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;)Ljava/util/concurrent/Future;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mIndexingFuture:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetContentValuesFromAppInfo(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;Ljava/lang/CharSequence;Landroid/content/pm/ApplicationInfo;)Landroid/content/ContentValues;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->getContentValuesFromAppInfo(Ljava/lang/CharSequence;Landroid/content/pm/ApplicationInfo;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheThreadFactory;

    invoke-direct {v0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheThreadFactory;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private getContentValuesFromAppInfo(Ljava/lang/CharSequence;Landroid/content/pm/ApplicationInfo;)Landroid/content/ContentValues;
    .locals 3

    const-string p0, "last_updated"

    .line 172
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 173
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 176
    :try_start_0
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 177
    new-instance v1, Ljava/io/File;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;
    .locals 1

    .line 64
    invoke-static {}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$AppListCacheIndexingManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->sAppListCacheIndexingManager:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->init(Landroid/content/Context;)V

    .line 66
    sget-object p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->sAppListCacheIndexingManager:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 79
    iput-object p1, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private loadAppListFromPackageManager()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mIndexingFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mIndexingFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 97
    sget-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->TAG:Ljava/lang/String;

    const-string v1, "loadAppListFromPackageManager Cancel previous indexing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$1;-><init>(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mIndexingFuture:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public deleteAllPackage()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$5;-><init>(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public insertPackage(Ljava/lang/String;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;-><init>(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public startAsyncIndexing()V
    .locals 2

    .line 89
    sget-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->TAG:Ljava/lang/String;

    const-string v1, "## startAsyncIndexing() START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->loadAppListFromPackageManager()V

    return-void
.end method
