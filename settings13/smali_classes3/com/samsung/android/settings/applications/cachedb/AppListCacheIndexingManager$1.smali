.class Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$1;
.super Ljava/lang/Object;
.source "AppListCacheIndexingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->loadAppListFromPackageManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$1;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 105
    invoke-static {}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "loadAppListFromPackageManager START LOADING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$1;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    invoke-static {v2}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0x808200

    .line 107
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 115
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 127
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 128
    iget-object v7, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$1;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    invoke-static {v7}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$fgetmIndexingFuture(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;)Ljava/util/concurrent/Future;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 129
    invoke-static {}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "loadAppListFromPackageManager cancel()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_0
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_1

    .line 135
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 136
    invoke-static {}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadAppListFromPackageManager hideAppList : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is skipped for app list cache"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v6, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 141
    iget-object v8, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$1;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    invoke-static {v8, v7, v6}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$mgetContentValuesFromAppInfo(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;Ljava/lang/CharSequence;Landroid/content/pm/ApplicationInfo;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    invoke-static {}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bulkInsertPackage : contentValuesList is empty"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 150
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAppListFromPackageManager : build count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    .line 152
    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    .line 154
    array-length v3, v2

    if-nez v3, :cond_4

    .line 155
    invoke-static {}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "loadAppListFromPackageManager : contentValuesArray is empty"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 160
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$1;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    invoke-static {v3}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheProviderContract;->URI_APP_LIST:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    .line 161
    invoke-static {}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAppListFromPackageManager : insert count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 163
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$1;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    invoke-static {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheManager;->updateLocale(Landroid/content/Context;)V

    .line 166
    invoke-static {}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppListFromPackageManager FINISH LOADING took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
