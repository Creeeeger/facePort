.class public final Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;
.super Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public volatile _mobileNetworkInfoDao:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

.field public volatile _subscriptionInfoDao:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

.field public volatile _uiccInfoDao:Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public final createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "uiccInfo"

    const-string v4, "MobileNetworkInfo"

    const-string v5, "subscriptionInfo"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final createOpenDelegate()Landroidx/room/RoomOpenDelegate;
    .locals 1

    new-instance v0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl$1;-><init>(Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;)V

    return-object v0
.end method

.method public final getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public final getRequiredTypeConverters()Ljava/util/Map;
    .locals 2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final mMobileNetworkInfoDao()Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;->_mobileNetworkInfoDao:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;->_mobileNetworkInfoDao:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;->_mobileNetworkInfoDao:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

    invoke-direct {v0, p0}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;->_mobileNetworkInfoDao:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;->_mobileNetworkInfoDao:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final mSubscriptionInfoDao()Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;->_subscriptionInfoDao:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;->_subscriptionInfoDao:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;->_subscriptionInfoDao:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    invoke-direct {v0, p0}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;->_subscriptionInfoDao:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;->_subscriptionInfoDao:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final mUiccInfoDao()Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;->_uiccInfoDao:Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;->_uiccInfoDao:Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;->_uiccInfoDao:Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;

    invoke-direct {v0, p0}, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;->_uiccInfoDao:Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase_Impl;->_uiccInfoDao:Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
