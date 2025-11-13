.class public Lcom/android/systemui/util/CarrierConfigTracker;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/BroadcastReceiver;",
        "Lcom/android/systemui/statusbar/policy/CallbackController;"
    }
.end annotation


# instance fields
.field private final mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

.field private final mDataListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/util/CarrierConfigTracker$DefaultDataSubscriptionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultAlwaysShowPrimarySignalBarInOpportunisticNetworkConfig:Z

.field private mDefaultAlwaysShowPrimarySignalBarInOpportunisticNetworkConfigLoaded:Z

.field private mDefaultCallStrengthConfig:Z

.field private mDefaultCallStrengthConfigLoaded:Z

.field private mDefaultCarrierProvisionsWifiMergedNetworks:Z

.field private mDefaultCarrierProvisionsWifiMergedNetworksLoaded:Z

.field private mDefaultNoCallingConfig:Z

.field private mDefaultNoCallingConfigLoaded:Z

.field private mDefaultShowOperatorNameConfig:Z

.field private mDefaultShowOperatorNameConfigLoaded:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/util/CarrierConfigTracker$CarrierConfigChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNoCallingConfigs:Landroid/util/SparseBooleanArray;

.field private final mShowOperatorNameConfigs:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/telephony/CarrierConfigManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mShowOperatorNameConfigs:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mListeners:Ljava/util/Set;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDataListeners:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private notifyCarrierConfigChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/CarrierConfigTracker$CarrierConfigChangedListener;

    invoke-interface {v0}, Lcom/android/systemui/util/CarrierConfigTracker$CarrierConfigChangedListener;->onCarrierConfigChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyDefaultDataSubscriptionChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDataListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/CarrierConfigTracker$DefaultDataSubscriptionChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/util/CarrierConfigTracker$DefaultDataSubscriptionChangedListener;->onDefaultSubscriptionChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateDefaultDataSubscription(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/util/CarrierConfigTracker;->notifyDefaultDataSubscriptionChanged(I)V

    return-void
.end method

.method private updateFromNewCarrierConfig(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

    const-string v3, "display_call_strength_indicator_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v2, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseBooleanArray;

    const-string/jumbo v3, "use_ip_for_calling_indicator_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    const-string v3, "carrier_provisions_wifi_merged_networks_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v2, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mShowOperatorNameConfigs:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mShowOperatorNameConfigs:Landroid/util/SparseBooleanArray;

    const-string/jumbo v3, "show_operator_name_in_statusbar_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0}, Lcom/android/systemui/util/CarrierConfigTracker;->notifyCarrierConfigChanged()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/util/CarrierConfigTracker$CarrierConfigChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/util/CarrierConfigTracker$CarrierConfigChangedListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/CarrierConfigTracker;->addCallback(Lcom/android/systemui/util/CarrierConfigTracker$CarrierConfigChangedListener;)V

    return-void
.end method

.method public addDefaultDataSubscriptionChangedListener(Lcom/android/systemui/util/CarrierConfigTracker$DefaultDataSubscriptionChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDataListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAlwaysShowPrimarySignalBarInOpportunisticNetworkDefault()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultAlwaysShowPrimarySignalBarInOpportunisticNetworkConfigLoaded:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "always_show_primary_signal_bar_in_opportunistic_network_boolean"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultAlwaysShowPrimarySignalBarInOpportunisticNetworkConfig:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultAlwaysShowPrimarySignalBarInOpportunisticNetworkConfigLoaded:Z

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultAlwaysShowPrimarySignalBarInOpportunisticNetworkConfig:Z

    return p0
.end method

.method public getCallStrengthConfig(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCallStrengthConfigLoaded:Z

    if-nez p1, :cond_1

    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string v0, "display_call_strength_indicator_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCallStrengthConfig:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCallStrengthConfigLoaded:Z

    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCallStrengthConfig:Z

    return p0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCarrierProvisionsWifiMergedNetworksBool(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCarrierProvisionsWifiMergedNetworksLoaded:Z

    if-nez p1, :cond_1

    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string v0, "carrier_provisions_wifi_merged_networks_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCarrierProvisionsWifiMergedNetworks:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCarrierProvisionsWifiMergedNetworksLoaded:Z

    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCarrierProvisionsWifiMergedNetworks:Z

    return p0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getNoCallingConfig(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultNoCallingConfigLoaded:Z

    if-nez p1, :cond_1

    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string/jumbo v0, "use_ip_for_calling_indicator_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultNoCallingConfig:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultNoCallingConfigLoaded:Z

    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultNoCallingConfig:Z

    return p0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getShowOperatorNameInStatusBarConfig(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mShowOperatorNameConfigs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mShowOperatorNameConfigs:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/CarrierConfigTracker;->getShowOperatorNameInStatusBarConfigDefault()Z

    move-result p0

    return p0
.end method

.method public getShowOperatorNameInStatusBarConfigDefault()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultShowOperatorNameConfigLoaded:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v1, "show_operator_name_in_statusbar_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultShowOperatorNameConfig:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultShowOperatorNameConfigLoaded:Z

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultShowOperatorNameConfig:Z

    return p0
.end method

.method public bridge synthetic observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/util/CarrierConfigTracker;->updateFromNewCarrierConfig(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/systemui/util/CarrierConfigTracker;->updateDefaultDataSubscription(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/util/CarrierConfigTracker$CarrierConfigChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/util/CarrierConfigTracker$CarrierConfigChangedListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/CarrierConfigTracker;->removeCallback(Lcom/android/systemui/util/CarrierConfigTracker$CarrierConfigChangedListener;)V

    return-void
.end method

.method public removeDataSubscriptionChangedListener(Lcom/android/systemui/util/CarrierConfigTracker$DefaultDataSubscriptionChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDataListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
