.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;
.super Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mMonthDateInMillisArrayList:Ljava/util/ArrayList;

.field public final mNextButtonClickListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;

.field public final mPreviousButtonClickListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;

.field public mSelectedMonthDateInMillis:Ljava/lang/Long;

.field public mSelectedWeekDateInMillis:Ljava/lang/Long;

.field public final mWeekDateInMillisArrayList:Ljava/util/ArrayList;

.field public mWifiApHotspotUsageReport:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWeekDateInMillisArrayList:Ljava/util/ArrayList;

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedWeekDateInMillis:Ljava/lang/Long;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mMonthDateInMillisArrayList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedMonthDateInMillis:Ljava/lang/Long;

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;I)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mPreviousButtonClickListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;I)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mNextButtonClickListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWeekDateInMillisArrayList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mMonthDateInMillisArrayList:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x2

    const/4 p3, -0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->add(II)V

    const/4 p4, 0x5

    const/4 v0, 0x1

    invoke-virtual {p1, p4, v0}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    const-string v3, "WifiApClientsReportCalendarRangeSelectorPreference"

    const/4 v4, 0x3

    if-lez v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v2, v5, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWeekDateInMillisArrayList:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedWeekDateInMillis:Ljava/lang/Long;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2, p4, v0}, Ljava/util/Calendar;->set(II)V

    :goto_1
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long p1, p3, v4

    if-lez p1, :cond_2

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    if-ne p1, p3, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mMonthDateInMillisArrayList:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedMonthDateInMillis:Ljava/lang/Long;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mNextButtonClickListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mNextButtonClickListener:Landroid/view/View$OnClickListener;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mPreviousButtonClickListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference$1;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mPreviousButtonClickListener:Landroid/view/View$OnClickListener;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mContext:Landroid/content/Context;

    const p2, 0x7f060b76

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    return-void

    :cond_2
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Adding Monthly date: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->getDateRangeString(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mMonthDateInMillisArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p2, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    :cond_3
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Adding Weekly date: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->getDateRangeString(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWeekDateInMillisArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4, v0}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final findMatchingMonthIndex()I
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mMonthDateInMillisArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedMonthDateInMillis:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->NUMBER_OF_DAYS_IN_WEEK:Ljava/lang/Integer;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->isEqualsDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public final updatePreference()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWifiApHotspotUsageReport:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mWeeklyAndMonthlyTabPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsMonthlyWeeklyTabPreference;

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsMonthlyWeeklyTabPreference;->mTabIndexSelected:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedWeekDateInMillis:Ljava/lang/Long;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->getDateRangeString(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWeekDateInMillisArrayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedWeekDateInMillis:Ljava/lang/Long;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mIsPreviousButtonEnabled:Z

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mIsPreviousButtonEnabled:Z

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mWeekDateInMillisArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mIsNextButtonEnabled:Z

    goto :goto_3

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mIsNextButtonEnabled:Z

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedMonthDateInMillis:Ljava/lang/Long;

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->NUMBER_OF_DAYS_IN_WEEK:Ljava/lang/Integer;

    const/16 v4, 0x38

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v0, v5, v6, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->findMatchingMonthIndex()I

    move-result v0

    if-gtz v0, :cond_4

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mIsPreviousButtonEnabled:Z

    goto :goto_2

    :cond_4
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mIsPreviousButtonEnabled:Z

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mMonthDateInMillisArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_5

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mIsNextButtonEnabled:Z

    goto :goto_3

    :cond_5
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mIsNextButtonEnabled:Z

    :goto_3
    return-void
.end method
