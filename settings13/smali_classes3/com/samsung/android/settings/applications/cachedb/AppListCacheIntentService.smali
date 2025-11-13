.class public Lcom/samsung/android/settings/applications/cachedb/AppListCacheIntentService;
.super Landroid/app/IntentService;
.source "AppListCacheIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "AppListCacheIntentService"

    .line 15
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private handleActionRebuildCache()V
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroid/app/IntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->deleteAllPackage()V

    .line 36
    invoke-virtual {p0}, Landroid/app/IntentService;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->startAsyncIndexing()V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 24
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 25
    sget-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppListCacheIntentService() action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.settings.applications.cachedb.action.INITIALIZE"

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIntentService;->handleActionRebuildCache()V

    goto :goto_0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not support action = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p1, "null"

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
