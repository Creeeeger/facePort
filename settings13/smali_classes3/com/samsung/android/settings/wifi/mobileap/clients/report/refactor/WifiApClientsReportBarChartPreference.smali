.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;
.super Landroidx/preference/Preference;
.source "WifiApClientsReportBarChartPreference.java"


# static fields
.field private static final PREFERENCE_LAYOUT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSelectedDayViewModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

.field private mWifiApClientsReportActivity:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;->TAG:Ljava/lang/String;

    .line 23
    sget v0, Lcom/android/settings/R$layout;->sec_wifi_ap_clients_report_barchart_layout_preference:I

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;->PREFERENCE_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;->mContext:Landroid/content/Context;

    .line 32
    sget p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;->PREFERENCE_LAYOUT:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 49
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 50
    sget v0, Lcom/android/settings/R$id;->weekly_barchart:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;

    .line 51
    sget v1, Lcom/android/settings/R$id;->monthly_barchart:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;

    if-eqz p1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;->mWifiApClientsReportActivity:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->getTabSelected()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    .line 55
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 56
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;->mWifiApClientsReportActivity:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->getFirstDayOfWeekSelected()J

    move-result-wide v1

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;->mWifiApClientsReportActivity:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->getLastDayOfWeekSelected()J

    move-result-wide p0

    .line 59
    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updating weekly bar chart for StartDate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", endDate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->updateBarGraph(JJ)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 63
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->updateBarGraph()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setParent(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;->mWifiApClientsReportActivity:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;

    .line 71
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportBarChartPreference;->mSelectedDayViewModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    return-void
.end method

.method public updatePreference()V
    .locals 0

    .line 75
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
