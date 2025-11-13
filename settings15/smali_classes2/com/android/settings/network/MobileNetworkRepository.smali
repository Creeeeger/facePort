.class public final Lcom/android/settings/network/MobileNetworkRepository;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEBUG:Z

.field public static final sCacheMobileNetworkInfoEntityMap:Ljava/util/Map;

.field public static final sCacheSubscriptionInfoEntityMap:Ljava/util/Map;

.field public static final sCacheUiccInfoEntityMap:Ljava/util/Map;

.field public static final sCallbacks:Ljava/util/Collection;

.field public static final sExecutor:Ljava/util/concurrent/ExecutorService;

.field public static sInstance:Lcom/android/settings/network/MobileNetworkRepository;

.field public static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field public mActiveSubInfoEntityList:Ljava/util/List;

.field public final mAirplaneModeObserver:Lcom/android/settings/network/MobileNetworkRepository$AirplaneModeObserver;

.field public mAvailableSubInfoEntityList:Ljava/util/List;

.field public mCardId:I

.field public mCardState:I

.field public final mContext:Landroid/content/Context;

.field public final mDataRoamingObserver:Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;

.field public mIsActive:Z

.field public mIsEuicc:Z

.field public mIsRemovable:Z

.field public mLogicalSlotIndex:I

.field public final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field public final mMobileNetworkDatabase:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

.field public final mMobileNetworkInfoDao:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

.field public mMobileNetworkInfoEntityList:Ljava/util/List;

.field public mPhysicalSlotIndex:I

.field public mPortIndex:I

.field public final mSubscriptionInfoDao:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

.field public final mSubscriptionInfoMap:Ljava/util/Map;

.field public final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final mTelephonyCallbackMap:Ljava/util/Map;

.field public final mTelephonyManagerMap:Ljava/util/Map;

.field public mUiccInfoEntityList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MobileNetworkRepository"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/network/MobileNetworkRepository;->DEBUG:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sCacheSubscriptionInfoEntityMap:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sCacheMobileNetworkInfoEntityMap:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sCacheUiccInfoEntityMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sCallbacks:Ljava/util/Collection;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mAvailableSubInfoEntityList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mActiveSubInfoEntityList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mUiccInfoEntityList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mMobileNetworkInfoEntityList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mPhysicalSlotIndex:I

    iput v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mLogicalSlotIndex:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mCardState:I

    iput v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mPortIndex:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mCardId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mIsEuicc:Z

    iput-boolean v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mIsRemovable:Z

    iput-boolean v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mIsActive:Z

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/network/MobileNetworkRepository;->mSubscriptionInfoMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/network/MobileNetworkRepository;->mTelephonyManagerMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/network/MobileNetworkRepository;->mTelephonyCallbackMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->sLOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->sInstance:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

    invoke-static {v3}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "MobileNetworkDatabase"

    const-string v4, "createDatabase."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v3, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

    const-string v4, "context"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroidx/room/RoomDatabase$Builder;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v3, v5}, Landroidx/room/RoomDatabase$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    iput-boolean v0, v4, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    iput-boolean v1, v4, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    iget-object v1, v4, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v5, Landroid/content/Intent;

    iget-object v1, v4, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    const-class v3, Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {v5, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    iput-object v5, v4, Landroidx/room/RoomDatabase$Builder;->multiInstanceInvalidationIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

    sput-object v1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->sInstance:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->sInstance:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

    iput-object v1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mMobileNetworkDatabase:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

    sget-object v2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/MobileNetworkRepository;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    const/16 v3, 0x7ac

    new-array v0, v0, [Landroid/util/Pair;

    invoke-virtual {v2, p1, v3, v0}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->mSubscriptionInfoDao()Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mSubscriptionInfoDao:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    invoke-virtual {v1}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->mUiccInfoDao()Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;

    invoke-virtual {v1}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->mMobileNetworkInfoDao()Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mMobileNetworkInfoDao:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

    new-instance p1, Lcom/android/settings/network/MobileNetworkRepository$AirplaneModeObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/network/MobileNetworkRepository$AirplaneModeObserver;-><init>(Lcom/android/settings/network/MobileNetworkRepository;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mAirplaneModeObserver:Lcom/android/settings/network/MobileNetworkRepository$AirplaneModeObserver;

    new-instance p1, Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;-><init>(Lcom/android/settings/network/MobileNetworkRepository;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mDataRoamingObserver:Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/network/MobileNetworkRepository;
    .locals 3

    sget-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/network/MobileNetworkRepository;->sInstance:Lcom/android/settings/network/MobileNetworkRepository;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/settings/network/MobileNetworkRepository;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MobileNetworkRepository"

    const-string v2, "Init the instance."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Lcom/android/settings/network/MobileNetworkRepository;

    invoke-direct {v1, p0}, Lcom/android/settings/network/MobileNetworkRepository;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/network/MobileNetworkRepository;->sInstance:Lcom/android/settings/network/MobileNetworkRepository;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final addRegister(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;I)V
    .locals 7

    sget-boolean v0, Lcom/android/settings/network/MobileNetworkRepository;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "MobileNetworkRepository"

    const-string v2, "addRegister by SUB ID "

    invoke-static {p3, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/android/settings/network/MobileNetworkRepository;->sCallbacks:Ljava/util/Collection;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/network/MobileNetworkRepository;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v4, p0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {v2, v4, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v2, p0, Lcom/android/settings/network/MobileNetworkRepository;->mAirplaneModeObserver:Lcom/android/settings/network/MobileNetworkRepository$AirplaneModeObserver;

    iget-object v4, p0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v2, Lcom/android/settings/network/MobileNetworkRepository$AirplaneModeObserver;->mAirplaneModeSettingUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "MobileNetworkRepository"

    const-string v4, "addRegister done"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    const-string v1, "MobileNetworkRepository"

    const-string v2, "Observe subInfo."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mMobileNetworkDatabase:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

    invoke-virtual {v1}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->mSubscriptionInfoDao()Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "SELECT * FROM subscriptionInfo ORDER BY  CASE WHEN simSlotIndex >= 0 THEN 1 ELSE 2 END , simSlotIndex"

    invoke-static {v3, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    iget-object v4, v1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v4

    const-string v5, "subscriptionInfo"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$2;

    invoke-direct {v6, v1, v2}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$2;-><init>(Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v4, v5, v6}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;Ljava/util/concurrent/Callable;)Landroidx/room/RoomTrackingLiveData;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4}, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkRepository;I)V

    invoke-virtual {v1, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    if-eqz v0, :cond_3

    const-string v0, "MobileNetworkRepository"

    const-string v1, "Observe UICC info."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mMobileNetworkDatabase:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

    invoke-virtual {v0}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->mUiccInfoDao()Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SELECT * FROM uiccInfo ORDER BY sudId"

    invoke-static {v3, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v4, "uiccInfo"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl$2;

    invoke-direct {v5, v0, v1}, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl$2;-><init>(Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v4, v5}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;Ljava/util/concurrent/Callable;)Landroidx/room/RoomTrackingLiveData;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkRepository;I)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-string v0, "MobileNetworkRepository"

    const-string v1, "Observe mobile network info."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mMobileNetworkDatabase:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

    invoke-virtual {v0}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->mMobileNetworkInfoDao()Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SELECT * FROM MobileNetworkInfo ORDER BY subId"

    invoke-static {v3, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v4, "MobileNetworkInfo"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$2;

    invoke-direct {v5, v0, v1}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$2;-><init>(Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v4, v5}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;Ljava/util/concurrent/Callable;)Landroidx/room/RoomTrackingLiveData;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkRepository;I)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const/4 p1, -0x1

    if-eq p3, p1, :cond_5

    invoke-virtual {p0, p3}, Lcom/android/settings/network/MobileNetworkRepository;->createTelephonyManagerBySubId(I)V

    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mDataRoamingObserver:Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    iput p3, p1, Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;->mRegSubId:I

    iget-object v1, p1, Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;->mBaseField:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;->this$0:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v2, p3}, Lcom/android/settings/network/MobileNetworkRepository;->createTelephonyManagerBySubId(I)V

    iget-object v2, p1, Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;->this$0:Lcom/android/settings/network/MobileNetworkRepository;

    iget-object v2, v2, Lcom/android/settings/network/MobileNetworkRepository;->mTelephonyManagerMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3, v0, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_5
    if-eqz p2, :cond_9

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mAvailableSubInfoEntityList:Ljava/util/List;

    const/4 p3, 0x0

    if-eqz p1, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mAvailableSubInfoEntityList:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_6
    move-object p1, p3

    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mActiveSubInfoEntityList:Ljava/util/List;

    if-eqz v0, :cond_7

    new-instance p3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mActiveSubInfoEntityList:Ljava/util/List;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_8

    invoke-interface {p2, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAvailableSubInfoChanged(Ljava/util/List;)V

    :cond_8
    if-eqz p3, :cond_9

    invoke-interface {p2, p3}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onActiveSubInfoChanged(Ljava/util/List;)V

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_9
    :goto_2
    return-void
.end method

.method public final createTelephonyManagerBySubId(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mTelephonyCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;-><init>(Lcom/android/settings/network/MobileNetworkRepository;I)V

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    iget-object v2, p0, Lcom/android/settings/network/MobileNetworkRepository;->mTelephonyCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mTelephonyManagerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    sget-boolean p0, Lcom/android/settings/network/MobileNetworkRepository;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "createTelephonyManagerBySubId: directly return for subId = "

    const-string v0, "MobileNetworkRepository"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final deleteAllInfoBySubId(Ljava/lang/String;)V
    .locals 5

    const-string v0, "deleteAllInfoBySubId, subId = "

    const-string v1, "MobileNetworkRepository"

    invoke-static {v0, p1, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mMobileNetworkDatabase:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

    invoke-virtual {v0}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->mSubscriptionInfoDao()Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mMobileNetworkDatabase:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

    invoke-virtual {v0}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->mUiccInfoDao()Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mMobileNetworkDatabase:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

    invoke-virtual {v0}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->mMobileNetworkInfoDao()Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v1, p1, v4}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mUiccInfoEntityList:Ljava/util/List;

    new-instance v1, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda7;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mMobileNetworkInfoEntityList:Ljava/util/List;

    new-instance v1, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda7;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mTelephonyCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/network/MobileNetworkRepository;->getTelephonyManagerBySubId(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mTelephonyCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mTelephonyCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mSubscriptionInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mTelephonyManagerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sCacheSubscriptionInfoEntityMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sCacheUiccInfoEntityMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sCacheMobileNetworkInfoEntityMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    const/16 v1, 0x7ad

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method public final getTelephonyManagerBySubId(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mTelephonyManagerMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    const-class p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/android/settings/network/MobileNetworkRepository;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "Can not get TelephonyManager for subId "

    const-string v0, "MobileNetworkRepository"

    invoke-static {p2, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final insertMobileNetworkInfo(Landroid/content/Context;ILandroid/telephony/TelephonyManager;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    const-string v3, "MobileNetworkRepository"

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/telephony/TelephonyManager;->isDataRoamingEnabled()Z

    move-result v5

    move v9, v4

    move/from16 v17, v5

    goto :goto_0

    :cond_0
    const-string v4, "TelephonyManager is null, subId = "

    invoke-static {v1, v4, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move v9, v2

    move/from16 v17, v9

    :goto_0
    new-instance v4, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    sget-object v5, Lcom/android/settings/network/telephony/MobileNetworkUtils;->EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;

    const-class v5, Landroid/telephony/ims/ImsManager;

    move-object/from16 v7, p1

    invoke-virtual {v7, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/ImsManager;

    invoke-static {v5, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isContactDiscoveryEnabled(Landroid/telephony/ims/ImsManager;I)Z

    move-result v8

    invoke-static/range {p1 .. p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isContactDiscoveryVisible(Landroid/content/Context;I)Z

    move-result v10

    invoke-static/range {p1 .. p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isCdmaOptions(Landroid/content/Context;I)Z

    move-result v11

    invoke-static/range {p1 .. p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isGsmOptions(Landroid/content/Context;I)Z

    move-result v12

    invoke-static/range {p1 .. p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result v13

    invoke-static/range {p1 .. p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->shouldDisplayNetworkSelectOptions(Landroid/content/Context;I)Z

    move-result v14

    invoke-static/range {p1 .. p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result v15

    invoke-static/range {p1 .. p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->activeNetworkIsCellular(Landroid/content/Context;)Z

    move-result v16

    iget-object v5, v0, Lcom/android/settings/network/MobileNetworkRepository;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    sget-object v7, Lcom/android/settings/network/SubscriptionUtil;->REGEX_DISPLAY_NAME_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->canDisablePhysicalSubscription()Z

    move-result v18

    move-object v5, v4

    move v7, v8

    move v8, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-direct/range {v5 .. v17}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;-><init>(Ljava/lang/String;ZZZZZZZZZZZ)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "insertMobileNetworkInfo, mobileNetworkInfoEntity = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/settings/network/MobileNetworkRepository;->sCacheMobileNetworkInfoEntityMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    invoke-virtual {v5, v4}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/settings/network/MobileNetworkRepository;->mMobileNetworkDatabase:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

    filled-new-array {v4}, [Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "MobileNetworkDatabase"

    const-string v6, "insertMobileNetworkInfo"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->mMobileNetworkInfoDao()Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, v4}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;[Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V

    const/4 v4, 0x1

    iget-object v3, v3, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {v3, v2, v4, v5}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/settings/network/MobileNetworkRepository;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object v0, v0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    const/16 v3, 0x7b1

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :cond_2
    return-void
.end method

.method public final isAirplaneModeOn()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final onSubscriptionsChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/network/SubscriptionUtil;->REGEX_DISPLAY_NAME_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->getSelectableSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/MobileNetworkRepository;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v0}, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final removeRegister(Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sCallbacks:Ljava/util/Collection;

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p0}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mAirplaneModeObserver:Lcom/android/settings/network/MobileNetworkRepository$AirplaneModeObserver;

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mDataRoamingObserver:Lcom/android/settings/network/MobileNetworkRepository$DataRoamingObserver;

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mTelephonyManagerMap:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/network/MobileNetworkRepository;)V

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository;->mTelephonyCallbackMap:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkRepository;->mTelephonyManagerMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    const-string p0, "MobileNetworkRepository"

    const-string p1, "removeRegister done"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final updateEntity()V
    .locals 3

    sget-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sCacheSubscriptionInfoEntityMap:Ljava/util/Map;

    if-nez v0, :cond_0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkRepository;->isAirplaneModeOn()Z

    move-result p0

    sget-object v0, Lcom/android/settings/network/MobileNetworkRepository;->sCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;

    invoke-interface {v1, p0}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAirplaneModeChanged(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method
