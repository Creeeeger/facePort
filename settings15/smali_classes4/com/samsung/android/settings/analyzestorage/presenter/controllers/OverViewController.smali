.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;
.super Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CLOUD_ACCOUNT_URI:Landroid/net/Uri;


# instance fields
.field public final UiItemTypeMap:Ljava/util/Map;

.field public final delayHandler:Landroid/os/Handler;

.field public final mCachedFilesChangeListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;

.field public final mCloudContentObserver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$1;

.field public final mExternalSdUsageData:Landroidx/lifecycle/MutableLiveData;

.field public final mGoogleCloudUsageData:Landroidx/lifecycle/MutableLiveData;

.field public final mHandler:Landroid/os/Handler;

.field public final mInternalAppCloneUsageData:Landroidx/lifecycle/MutableLiveData;

.field public final mInternalKnoxUsageData:Landroidx/lifecycle/MutableLiveData;

.field public final mInternalSecureFolderUsageData:Landroidx/lifecycle/MutableLiveData;

.field public final mInternalUsageData:Landroidx/lifecycle/MutableLiveData;

.field public final mIsLoading:Ljava/util/Map;

.field public final mIsLoadingData:Landroidx/lifecycle/MutableLiveData;

.field public final mMenuDirector:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;

.field public final mOneDriveUsageData:Landroidx/lifecycle/MutableLiveData;

.field public final mQuotaStorageList:Landroidx/lifecycle/MutableLiveData;

.field public final mStorageChangeListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;

.field public final mStorageUsedSize:Landroidx/lifecycle/MutableLiveData;

.field public final mSupportedStorageList:Ljava/util/ArrayList;

.field public final mTrashChangeListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://myfiles"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cloud_account_info"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->CLOUD_ACCOUNT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;-><init>(Landroid/content/Context;I)V

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mStorageUsedSize:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mInternalUsageData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mExternalSdUsageData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mInternalAppCloneUsageData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mInternalKnoxUsageData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mInternalSecureFolderUsageData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mGoogleCloudUsageData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mOneDriveUsageData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoadingData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoading:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->UiItemTypeMap:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mSupportedStorageList:Ljava/util/ArrayList;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mQuotaStorageList:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mStorageChangeListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mCloudContentObserver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$1;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mTrashChangeListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mCachedFilesChangeListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->delayHandler:Landroid/os/Handler;

    new-instance p1, Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mHandler:Landroid/os/Handler;

    const-string p1, "OverViewController"

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mMenuDirector:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;

    return-void
.end method


# virtual methods
.method public final checkSupportedStorageList()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mSupportedStorageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    const-string v1, "from_usage_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v4, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mSupportedStorageList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    const-string v4, "from_usage_type"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x4

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mSupportedStorageList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mSupportedStorageList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->connected(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mSupportedStorageList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->mounted(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mSupportedStorageList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-nez v0, :cond_6

    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-nez v2, :cond_5

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v3, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->accountInfoMap:Ljava/util/Map;

    sput-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_5
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0

    throw p0

    :cond_6
    :goto_3
    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CloudUtils$Companion;->isSupportCloud(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->getCloudInfoByProviderQueryWithContentObserver()V

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->values()[Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion$realCloudList$1;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion$realCloudList$1;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "collect(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_7
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    monitor-enter v2

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoading:Ljava/util/Map;

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;Ljava/util/ArrayList;)V

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda11;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoadingData:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoading:Ljava/util/Map;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-nez v3, :cond_9

    const-class v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-nez v4, :cond_8

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/EnumMap;

    const-class v6, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v5, v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->accountInfoMap:Ljava/util/Map;

    sput-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_8
    :goto_5
    :try_start_3
    monitor-exit v3

    goto :goto_7

    :goto_6
    monitor-exit v3

    throw p0

    :cond_9
    :goto_7
    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mSupportedStorageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;->fromDomainType(I)Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->NONE:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    if-eq v7, v8, :cond_b

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->isSignedIn(Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_9

    :catchall_2
    move-exception p0

    goto :goto_a

    :cond_b
    :goto_9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v7, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoading:Ljava/util/Map;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0, v6, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->setIsLoading(IZ)V

    goto :goto_8

    :cond_d
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mQuotaStorageList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :goto_a
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final createCloudDetail(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 11

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    new-array v1, v1, [J

    const/4 v4, 0x0

    aput-wide v7, v1, v4

    const/4 v7, 0x1

    aput-wide v9, v1, v7

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->totalSize:J

    iput-wide v5, v0, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->usedSize:J

    iput-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->additionalUsageInfo:[J

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-nez v5, :cond_1

    const-class v5, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    monitor-enter v5

    :try_start_0
    sget-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-nez v6, :cond_0

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/EnumMap;

    const-class v9, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    invoke-direct {v8, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v8, v6, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->accountInfoMap:Ljava/util/Map;

    sput-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v5

    goto :goto_2

    :goto_1
    monitor-exit v5

    throw p0

    :cond_1
    :goto_2
    sget-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v7, "cloudType"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v4, v6, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->cloudType:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    iput-object p1, v6, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->accountId:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->quotaInfo:Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v5, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->accountInfoMap:Ljava/util/Map;

    invoke-interface {p1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1, v4, v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->formatCloudDetailData([JLcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;J)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final formatCloudDetailData([JLcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;J)Ljava/util/ArrayList;
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_5

    array-length v0, v2

    if-eqz v0, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "myfiles"

    const-string v6, "CLOUD_QUOTA_DETAIL"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "ContentResolverWrapper"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    if-eqz v8, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->values()[Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    move-result-object v6

    array-length v7, v6

    move v8, v0

    move v9, v8

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v10, v6, v8

    sget-object v11, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->NONE:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    if-eq v10, v11, :cond_1

    sget-object v11, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->DOWNLOADS:Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;

    if-ne v10, v11, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v10}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/CategoryType;->getOverViewItem()Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    move-result-object v10

    iget-object v11, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getUsageDetailDataByCloudCategory() ] - usage detail data : ("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v13, v5, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;

    add-int/lit8 v12, v9, 0x1

    aget-wide v13, v5, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v11, v10, v9}, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;Ljava/lang/Long;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v12

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    aget-wide v0, v2, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda14;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda15;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->OTHER_FILES:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_3

    const-wide/high16 v0, -0x8000000000000000L

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;Ljava/lang/Long;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->GOOGLE_DRIVE:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    move-object/from16 v1, p2

    if-ne v1, v0, :cond_4

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->GOOGLE_APPS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const/4 v4, 0x1

    aget-wide v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;Ljava/lang/Long;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v0, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->TOTAL:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;Ljava/lang/Long;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v3
.end method

.method public final getCloudInfoByProviderQueryWithContentObserver()V
    .locals 6

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

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->accountInfoMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->CLOUD_ACCOUNT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCloudInfoByProviderQueryWithContentObserver() ] - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->getEncodedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->getValue()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->createCloudDetail(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->updateUsageData(ILjava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public final getUsageDetailData(I)Landroidx/lifecycle/MutableLiveData;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUsageDetailData() - domainType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mOneDriveUsageData:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mGoogleCloudUsageData:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mInternalSecureFolderUsageData:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mInternalKnoxUsageData:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mInternalAppCloneUsageData:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mExternalSdUsageData:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mInternalUsageData:Landroidx/lifecycle/MutableLiveData;

    :goto_0
    return-object p0
.end method

.method public final onCleared()V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->sInstanceMap:Landroid/util/SparseArray;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_MOUNTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mStorageChangeListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->removeDynamicListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_UNMOUNTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->removeDynamicListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_EJECTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->removeDynamicListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->TRASH_CHANGED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mTrashChangeListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->removeListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->CACHED_FILES_CHANGED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mCachedFilesChangeListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->removeListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "removeCloudListener"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mCloudContentObserver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->onCleared()V

    return-void
.end method

.method public final onCreate(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V
    .locals 4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->sInstanceMap:Landroid/util/SparseArray;

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_MOUNTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mStorageChangeListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->addDynamicListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_UNMOUNTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->addDynamicListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_EJECTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->addDynamicListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->TRASH_CHANGED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iget-object v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->mListenerMap:Ljava/util/Map;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mTrashChangeListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->CACHED_FILES_CHANGED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->mListenerMap:Ljava/util/Map;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mCachedFilesChangeListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    const-string v1, "addCloudListener"

    invoke-static {p1, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->CLOUD_ACCOUNT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mCloudContentObserver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$1;

    invoke-virtual {p1, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final setIsLoading(IZ)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoading:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoading:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoading:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoading:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoading:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->delayHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda16;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;II)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoadingData:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoading:Ljava/util/Map;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateUsageData(ILjava/util/ArrayList;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateUsageData() ] domainType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->getUsageDetailData(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->setIsLoading(IZ)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda11;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->UiItemTypeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final updateUsageInfo(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateUsageInfo() ] needDetails : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isTrashChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;Z)V

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/domain/thread/ThreadExecutor;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method
