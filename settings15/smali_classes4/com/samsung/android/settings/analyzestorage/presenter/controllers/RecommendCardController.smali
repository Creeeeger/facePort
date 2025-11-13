.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;
.super Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final CLOUD_ACCOUNT_URI:Landroid/net/Uri;

.field public final archiveAppNameList:Ljava/util/ArrayList;

.field public final bucketIdCard:Ljava/util/HashMap;

.field public chooseAccountListener:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

.field public final fileSizeCard:Ljava/util/HashMap;

.field public final fileTypeCard:Ljava/util/HashMap;

.field public final isLoading:Landroidx/lifecycle/MutableLiveData;

.field public final nameCard:Ljava/util/HashMap;

.field public numberApps:I

.field public final pathCard:Ljava/util/HashMap;

.field public final recommendCardState:Landroidx/lifecycle/MutableLiveData;

.field public supportedRecommendCardListTemp:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;-><init>(Landroid/content/Context;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->recommendCardState:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->fileSizeCard:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->pathCard:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->fileTypeCard:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->nameCard:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->bucketIdCard:Ljava/util/HashMap;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->isLoading:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->archiveAppNameList:Ljava/util/ArrayList;

    const-string p1, "content://myfiles"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "cloud_account_info"

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->CLOUD_ACCOUNT_URI:Landroid/net/Uri;

    const-string p1, "RecommendCardController"

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCloudStatus()V
    .locals 8

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->accountInfoMap:Ljava/util/Map;

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    const-string v2, "mContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CloudUtils$Companion;->isSupportCloud(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    const-string v2, "mContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    const-string v3, "calling_package"

    const-string v4, "com.android.settings"

    invoke-static {v3, v4}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "myfiles"

    const-string v6, "GET_VISIBILITY_HOME_CLOUD"

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7, v3}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v3, "visibilityHomeCloud"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_7

    :cond_2
    :goto_3
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, v7

    if-nez v1, :cond_3

    move v1, v4

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_4
    xor-int/2addr v1, v4

    if-eqz v1, :cond_7

    array-length v1, v7

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_5

    new-instance v1, Ljava/util/LinkedHashSet;

    array-length v3, v7

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    array-length v3, v7

    :goto_5
    if-ge v5, v3, :cond_4

    aget v6, v7, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    :goto_6
    move-object v2, v1

    goto :goto_8

    :cond_5
    aget v1, v7, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    goto :goto_6

    :cond_6
    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :goto_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_8
    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/domain/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-le v3, v4, :cond_a

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->values()[Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion$realCloudList$1;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion$realCloudList$1;

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "collect(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    invoke-virtual {v5}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->isSignedIn(Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_a

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->cloudList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method public final getTopInstalledAppSize()V
    .locals 5

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->appsDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataInterface$AppData;->TOTAL:Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataInterface$AppData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->getAppsSize(Landroid/content/Context;)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTopInstalledApp() ] load app size time = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppDataManager"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->appsDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$getTopInstalledApp$$inlined$sortedByDescending$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$AppDataInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager$AppDataInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->appList:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final onCleared()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->onCleared()V

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager$Companion;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;

    const/4 p0, 0x0

    sput-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->cloudList:Ljava/util/ArrayList;

    sput-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->appList:Ljava/util/ArrayList;

    return-void
.end method

.method public final removeCard(I)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeCard - cardType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;

    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;-><init>(ILjava/util/ArrayList;III)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->recommendCardState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/ExtensionFunctionsKt;->updateValue(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->supportedCardList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeCard - mSupportedRecommendCardList size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setLoadingData$1(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setLoadingData()] value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->isLoading:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/ExtensionFunctionsKt;->updateValue(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method public final updateOnlyCard(I)V
    .locals 7

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->CLOUD_ACCOUNT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->getEncodedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAccountStatusByProviderQueryWithContentObserver() ] account : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :cond_3
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    :goto_2
    return-void

    :cond_5
    :goto_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->setLoadingData$1(Z)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;

    invoke-direct {v3, p0, p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateOnlyCard$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;ILkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v2, v3, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final updateSupportedRecommendCardList()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->setLoadingData$1(Z)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
