.class public final Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    iput-object p2, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;->val$packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "insertPackage() "

    iget-object v1, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    iget-object v1, v1, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;->val$packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "AppListCacheIndexingManager"

    if-nez v2, :cond_0

    :try_start_1
    const-string p0, "insertPackage : appInfo is null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "insertPackage : label is empty"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    invoke-static {v4, v1, v2}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$mgetContentValuesFromAppInfo(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;Ljava/lang/CharSequence;Landroid/content/pm/ApplicationInfo;)Landroid/content/ContentValues;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheProviderContract;->URI_APP_LIST:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "fail"

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "success"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
