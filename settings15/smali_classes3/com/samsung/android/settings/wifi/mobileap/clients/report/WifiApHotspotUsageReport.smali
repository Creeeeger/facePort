.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mActivity:Landroidx/fragment/app/FragmentActivity;

.field public mContext:Landroid/content/Context;

.field public mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field public mReportBarChartPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;

.field public mReportCalendarRangeSelectorPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

.field public final mSemWifiApDataUsageUpdateCallback:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport$1;

.field public mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public mWeeklyAndMonthlyTabPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsMonthlyWeeklyTabPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport$2;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mSemWifiApDataUsageUpdateCallback:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport$1;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiApHotspotUsageReport"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170212

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "weekly_monthly_tab_preference"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsMonthlyWeeklyTabPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mWeeklyAndMonthlyTabPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsMonthlyWeeklyTabPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "report_calendar_range_selector_preference"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mReportCalendarRangeSelectorPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "report_bar_chart_preference"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mReportBarChartPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mWeeklyAndMonthlyTabPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsMonthlyWeeklyTabPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsMonthlyWeeklyTabPreference;->mWifiApHotspotUsageReport:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;

    const-string p1, "WifiApClientsMonthlyWeeklyTabPreference"

    const-string v0, "Stack Chart setParent XYZ"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mReportCalendarRangeSelectorPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWifiApHotspotUsageReport:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mReportBarChartPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mWifiApHotspotUsageReport:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "WifiApHotspotUsageReport"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f143334

    invoke-static {v0}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    const-string v0, "WifiApHotspotUsageReport"

    const-string v1, "Navigate Up clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TETH_016"

    const-string v1, "8101"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setIsHotspotScreenOpened(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mSemWifiApDataUsageUpdateCallback:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport$1;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->unregisterClientListDataUsageCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;)V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setIsHotspotScreenOpened(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mSemWifiApDataUsageUpdateCallback:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport$1;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/samsung/android/wifi/SemWifiManager;->registerClientListDataUsageCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;Ljava/util/concurrent/Executor;II)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mReportCalendarRangeSelectorPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->updatePreference()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mReportBarChartPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
