.class Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;
.super Ljava/lang/Object;
.source "AppListCacheIndexingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->insertPackage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    iput-object p2, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    invoke-static {v0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;->val$packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 196
    invoke-static {}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "insertPackage : appInfo is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 200
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    invoke-static {}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "insertPackage : label is empty"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$mgetContentValuesFromAppInfo(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;Ljava/lang/CharSequence;Landroid/content/pm/ApplicationInfo;)Landroid/content/ContentValues;

    move-result-object v0

    .line 207
    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$2;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    invoke-static {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheProviderContract;->URI_APP_LIST:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 208
    invoke-static {}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertPackage() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_2

    const-string p0, "fail"

    goto :goto_0

    :cond_2
    const-string p0, "success"

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
