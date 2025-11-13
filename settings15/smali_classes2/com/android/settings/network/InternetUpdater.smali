.class public final Lcom/android/settings/network/InternetUpdater;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field public static final sTransportMap:Ljava/util/Map;


# instance fields
.field mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field mInternetAvailable:Z

.field public mInternetType:I

.field public final mListener:Lcom/android/settings/network/InternetUpdater$InternetChangeListener;

.field public final mNetworkCallback:Lcom/android/settings/network/InternetUpdater$1;

.field mTransport:I

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWifiStateFilter:Landroid/content/IntentFilter;

.field public final mWifiStateReceiver:Lcom/android/settings/network/InternetUpdater$2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/InternetUpdater;->sTransportMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/InternetUpdater$InternetChangeListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/network/InternetUpdater$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/InternetUpdater$1;-><init>(Lcom/android/settings/network/InternetUpdater;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mNetworkCallback:Lcom/android/settings/network/InternetUpdater$1;

    new-instance v0, Lcom/android/settings/network/InternetUpdater$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/InternetUpdater$2;-><init>(Lcom/android/settings/network/InternetUpdater;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mWifiStateReceiver:Lcom/android/settings/network/InternetUpdater$2;

    iput-object p1, p0, Lcom/android/settings/network/InternetUpdater;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/network/InternetUpdater;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/InternetUpdater;->mWifiStateFilter:Landroid/content/IntentFilter;

    iput-object p3, p0, Lcom/android/settings/network/InternetUpdater;->mListener:Lcom/android/settings/network/InternetUpdater$InternetChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/network/InternetUpdater;->fetchActiveNetwork()V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final fetchActiveNetwork()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/settings/network/InternetUpdater;->mInternetAvailable:Z

    invoke-virtual {p0}, Lcom/android/settings/network/InternetUpdater;->updateInternetType()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/network/InternetUpdater;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/settings/network/InternetUpdater;->mInternetAvailable:Z

    invoke-virtual {p0}, Lcom/android/settings/network/InternetUpdater;->updateInternetType()V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/network/InternetUpdater;->updateInternetAvailable(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public final onAirplaneModeChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/InternetUpdater;->fetchActiveNetwork()V

    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mListener:Lcom/android/settings/network/InternetUpdater$InternetChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/settings/network/InternetUpdater$InternetChangeListener;->onAirplaneModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->close()V

    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->stop()V

    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/network/InternetUpdater;->mNetworkCallback:Lcom/android/settings/network/InternetUpdater$1;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mWifiStateReceiver:Lcom/android/settings/network/InternetUpdater$2;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->start()V

    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/network/InternetUpdater;->mNetworkCallback:Lcom/android/settings/network/InternetUpdater$1;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/InternetUpdater;->mWifiStateFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mWifiStateReceiver:Lcom/android/settings/network/InternetUpdater$2;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public updateInternetAvailable(Landroid/net/NetworkCapabilities;)V
    .locals 6

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object p1

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    sget-object v4, Lcom/android/settings/network/InternetUpdater;->sTransportMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput v3, p0, Lcom/android/settings/network/InternetUpdater;->mTransport:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Detect an internet available network with transport type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/network/InternetUpdater;->mTransport:I

    const-string v1, "InternetUpdater"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/network/InternetUpdater;->mInternetAvailable:Z

    invoke-virtual {p0}, Lcom/android/settings/network/InternetUpdater;->updateInternetType()V

    return-void
.end method

.method public updateInternetType()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/network/InternetUpdater;->mInternetAvailable:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/network/InternetUpdater;->sTransportMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/settings/network/InternetUpdater;->mTransport:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/network/InternetUpdater;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->isCarrierMerged()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "InternetUpdater"

    const-string v2, "Detect a merged carrier Wi-Fi connected."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    iget-object v0, v0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    iput v1, p0, Lcom/android/settings/network/InternetUpdater;->mInternetType:I

    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mListener:Lcom/android/settings/network/InternetUpdater$InternetChangeListener;

    if-eqz p0, :cond_4

    invoke-interface {p0, v1}, Lcom/android/settings/network/InternetUpdater$InternetChangeListener;->onInternetTypeChanged(I)V

    :cond_4
    return-void
.end method
