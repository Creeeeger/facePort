.class public final Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sContext:Landroid/content/Context;


# direct methods
.method public static getAppRepository(Ljava/lang/Object;)Lcom/samsung/android/settings/analyzestorage/domain/repository/IAppInfoRepository;
    .locals 3

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_UNUSED_APPS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;->sContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/external/database/ManageStorageDatabase;->unusedAppBnRInfoDao()Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;

    if-nez v1, :cond_1

    const-class v1, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;)V

    sput-object v2, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;

    return-object p0

    :cond_2
    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;->sContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ClearCacheAppInfoRepositoryImpl;->sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/ClearCacheAppInfoRepositoryImpl;

    if-nez v0, :cond_4

    const-class v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;

    monitor-enter v0

    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ClearCacheAppInfoRepositoryImpl;->sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/ClearCacheAppInfoRepositoryImpl;

    if-nez v1, :cond_3

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ClearCacheAppInfoRepositoryImpl;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ClearCacheAppInfoRepositoryImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ClearCacheAppInfoRepositoryImpl;->sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/ClearCacheAppInfoRepositoryImpl;

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_3
    monitor-exit v0

    goto :goto_5

    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_4
    :goto_5
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ClearCacheAppInfoRepositoryImpl;->sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/ClearCacheAppInfoRepositoryImpl;

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method
