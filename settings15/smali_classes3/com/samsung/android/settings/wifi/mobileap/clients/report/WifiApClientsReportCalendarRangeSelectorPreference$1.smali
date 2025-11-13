.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWifiApHotspotUsageReport:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mWeeklyAndMonthlyTabPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsMonthlyWeeklyTabPreference;

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsMonthlyWeeklyTabPreference;->mTabIndexSelected:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWeekDateInMillisArrayList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedWeekDateInMillis:Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWeekDateInMillisArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWeekDateInMillisArrayList:Ljava/util/ArrayList;

    add-int/2addr p1, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedWeekDateInMillis:Ljava/lang/Long;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->findMatchingMonthIndex()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mMonthDateInMillisArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mMonthDateInMillisArrayList:Ljava/util/ArrayList;

    add-int/2addr p1, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedMonthDateInMillis:Ljava/lang/Long;

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->updatePreference()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWifiApHotspotUsageReport:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mReportBarChartPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :goto_2
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWifiApHotspotUsageReport:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mWeeklyAndMonthlyTabPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsMonthlyWeeklyTabPreference;

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsMonthlyWeeklyTabPreference;->mTabIndexSelected:I

    const/4 v1, 0x1

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWeekDateInMillisArrayList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedWeekDateInMillis:Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWeekDateInMillisArrayList:Ljava/util/ArrayList;

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedWeekDateInMillis:Ljava/lang/Long;

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->findMatchingMonthIndex()I

    move-result p1

    if-gtz p1, :cond_7

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mMonthDateInMillisArrayList:Ljava/util/ArrayList;

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedMonthDateInMillis:Ljava/lang/Long;

    :goto_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->updatePreference()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWifiApHotspotUsageReport:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mReportBarChartPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
