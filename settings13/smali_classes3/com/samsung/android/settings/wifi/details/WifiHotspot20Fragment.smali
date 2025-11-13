.class public Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiHotspot20Fragment.java"


# instance fields
.field private mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

.field private final mSAScreenId:Ljava/lang/String;

.field private mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

.field private mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const-string v0, "WIFI_261"

    .line 70
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;->mSAScreenId:Ljava/lang/String;

    return-void
.end method

.method private exitActivity()V
    .locals 0

    return-void
.end method

.method private setupNetworksDetailTracker()V
    .locals 13

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 144
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiHotspot20Frg{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 147
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 148
    new-instance v7, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment$1;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v7, p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;Ljava/time/ZoneId;)V

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    const-class v0, Landroid/net/wifi/WifiManager;

    .line 159
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/wifi/WifiManager;

    const-class v0, Landroid/net/ConnectivityManager;

    .line 160
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/ConnectivityManager;

    new-instance v5, Landroid/os/Handler;

    .line 161
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 162
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x3a98

    const-wide/16 v10, 0x2710

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v12, "key_chosen_passpoint_key"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 156
    invoke-static/range {v1 .. v12}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiHotspot20Frg"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 170
    new-instance v0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;->mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_chosen_passpoint_friendly_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->needToNotifyPasspointUpdate(Ljava/lang/String;)Z

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;->exitActivity()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;->setupNetworksDetailTracker()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    const-string v2, "wifi"

    .line 117
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 119
    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiPasspointPreferenceController;

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/settings/wifi/details/WifiPasspointPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v8, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;

    const-string v7, "WIFI_261"

    move-object v2, v8

    move-object v3, p1

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const-string v9, "WIFI_261"

    move-object v2, p1

    move-object v3, v1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/content/Context;Landroidx/fragment/app/Fragment;ZLcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;->mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    goto :goto_0

    :cond_0
    const-string p0, "WifiHotspot20Frg"

    const-string p1, "mNetworkDetailsTracker is null, cannot create preference controllers"

    .line 133
    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiHotspot20Frg"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 74
    sget p0, Lcom/android/settings/R$xml;->sec_wifi_hotspot20_fragment:I

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 91
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;->mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->initBottom()V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiHotspot20Fragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 107
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 99
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string p0, "WIFI_261"

    .line 100
    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(Ljava/lang/String;)V

    return-void
.end method
