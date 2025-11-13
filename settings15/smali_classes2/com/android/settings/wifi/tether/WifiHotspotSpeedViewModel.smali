.class public final Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final RES_SPEED_5G_SUMMARY:I = 0x7f143592

.field static final RES_SPEED_6G_SUMMARY:I = 0x7f143594

.field static final RES_SUMMARY_UNAVAILABLE:I = 0x7f14359c


# instance fields
.field public final m5gAvailableObserver:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;

.field public final m6gAvailableObserver:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;

.field public final mSpeedInfo2g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

.field public final mSpeedInfo2g5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

.field public final mSpeedInfo5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

.field public final mSpeedInfo6g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

.field public final mSpeedInfoMap:Ljava/util/Map;

.field public mSpeedInfoMapData:Landroidx/lifecycle/MutableLiveData;

.field public final mSpeedTypeObserver:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;

.field public final mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 5

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMap:Ljava/util/Map;

    new-instance p1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo2g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    new-instance p1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    invoke-direct {p1, v0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    new-instance p1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo2g5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    new-instance p1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    invoke-direct {p1, v0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo6g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    new-instance v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->m6gAvailableObserver:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;I)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->m5gAvailableObserver:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;

    new-instance v2, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;I)V

    iput-object v2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedTypeObserver:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;

    sget-object v3, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->getWifiHotspotRepository()Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    iget-object p0, v3, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->m6gAvailable:Landroidx/lifecycle/MutableLiveData;

    if-nez p0, :cond_0

    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p0, v3, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->m6gAvailable:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->is6gAvailable()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, v3, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->m6gAvailable:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iget-object p0, v3, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->m5gAvailable:Landroidx/lifecycle/MutableLiveData;

    if-nez p0, :cond_1

    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p0, v3, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->m5gAvailable:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->is5gAvailable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    iget-object p0, v3, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->m5gAvailable:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    invoke-virtual {v3}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSpeedType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    invoke-virtual {v3}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->startAutoRefresh()V

    invoke-virtual {v3}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->is6GHzBandSupported()Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsVisible:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static log$4(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object v0

    const-string v1, "WifiHotspotSpeedViewModel"

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getSpeedInfoMapData()Landroidx/lifecycle/MutableLiveData;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMapData:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMapData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSpeedViewData(), mSpeedInfoMap:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMapData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->log$4(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMapData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final onCleared()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    iget-object v1, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->m6gAvailable:Landroidx/lifecycle/MutableLiveData;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v1, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->m6gAvailable:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->is6gAvailable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->m6gAvailable:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->m6gAvailableObserver:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v1, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->m5gAvailable:Landroidx/lifecycle/MutableLiveData;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v1, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->m5gAvailable:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->is5gAvailable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->m5gAvailable:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->m5gAvailableObserver:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSpeedType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedTypeObserver:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final updateSpeedInfoMapData()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo2g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo2g5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo6g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMapData:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMap:Ljava/util/Map;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
