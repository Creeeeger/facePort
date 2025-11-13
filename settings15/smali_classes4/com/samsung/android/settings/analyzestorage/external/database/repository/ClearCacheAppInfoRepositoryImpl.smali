.class public final Lcom/samsung/android/settings/analyzestorage/external/database/repository/ClearCacheAppInfoRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/domain/repository/IAppInfoRepository;


# static fields
.field public static volatile sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/ClearCacheAppInfoRepositoryImpl;


# instance fields
.field public final mClearCacheAppDataSource:Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ClearCacheAppInfoRepositoryImpl;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource;

    invoke-direct {p1}, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;-><init>()V

    const-string v0, "ClearCacheAppDataSource"

    iput-object v0, p1, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;->mTag:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ClearCacheAppInfoRepositoryImpl;->mClearCacheAppDataSource:Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource;

    return-void
.end method


# virtual methods
.method public final getAppInfoList()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ClearCacheAppInfoRepositoryImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ClearCacheAppInfoRepositoryImpl;->mClearCacheAppDataSource:Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->needToShowAppCacheList(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;->getTargetAppList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getClearCacheAppInfoList() ] downloadedAppInfoList size : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource;Landroid/app/usage/StorageStatsManager;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/ClearCacheAppDataSource$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/samsung/android/settings/analyzestorage/data/database/repository/comparator/ComparatorFactory;->getAppSortComparator(IZ)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;->mTag:Ljava/lang/String;

    const-string v0, "getClearCacheAppInfoList() ] Do not need to show App Cache List."

    invoke-static {p0, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p0
.end method
