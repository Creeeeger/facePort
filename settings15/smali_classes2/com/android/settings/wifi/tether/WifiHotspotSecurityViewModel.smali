.class public final Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mSecurityTypeObserver:Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$$ExternalSyntheticLambda0;

.field public final mSpeedTypeObserver:Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$$ExternalSyntheticLambda0;

.field public mViewInfoListData:Landroidx/lifecycle/MutableLiveData;

.field public final mViewItemMap:Ljava/util/Map;

.field public final mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 5

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;->mViewItemMap:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;->mSecurityTypeObserver:Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;I)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;->mSpeedTypeObserver:Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;

    const-string v4, "wifi_hotspot_security_wpa3"

    invoke-direct {v3, v4}, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;

    const-string v4, "wifi_hotspot_security_wpa2_wpa3"

    invoke-direct {v3, v4}, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;

    const-string v4, "wifi_hotspot_security_wpa2"

    invoke-direct {v3, v4}, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;

    const-string v4, "wifi_hotspot_security_none"

    invoke-direct {v3, v4}, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->getWifiHotspotRepository()Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSecurityType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    invoke-virtual {p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSpeedType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static log$3(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object v0

    const-string v1, "WifiHotspotSecurityViewModel"

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onCleared()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSecurityType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;->mSecurityTypeObserver:Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSpeedType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;->mSpeedTypeObserver:Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final updateViewItemListData()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;->mViewInfoListData:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;->mViewItemMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
