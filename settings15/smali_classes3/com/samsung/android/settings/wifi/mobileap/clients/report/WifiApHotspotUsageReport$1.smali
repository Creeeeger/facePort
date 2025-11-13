.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport$1;
.super Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClientListUpdated(Ljava/util/List;J)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClientListUpdated() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiApHotspotUsageReport"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mReportCalendarRangeSelectorPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->updatePreference()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mReportBarChartPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final onOverallDataLimitChanged(J)V
    .locals 1

    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onOverallDataLimitChanged() : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiApHotspotUsageReport"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
