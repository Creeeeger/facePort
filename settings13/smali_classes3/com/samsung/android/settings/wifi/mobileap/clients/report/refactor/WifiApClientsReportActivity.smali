.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiApClientsReportActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCalendarRangePreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;

.field private mContext:Landroid/content/Context;

.field private mHistoryTabPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;

.field public mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mReportBarChartPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;

.field private mSelectedBarChartListPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstDayOfWeekSelected()J
    .locals 4

    .line 60
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mCalendarRangePreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->getFirstDayOfWeekInMillis()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 61
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFirstDayOfWeekSelected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getLastDayOfWeekSelected()J
    .locals 4

    .line 66
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mCalendarRangePreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->getLastDayOfWeekInMillis()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 67
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastDayOfWeekSelected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 95
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 90
    sget p0, Lcom/android/settings/R$xml;->sec_wifi_ap_hotspot_usage_report_activity:I

    return p0
.end method

.method public getTabSelected()I
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mHistoryTabPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->getTabIndexSelected()I

    move-result p0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "weekly_monthly_tab_preference"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mHistoryTabPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;

    .line 45
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "calendar_range_selector_preference"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mCalendarRangePreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;

    .line 46
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "report_bar_chart_preference"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mReportBarChartPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;

    .line 47
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "selected_bar_chart_list_preference_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mSelectedBarChartListPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 49
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mHistoryTabPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->setParent(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;)V

    .line 50
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mCalendarRangePreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->setParent(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;)V

    .line 51
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mReportBarChartPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;->setParent(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->TAG:Ljava/lang/String;

    const-string v1, "WifiApClientsUsageReport enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 38
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    return-void
.end method

.method public updateBarChartPreference()V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mReportBarChartPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;->updatePreference()V

    return-void
.end method

.method public updateCalendarRangePreference()V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->mCalendarRangePreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->updatePreference()V

    return-void
.end method

.method public updatePreference()V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->updateCalendarRangePreference()V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->updateBarChartPreference()V

    return-void
.end method
