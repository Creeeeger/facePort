.class public Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mControllers:Ljava/util/List;

.field public mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

.field public mInManageNetwork:Z

.field public mInfoMenu:Landroid/view/MenuItem;

.field public mIsSetupWizardFinish:Z

.field public mIsUiRestricted:Z

.field public mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

.field public mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field public mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

.field public mWifiDetailPreferenceController:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

.field public mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field public mWorkerThread:Landroid/os/HandlerThread;

.field public final wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mInManageNetwork:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mIsSetupWizardFinish:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {v12, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {v12, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/wifi/SemWifiManager;

    const-string v0, "connectivity"

    invoke-virtual {v12, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/net/ConnectivityManager;

    iget-object v0, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "WifiNetworkDetailsFrg{"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$2;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v5, v0}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_chosen_wifientry_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProviderImpl;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v6, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/android/settings/wifi/WifiTrackerLibProviderImpl;->createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;Ljava/lang/String;)Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    move-result-object v0

    iput-object v0, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    :goto_0
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    iput-object v0, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/wifitrackerlib/WifiEntry;->forceUpdateNetworkInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    iget-object v0, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v1, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateConfig(Landroid/net/wifi/WifiConfiguration;)V

    :goto_1
    iget-object v1, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    iget-boolean v10, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mInManageNetwork:Z

    new-instance v15, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    new-instance v9, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

    invoke-direct {v9, v12}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;-><init>(Landroid/content/Context;)V

    move-object v0, v15

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object v7, v13

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/samsung/android/wifi/SemWifiManager;Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;Z)V

    iput-object v15, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-object v0, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;

    iget-object v2, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const-string v5, "WIFI_106"

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v3, p0

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;

    iget-object v1, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {v0, v1, v14, v12}, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;)V

    iget-object v1, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget-object v4, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    const-string v5, "WIFI_106"

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V

    iget-object v0, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->wifiExpandListener:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$$ExternalSyntheticLambda0;

    iput-object v0, v6, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;

    iget-object v0, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mInManageNetwork:Z

    const-string v7, "WIFI_106"

    if-nez v0, :cond_3

    new-instance v8, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    iget-object v1, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v5, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    const-string v6, "WIFI_106"

    move-object v0, v8

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V

    iput-object v11, v8, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mListener:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;

    iget-object v0, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;

    iget-object v1, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {v0, v12, v1, v11, v7}, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    iget-object v1, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;

    iget-object v1, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {v0, v12, v1, v11, v7}, Lcom/samsung/android/settings/wifi/details/WifiPrivacyPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    iget-object v1, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/samsung/android/settings/wifi/details/WifiDhcpNameSharingPreferenceController;

    iget-object v2, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const-string v5, "WIFI_106"

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v3, p0

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/details/WifiDhcpNameSharingPreferenceController;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    iget-object v0, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    iget-object v1, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v4, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mInManageNetwork:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    iget-object v6, v11, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const-string v7, "WIFI_106"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/content/Context;Landroidx/fragment/app/Fragment;ZLcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Ljava/lang/String;)V

    iput-object v8, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    iget-object v0, v11, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mControllers:Ljava/util/List;

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No feature factory configured"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiNetworkDetailsFrg"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x351

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mInManageNetwork:Z

    if-eqz p0, :cond_0

    const p0, 0x7f170239

    goto :goto_0

    :cond_0
    const p0, 0x7f170237

    :goto_0
    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    if-eqz p3, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const/16 v1, 0xff

    const/16 v2, 0x37

    if-eq p1, v2, :cond_2

    const/16 v3, 0x9b

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_6

    invoke-virtual {p3}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->showPassword$1()V

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->shareNetwork$1()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->launchWifiDppConfiguratorActivity$1$1()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->initBottom()V

    :cond_6
    :goto_0
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mIsSetupWizardFinish:Z

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    if-eqz v0, :cond_1

    const-string v1, "manage_network"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mInManageNetwork:Z

    const-string v1, "key_chosen_wifientry_config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "wifi_tips_notification"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "WIFI_106"

    const-string v1, "1029"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mOnlyAvailableForAdmins:Z

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mIsUiRestricted:Z

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mIsSetupWizardFinish:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p2}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/wifitrackerlib/Utils;->defaultSsidList:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const p2, 0x7f1434d8    # 1.9700012E38f

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mInfoMenu:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mInfoMenu:Landroid/view/MenuItem;

    const p1, 0x7f080ad3

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p2, p0, Lcom/android/settings/core/SettingsBaseActivity;

    if-eqz p2, :cond_0

    move-object p2, p0

    check-cast p2, Lcom/android/settings/core/SettingsBaseActivity;

    invoke-virtual {p2}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->disableExtendedAppBar()V

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "WifiDetailWarning"

    const-string v3, ""

    if-nez v0, :cond_0

    const v0, 0x7f143608

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v0

    if-ne v0, v1, :cond_1

    const v0, 0x7f14374c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/wifitrackerlib/Utils;->defaultSsidList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f1434d5    # 1.9700006E38f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Title mismatch "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :goto_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v4

    if-nez v4, :cond_3

    const p1, 0x7f143607

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v4

    if-ne v4, v1, :cond_4

    const p1, 0x7f14374b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wifitrackerlib/Utils;->defaultSsidList:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const p1, 0x7f1434d4    # 1.9700004E38f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Message mismatch "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p0, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const p0, 0x7f1409d0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return v1

    :cond_6
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    const-string v0, "WIFI_106"

    invoke-static {v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    iget v1, v0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mBottomMode:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mIsUiRestricted:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->initBottom()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->init(Landroid/view/View;Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mIsUiRestricted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f14355a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailNavigationController:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->setMode(I)V

    :cond_3
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/SeslContentViewInsetsCallback;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method
