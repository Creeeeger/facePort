.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiApClientsUsageReport.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String;

.field private static final XML_PREFERENCE_SCREEN:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private final mMonthlyViewPagers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/viewpager/widget/ViewPager;",
            ">;"
        }
    .end annotation
.end field

.field private mNoDeviceWifiApPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

.field public mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

.field private final mWeeklyViewPagers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/viewpager/widget/ViewPager;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiApStackGraphViewPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->TAG:Ljava/lang/String;

    .line 38
    sget v0, Lcom/android/settings/R$xml;->sec_wifi_ap_stack_bar_chart:I

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->XML_PREFERENCE_SCREEN:I

    .line 152
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mMonthlyViewPagers:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mWeeklyViewPagers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 2

    .line 58
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->TAG:Ljava/lang/String;

    const-string v1, "getLifecycleOwner called "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 144
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 138
    sget p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->XML_PREFERENCE_SCREEN:I

    return p0
.end method

.method public getSelectedDayView()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "stack_view_preference"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mWifiApStackGraphViewPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->setParent(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;)V

    .line 81
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "view_preference_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mListPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 82
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mNoDeviceWifiApPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const-string v0, "No devices"

    .line 83
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mNoDeviceWifiApPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setGravity(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->TAG:Ljava/lang/String;

    const-string v1, "WifiApClientsUsageReport enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 73
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 133
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 123
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 118
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 113
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 128
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method

.method public setListPreferenceCategoryVisibility(Z)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mListPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public updateListPreference(Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mListPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 92
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 93
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    .line 94
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mContext:Landroid/content/Context;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString()Ljava/lang/String;

    move-result-object v9

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->PROGRESS_COLORS:[I

    aget v10, v3, v1

    sget v11, Lcom/android/settings/R$layout;->sec_wifi_ap_progress_bar_list_preference:I

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 95
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->mListPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
