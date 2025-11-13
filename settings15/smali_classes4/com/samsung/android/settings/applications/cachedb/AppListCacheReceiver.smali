.class public Lcom/samsung/android/settings/applications/cachedb/AppListCacheReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo p0, "null"

    if-nez p2, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    const-string/jumbo v1, "onReceive START action : "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "AppListCacheReceiver"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "com.samsung.android.knox.intent.action.PACKAGE_NAME_CHANGE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    const-string p0, "com.samsung.android.knox.intent.extra.REAL_PACAKGE_NAME"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string/jumbo p0, "onReceive package name of knox intent is empty"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    move-result-object p1

    iget-object p2, p1, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;-><init>(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    move-result-object p0

    iget-object p2, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$1;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$1;-><init>(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-static {p1}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->startAsyncIndexing()V

    :goto_2
    const-string/jumbo p0, "onReceive END"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
