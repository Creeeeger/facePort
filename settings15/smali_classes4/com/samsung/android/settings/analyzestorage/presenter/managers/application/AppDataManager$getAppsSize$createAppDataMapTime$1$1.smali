.class public final Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getAppsSize$createAppDataMapTime$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# instance fields
.field public final synthetic $appsData:Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/TotalAppsData;

.field public final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/TotalAppsData;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getAppsSize$createAppDataMapTime$1$1;->$appsData:Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/TotalAppsData;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getAppsSize$createAppDataMapTime$1$1;->$context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 12

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->appsDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getAppsSize$createAppDataMapTime$1$1;->$appsData:Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/TotalAppsData;

    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getAppsSize$createAppDataMapTime$1$1;->$context:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "context"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$AppDataInfo;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-string v5, ""

    iput-object v5, v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$AppDataInfo;->packageName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iput-wide v5, v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$AppDataInfo;->packageSize:J

    iput-wide v5, v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$AppDataInfo;->size:J

    iput-wide v5, v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$AppDataInfo;->cache:J

    :try_start_0
    const-string/jumbo v7, "storagestats"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v7, "null cannot be cast to non-null type android.app.usage.StorageStatsManager"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/app/usage/StorageStatsManager;

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iget v8, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v7, v8}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/util/UUID;I)Landroid/app/usage/StorageStats;

    move-result-object v7

    const-string/jumbo v8, "queryStatsForUid(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iget-object v9, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v4, v8, v9, v10}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v4

    const-string/jumbo v8, "queryStatsForPackage(...)"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v8

    iget-wide v10, v7, Landroid/app/usage/StorageStats;->dataBytes:J

    add-long/2addr v8, v10

    iput-wide v8, v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$AppDataInfo;->size:J

    cmp-long v8, v8, v5

    if-lez v8, :cond_0

    iget-wide v5, v7, Landroid/app/usage/StorageStats;->cacheBytes:J

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v5, v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$AppDataInfo;->cache:J

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$AppDataInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v5

    iget-wide v7, v4, Landroid/app/usage/StorageStats;->dataBytes:J

    add-long/2addr v5, v7

    iput-wide v5, v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$AppDataInfo;->packageSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    :goto_2
    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getAppsSize$createAppDataMapTime$1$1;->$appsData:Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/TotalAppsData;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->appsDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$AppDataInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_2

    iget-wide p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$AppDataInfo;->size:J

    goto :goto_3

    :cond_2
    const-wide/16 p0, 0x0

    :goto_3
    return-wide p0
.end method
