.class Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$5;
.super Ljava/lang/Object;
.source "AppListCacheIndexingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->deleteAllPackage()V
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

    .line 261
    iput-object p1, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$5;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$5;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    invoke-static {v0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "deletePackageAll : context or packageName is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 270
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager$5;->this$0:Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;

    invoke-static {p0}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheProviderContract;->URI_APP_LIST:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 271
    invoke-static {}, Lcom/samsung/android/settings/applications/cachedb/AppListCacheIndexingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePackageAll : rowCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 273
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
