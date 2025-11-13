.class public Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mEnableStatusObserver:Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$4;

.field public mFilter:Landroid/content/IntentFilter;

.field public final mReceiver:Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$1;

.field public mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

.field public mWifiCloudSyncPreferenceController:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;

.field public mWifiCloudSyncSwitchPreferenceController:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$2;

    const v1, 0x7f170224

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$1;-><init>(Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mReceiver:Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$4;-><init>(Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mEnableStatusObserver:Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$4;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ConfigureWifiSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x152

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170224

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    const-class p1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mWifiCloudSyncSwitchPreferenceController:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    const-class p1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mWifiCloudSyncPreferenceController:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string v0, "WIFI_200"

    invoke-static {v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    iput-boolean v0, v1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsMainSyncOn:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->updateListAdapter()V

    return-void
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "scloud_wifi_sync_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mEnableStatusObserver:Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$4;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mReceiver:Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$1;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.settings.wifiprofilesync"

    const-string v3, "com.android.settings.wifiprofilesetting"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->setRpcSettings(Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mWifiCloudSyncSwitchPreferenceController:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->setSettingsStore(Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mWifiCloudSyncPreferenceController:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->setSettingsStore(Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mEnableStatusObserver:Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$4;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mReceiver:Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final updateListAdapter()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mWifiCloudSyncSwitchPreferenceController:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    invoke-virtual {v0}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->getAutoSync()Z

    move-result v0

    const-string v1, "getAutoSync="

    const-string v2, "ConfigureWifiSettings"

    invoke-static {v1, v2, v0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mWifiCloudSyncSwitchPreferenceController:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->onChangeWifiSyncEnabled(Landroidx/preference/PreferenceScreen;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mWifiCloudSyncPreferenceController:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mWifiCloudSyncPreferenceController:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
