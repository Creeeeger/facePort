.class public Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# instance fields
.field public final mDateTimeList:Ljava/util/List;

.field public final mTrimmedDateTimeList:Ljava/util/List;

.field public mWifiApHotspotLabModelList:Ljava/util/List;

.field public final mWifiApHotspotSpeedHistoryList:Ljava/util/List;

.field public final mWifiApTrimmedHotspotSpeedHistoryList:Ljava/util/List;

.field public wifiApLineChartPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApHotspotLabModelList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApHotspotSpeedHistoryList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApTrimmedHotspotSpeedHistoryList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mDateTimeList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mTrimmedDateTimeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiApHotspotSpeedHistory"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17021d

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "WifiApHotspotSpeedHistory"

    const-string v0, "onCreate: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "speed_line_chart_preference"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->wifiApLineChartPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;

    const-string p1, "#tag_wifi_ap_lab_hotspot_speed_event#"

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApHotspotLabUtils;->getHotspotLabModelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApHotspotLabModelList:Ljava/util/List;

    return-void
.end method

.method public final onResume()V
    .locals 8

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string v0, "onResume called"

    const-string v1, "WifiApHotspotSpeedHistory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "#tag_wifi_ap_lab_hotspot_speed_event#"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApHotspotLabUtils;->getHotspotLabModelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApHotspotLabModelList:Ljava/util/List;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApHotspotLabModelList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApHotspotLabModelList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/hotspotlab/WifiApHotspotLabModel;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/hotspotlab/WifiApHotspotLabModel;->mEventLog:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApHotspotSpeedHistoryList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mDateTimeList:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApHotspotLabModelList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/wifi/mobileap/datamodels/hotspotlab/WifiApHotspotLabModel;

    iget-wide v4, v4, Lcom/samsung/android/settings/wifi/mobileap/datamodels/hotspotlab/WifiApHotspotLabModel;->mEventDateTimeInMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApHotspotSpeedHistoryList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xc8

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApTrimmedHotspotSpeedHistoryList:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApHotspotSpeedHistoryList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mTrimmedDateTimeList:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mDateTimeList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApTrimmedHotspotSpeedHistoryList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApHotspotSpeedHistoryList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mDateTimeList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mTrimmedDateTimeList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FULL LIST"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApHotspotSpeedHistoryList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TRIMMED LIST"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApTrimmedHotspotSpeedHistoryList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mTrimmedDateTimeList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "adding time : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApChartDataModel;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->mWifiApTrimmedHotspotSpeedHistoryList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApChartDataModel;-><init>(Ljava/util/List;Ljava/util/List;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/hotspotlabs/WifiApHotspotSpeedHistory;->wifiApLineChartPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;->mChartDataModel:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApChartDataModel;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApChartDataModel;->mYaxisValueList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;->mEntryList:Ljava/util/List;

    new-instance v4, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v5, v0, 0x1

    int-to-float v0, v0

    invoke-direct {v4, v0, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v5

    goto :goto_3

    :cond_3
    return-void
.end method
