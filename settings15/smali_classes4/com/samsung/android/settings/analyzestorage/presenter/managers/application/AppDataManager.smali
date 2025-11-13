.class public abstract Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static applicationInfo:Ljava/util/List;

.field public static final appsDataMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public static lastCalculatedAppCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->appsDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->applicationInfo:Ljava/util/List;

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->lastCalculatedAppCount:I

    return-void
.end method

.method public static getAppsSize(Landroid/content/Context;)J
    .locals 8

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataInterface$AppData;->TOTAL:Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataInterface$AppData;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/TotalAppsData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->applicationInfo:Ljava/util/List;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v3, 0x2680

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->applicationInfo:Ljava/util/List;

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->applicationInfo:Ljava/util/List;

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->applicationInfo:Ljava/util/List;

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getAppsSize$filteredList$1;

    invoke-direct {v3, v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getAppsSize$filteredList$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/TotalAppsData;Landroid/content/pm/PackageManager;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataInterface$AppData;->TOTAL:Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataInterface$AppData;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->lastCalculatedAppCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1}, Ljava/util/List;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getAppsSize$createAppDataMapTime$1$1;

    invoke-direct {v4, v0, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getAppsSize$createAppDataMapTime$1$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/TotalAppsData;Landroid/content/Context;)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->applicationInfo:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    sget v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->lastCalculatedAppCount:I

    const-string v3, "getAppsSize() ] applicationInfo.size = "

    const-string v6, ", lastCalculatedAppCount = "

    const-string v7, ", createAppDataMapTime = "

    invoke-static {v3, v6, p0, v2, v7}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "AppDataManager"

    invoke-static {v2, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method
