.class public abstract Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$AppListCacheIndexingManagerHolder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/applications/cachedb/AppListCacheThreadFactory;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$AppListCacheIndexingManagerHolder;->INSTANCE:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    return-void
.end method
