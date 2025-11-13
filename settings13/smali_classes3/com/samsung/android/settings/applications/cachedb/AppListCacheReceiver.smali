.class public Lcom/samsung/android/settings/applications/cachedb/AppListCacheReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppListCacheReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p0, "null"

    if-nez p2, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_0
    sget-object v1, Lcom/samsung/android/settings/applications/cachedb/AppListCacheReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive START action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 40
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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

    .line 42
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p0, "onReceive package name of knox intent is empty"

    .line 44
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 47
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->insertPackage(Ljava/lang/String;)V

    goto :goto_2

    .line 50
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->deleteAllPackage()V

    .line 51
    invoke-static {p1}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->startAsyncIndexing()V

    :goto_2
    const-string p0, "onReceive END"

    .line 54
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
