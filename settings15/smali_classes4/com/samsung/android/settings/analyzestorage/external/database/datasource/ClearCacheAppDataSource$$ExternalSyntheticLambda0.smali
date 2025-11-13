.class public final synthetic Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource;

.field public final synthetic f$1:Landroid/app/usage/StorageStatsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource;Landroid/app/usage/StorageStatsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource$$ExternalSyntheticLambda0;->f$1:Landroid/app/usage/StorageStatsManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource$$ExternalSyntheticLambda0;->f$1:Landroid/app/usage/StorageStatsManager;

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/data/model/ClearCacheAppInfo;

    invoke-direct {v0}, Lcom/samsung/android/settings/analyzestorage/data/model/ClearCacheAppInfo;-><init>()V

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->setPackageName(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/util/UUID;I)Landroid/app/usage/StorageStats;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPackageCacheSize()] Exception e : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n - Package Name : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageManageHelper"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->setSize(J)V

    return-object v0
.end method
