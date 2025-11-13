.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;
.super Landroidx/preference/Preference;
.source "WifiApClientsCalendarRangeSelectorPreference.java"


# static fields
.field private static final PREFERENCE_LAYOUT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDayChangeObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDayInMillis:Ljava/lang/Long;

.field private mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

.field private mWifiApClientsReportActivity:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;


# direct methods
.method static bridge synthetic -$$Nest$fgetmWifiApClientsReportActivity(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mWifiApClientsReportActivity:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDayInMillis(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mDayInMillis:Ljava/lang/Long;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->TAG:Ljava/lang/String;

    .line 24
    sget v0, Lcom/android/settings/R$layout;->sec_wifi_ap_clients_calendar_range_selector_layout_preference:I

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->PREFERENCE_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mDayInMillis:Ljava/lang/Long;

    .line 84
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mDayChangeObserver:Landroidx/lifecycle/Observer;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mContext:Landroid/content/Context;

    .line 34
    sget p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->PREFERENCE_LAYOUT:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;)V
    .locals 0

    .line 22
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method protected getFirstDayOfWeekInMillis()Ljava/lang/Long;
    .locals 2

    .line 110
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mDayInMillis:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getFirstDayOfWeek(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method protected getLastDayOfWeekInMillis()Ljava/lang/Long;
    .locals 2

    .line 114
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mDayInMillis:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getLastDayOfWeek(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    .line 51
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 52
    sget v0, Lcom/android/settings/R$id;->data_date_picker_layout:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    if-eqz p1, :cond_2

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->initConfig(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V

    const-string v0, "#ffffff"

    .line 55
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mWifiApClientsReportActivity:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->getTabSelected()I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p1, v6}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setDateRangeType(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 60
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->MONTHLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setDateRangeType(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;)V

    .line 62
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mDayInMillis:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setButtonVisibility(Ljava/lang/Long;)V

    .line 63
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mDayInMillis:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setSelectedDateText(J)V

    :cond_2
    return-void
.end method

.method setParent(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mWifiApClientsReportActivity:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;

    .line 74
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    if-eqz p2, :cond_0

    .line 76
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->TAG:Ljava/lang/String;

    const-string p2, " mSharedModel not null "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->getSelectedDay()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mWifiApClientsReportActivity:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->mDayChangeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 79
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->TAG:Ljava/lang/String;

    const-string p1, "mSharedModel null "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->TAG:Ljava/lang/String;

    const-string p1, "Stack Chart setParent XYZ"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected updatePreference()V
    .locals 0

    .line 98
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
