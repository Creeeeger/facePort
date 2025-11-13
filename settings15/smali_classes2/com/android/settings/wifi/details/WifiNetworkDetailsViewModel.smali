.class public final Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mHotspotNetworkData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel;->mHotspotNetworkData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 7

    instance-of v0, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    if-nez v0, :cond_1

    const-string p1, "post HotspotNetworkData:null"

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object v0

    const-string v1, "WifiNetworkDetailsViewModel"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel;->mHotspotNetworkData:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    new-instance v0, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel$HotspotNetworkData;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    if-nez v1, :cond_2

    monitor-exit p1

    move v1, v2

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHostNetworkType()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p1

    :goto_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getUpstreamConnectionStrength()I

    move-result v3

    monitor-enter p1

    :try_start_2
    iget-object v4, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v4, :cond_3

    monitor-exit p1

    move v4, v2

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-virtual {v4}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getNetworkProviderInfo()Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->getBatteryPercentage()I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p1

    :goto_1
    monitor-enter p1

    :try_start_4
    iget-object v5, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v5, :cond_4

    monitor-exit p1

    goto :goto_2

    :cond_4
    :try_start_5
    invoke-virtual {v5}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getNetworkProviderInfo()Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->isBatteryCharging()Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_5

    monitor-exit p1

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    :try_start_6
    iget-object v5, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    invoke-virtual {v5}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getNetworkProviderInfo()Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "is_battery_charging"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p1

    :goto_2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel$HotspotNetworkData;->mNetworkType:I

    iput v3, v0, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel$HotspotNetworkData;->mUpstreamConnectionStrength:I

    iput v4, v0, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel$HotspotNetworkData;->mBatteryPercentage:I

    iput-boolean v2, v0, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel$HotspotNetworkData;->mIsBatteryCharging:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "post HotspotNetworkData:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object v1

    const-string v2, "WifiNetworkDetailsViewModel"

    invoke-virtual {v1, v2, p1}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsViewModel;->mHotspotNetworkData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit p1

    throw p0
.end method
