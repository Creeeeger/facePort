.class public final Lcom/android/settings/wifi/tether/WifiTetherViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sSecuritySummaryResMap:Ljava/util/Map;

.field public static final sSpeedSummaryResMap:Ljava/util/Map;


# instance fields
.field mInstantHotspotStateObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer;"
        }
    .end annotation
.end field

.field mInstantHotspotSummary:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field public mSecuritySummary:Landroidx/lifecycle/MutableLiveData;

.field public final mSecurityTypeObserver:Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;

.field public final mSharedConnectivityRepository:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

.field public mSpeedSummary:Landroidx/lifecycle/MutableLiveData;

.field public final mSpeedTypeObserver:Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;

.field public final mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->sSecuritySummaryResMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f14366b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f14366a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f143683

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f143664

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->sSpeedSummaryResMap:Ljava/util/Map;

    const v4, 0x7f143598

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7f14359a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f14359b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7f143599

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/tether/WifiTetherViewModel;I)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSecurityTypeObserver:Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/tether/WifiTetherViewModel;I)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSpeedTypeObserver:Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mInstantHotspotSummary:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/tether/WifiTetherViewModel;I)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mInstantHotspotStateObserver:Landroidx/lifecycle/Observer;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->getWifiHotspotRepository()Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    iget-object v0, p1, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mSharedConnectivityRepository:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    iget-object v1, p1, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mAppContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->isDeviceConfigEnabled()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p1, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mSharedConnectivityRepository:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSharedConnectivityRepository():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mSharedConnectivityRepository:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiFeatureProvider"

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mSharedConnectivityRepository:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSharedConnectivityRepository:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    iget-object v0, p1, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->getSettingsState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mInstantHotspotStateObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onCleared()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSecuritySummary:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSecurityType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSecurityTypeObserver:Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSpeedSummary:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSpeedType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSpeedTypeObserver:Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSharedConnectivityRepository:Lcom/android/settings/wifi/repository/SharedConnectivityRepository;

    iget-object v1, v0, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->mManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->getSettingsState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mInstantHotspotStateObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_2
    return-void
.end method

.method public onInstantHotspotStateChanged(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInstantHotspotStateChanged(), state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object v1

    const-string v2, "WifiTetherViewModel"

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mInstantHotspotSummary:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mInstantHotspotSummary:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->isInstantTetherEnabled()Z

    move-result p1

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object p0

    if-eqz p1, :cond_1

    const p1, 0x7f143582

    goto :goto_0

    :cond_1
    const p1, 0x7f143581

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
