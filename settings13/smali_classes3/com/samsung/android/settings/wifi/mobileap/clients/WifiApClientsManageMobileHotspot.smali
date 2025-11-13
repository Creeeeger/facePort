.class public Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiApClientsManageMobileHotspot.java"


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String;

.field private static final XML_PREFERENCE_SCREEN:I


# instance fields
.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

.field private mMobileDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

.field private mNoDevicePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

.field private mOldHotspotClientMacList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPieChartPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mRefreshHandler:Landroid/os/Handler;

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field private mSetDataLimitButton:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;

.field private mTest:Z

.field private mThisMenuItem:Landroid/view/MenuItem;

.field private mWifiApStackedProgressBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetdismissListener(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataLimitDialog(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRefreshHandler(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mRefreshHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDataLimitDialog(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->TAG:Ljava/lang/String;

    .line 62
    sget v0, Lcom/android/settings/R$xml;->sec_wifi_ap_connected_devices_settings:I

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->XML_PREFERENCE_SCREEN:I

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mRefreshHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mTest:Z

    .line 115
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method private registerHandler()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mRefreshHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private unRegisterHandler()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mRefreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mRefreshHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 257
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 252
    sget p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->XML_PREFERENCE_SCREEN:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mContext:Landroid/content/Context;

    .line 137
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "connected_devices_preference_category"

    .line 138
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 139
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "pie_chart_preference_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPieChartPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 140
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "mobile_data_usage_preference"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mMobileDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setIsRippleEffectRequired(Z)V

    .line 142
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "stacked_progress_bar_preference"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mWifiApStackedProgressBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    .line 143
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "set_data_limit_button_layout_preference"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mSetDataLimitButton:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;

    .line 144
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 173
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mNoDevicePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    .line 174
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 175
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mNoDevicePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const-string v0, "no_device_error"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mNoDevicePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    sget v0, Lcom/android/settings/R$string;->wifi_ap_no_devices:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 177
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mNoDevicePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setGravity(I)V

    .line 178
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mOldHotspotClientMacList:Ljava/util/List;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 185
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    .line 186
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v2, "Info"

    .line 189
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mThisMenuItem:Landroid/view/MenuItem;

    const/4 v3, 0x2

    .line 190
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mThisMenuItem:Landroid/view/MenuItem;

    sget v3, Lcom/android/settings/R$drawable;->sec_ic_wifi_ap_report:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mThisMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mThisMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 195
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 247
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 211
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 208
    :cond_0
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 p0, 0xd48

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v1
.end method

.method public onPause()V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->unRegisterHandler()V

    .line 235
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 201
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 227
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->registerHandler()V

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->refreshConnectedPreferenceCategory()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 221
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 242
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method

.method public refreshConnectedPreferenceCategory()V
    .locals 17

    move-object/from16 v0, p0

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApTodayTotalDataUsage(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v2

    .line 269
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v3

    .line 271
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocaleString(D)Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocaleString(D)Ljava/lang/String;

    move-result-object v5

    .line 276
    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getWifiApStaListDetail(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 278
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 282
    :goto_0
    sget-object v8, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mConnectedDevices.size(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mContext:Landroid/content/Context;

    const/4 v10, 0x3

    const/16 v11, 0xd

    invoke-static {v9, v10, v11}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getTopHotspotClientsToday(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v9

    .line 284
    invoke-static {v9}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getTopHotspotClientsToday(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 285
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Hotspot List : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 288
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hotspotClientList.size(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_3

    .line 291
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mOldHotspotClientMacList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 292
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mOldHotspotClientMacList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 293
    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v11, v9}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)Z

    goto :goto_1

    .line 295
    :cond_1
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mOldHotspotClientMacList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 297
    :cond_2
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v9, "no_device_error"

    invoke-virtual {v8, v9}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    if-nez v8, :cond_6

    .line 298
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mNoDevicePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v8, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_4

    .line 301
    :cond_3
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v12, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mNoDevicePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v12}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)Z

    .line 302
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mOldHotspotClientMacList:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 303
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v8}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_6

    .line 305
    sget-object v12, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->PROGRESS_COLORS:[I

    aget v12, v12, v8

    .line 306
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 307
    invoke-virtual {v13}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v13

    .line 308
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 309
    sget v12, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->OTHERS_COLOR:I

    .line 311
    :cond_4
    new-instance v13, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mContext:Landroid/content/Context;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    invoke-direct {v13, v14, v15, v12}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;-><init>(Landroid/content/Context;Lcom/samsung/android/wifi/SemWifiApClientDetails;I)V

    .line 312
    iget-object v12, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v12, v13}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 313
    new-instance v12, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    invoke-virtual {v13}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move/from16 v16, v8

    invoke-virtual {v13}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->getProgress()J

    move-result-wide v7

    long-to-float v7, v7

    invoke-virtual {v13}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->getProgressColor()I

    move-result v8

    invoke-direct {v12, v14, v7, v8}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;-><init>(Ljava/lang/String;FI)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v16, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    .line 316
    :goto_3
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v8}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 317
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v8, v7}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    .line 318
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    invoke-virtual {v8, v11}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->updatePreference(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V

    .line 319
    new-instance v11, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    invoke-virtual {v8}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->getProgress()J

    move-result-wide v13

    long-to-float v13, v13

    invoke-virtual {v8}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->getProgressColor()I

    move-result v8

    invoke-direct {v11, v12, v13, v8}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;-><init>(Ljava/lang/String;FI)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 323
    :cond_6
    :goto_4
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mOldHotspotClientMacList:Ljava/util/List;

    .line 324
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_7

    .line 325
    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v7

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v11

    sub-double/2addr v7, v11

    double-to-float v7, v7

    .line 326
    new-instance v8, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    sget v11, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->UNUSED_LIGHT_COLOR:I

    const-string v12, "unused_data_name"

    invoke-direct {v8, v12, v7, v11}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;-><init>(Ljava/lang/String;FI)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_7
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mWifiApStackedProgressBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    invoke-virtual {v7, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->setProgressBarEntries(Ljava/util/ArrayList;)V

    .line 329
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mWifiApStackedProgressBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->updateProgressBar()V

    .line 333
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInBytes()D

    move-result-wide v7

    cmpl-double v7, v7, v9

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v7, :cond_9

    const-string v7, "/"

    .line 335
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mSetDataLimitButton:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;

    invoke-virtual {v5, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 338
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mSetDataLimitButton:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;

    sget v7, Lcom/android/settings/R$string;->wifi_ap_edit_data_limit:I

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->setTitle(I)V

    .line 339
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v10

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v2

    div-double/2addr v10, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v2

    double-to-int v2, v10

    const/16 v3, 0x5a

    if-le v2, v3, :cond_8

    .line 341
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mMobileDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$drawable;->sec_ic_wifi_ap_warning:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mMobileDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$5;

    invoke-direct {v5, v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;I)V

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIconClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 350
    :cond_8
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mMobileDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v2, v8}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 353
    :cond_9
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mMobileDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v2, v8}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mSetDataLimitButton:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 355
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mSetDataLimitButton:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;

    sget v3, Lcom/android/settings/R$string;->wifi_ap_set_data_limit:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->setTitle(I)V

    .line 357
    :goto_5
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 358
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x21

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 359
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v7, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 360
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 361
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mMobileDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSpannableTitle(Landroid/text/SpannableString;)V

    if-nez v6, :cond_a

    .line 366
    sget v1, Lcom/android/settings/R$string;->wifi_ap_no_devices_connected:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_a
    const-string v1, " "

    if-ne v6, v9, :cond_b

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_connected_device:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 371
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_connected_devices:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    :goto_6
    new-instance v2, Ljava/lang/StringBuffer;

    sget v3, Lcom/android/settings/R$string;->wifi_ap_mobile_data_shared_today:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->mMobileDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
