.class public Lcom/android/settings/wifi/ConfigureWifiSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConfigureWifiSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field public static final mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;


# instance fields
.field private mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

.field private mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSamsungCloudRPCSetting(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStore(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateListAdapter(Lcom/android/settings/wifi/ConfigureWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->updateListAdapter()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 68
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 151
    new-instance v0, Lcom/android/settings/wifi/ConfigureWifiSettings$2;

    sget v1, Lcom/android/settings/R$xml;->wifi_configure_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/ConfigureWifiSettings$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 248
    new-instance v0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;

    invoke-direct {v0}, Lcom/android/settings/wifi/ConfigureWifiSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private updateListAdapter()V
    .locals 2

    .line 143
    const-class v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 144
    const-class v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 145
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ConfigureWifiSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x152

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 139
    sget p0, Lcom/android/settings/R$xml;->wifi_configure_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    new-instance p1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    .line 83
    const-class p1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->setSettingsStore(Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;)V

    .line 84
    const-class p1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;

    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->setSettingsStore(Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->close(Landroid/content/Context;)V

    .line 124
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 89
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string v0, "WIFI_200"

    .line 90
    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/ConfigureWifiSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/ConfigureWifiSettings$1;-><init>(Lcom/android/settings/wifi/ConfigureWifiSettings;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;-><init>(Landroid/content/Context;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mSamsungCloudRPCSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    .line 117
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->setRpcSettings(Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;)V

    .line 118
    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->updateListAdapter()V

    return-void
.end method
