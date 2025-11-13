.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mFirstTime:Z

.field public mMonthlyStackedProgressBarEntryConfigList:Ljava/util/List;

.field public mSelectedMonthlyCalendar:Ljava/util/Calendar;

.field public mSelectedWeeklyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

.field public mWeeklyStackedProgressBarEntryConfigList:Ljava/util/List;

.field public mWifiApHotspotUsageReport:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    iput-object p3, p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mWeekOfYearCalendar:Ljava/util/Calendar;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mSelectedWeeklyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mFirstTime:Z

    const p2, 0x7f0d0a14

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-super/range {p0 .. p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, -0x5

    invoke-virtual {v10, v11, v12}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v10, v8, v9}, Ljava/util/Calendar;->set(II)V

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v13}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v14, v15, v4, v5}, Lcom/samsung/android/wifi/SemWifiManager;->getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v17, ""

    const-string v6, " "

    const-string v8, "WifiApConnectedDeviceUtils"

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v7, "getTopHotspotClientsForEachDay string: "

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "\\r?\\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget-boolean v7, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    array-length v7, v4

    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v7, :cond_1

    aget-object v23, v4, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    add-int/2addr v5, v9

    :cond_0
    add-int/2addr v12, v9

    goto :goto_1

    :cond_1
    new-array v5, v5, [Ljava/lang/String;

    array-length v7, v4

    const/4 v12, 0x0

    const/16 v23, 0x0

    :goto_2
    if-ge v12, v7, :cond_3

    aget-object v24, v4, v12

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_2

    add-int/lit8 v25, v23, 0x1

    aput-object v24, v5, v23

    move/from16 v23, v25

    goto :goto_3

    :cond_2
    const-string v11, "WifiApSettingsUtils"

    const-string/jumbo v9, "removeEmptyItems() - Found and removing an empty item."

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    :goto_3
    add-int/2addr v12, v9

    const/4 v11, 0x2

    goto :goto_2

    :cond_3
    aget-object v4, v5, v9

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const/4 v4, 0x2

    aget-object v7, v5, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "getTopHotspotClientsForEachDay - lines[0] "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    const/16 v22, 0x0

    aget-object v23, v5, v22

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v4, :cond_6

    aget-object v9, v5, v1

    move-object/from16 v23, v3

    const/4 v3, 0x2

    invoke-virtual {v9, v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    aget-object v26, v9, v3

    const/4 v3, 0x3

    if-ne v7, v3, :cond_4

    const v3, 0x7f1433c1

    invoke-virtual {v13, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v27, v4

    :goto_5
    move-object v4, v10

    goto :goto_6

    :cond_4
    array-length v3, v9

    move/from16 v27, v4

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    aget-object v3, v9, v4

    goto :goto_5

    :cond_5
    move-object v4, v10

    move-object/from16 v3, v17

    :goto_6
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    move-object/from16 v26, v6

    new-instance v6, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;

    invoke-direct {v6, v9, v10, v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "getTopHotspotClientsForEachDay - Adding progress: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    add-int/2addr v7, v3

    move-object v10, v4

    move-object/from16 v3, v23

    move-object/from16 v6, v26

    move/from16 v4, v27

    goto :goto_4

    :cond_6
    move-object/from16 v23, v3

    move-object v4, v10

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v1, v0, v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;-><init>(Ljava/util/List;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getTopHotspotClientsForEachDay - Adding daily stacked progress: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-direct {v0, v11, v12}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mTotalUsed:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    move-object v10, v4

    move-object/from16 v3, v23

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v11, 0x2

    const/4 v12, -0x5

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v26, v6

    move-object v4, v10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTopHotspotClientsForEachDay - startDate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", list count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v5, -0x5

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->add(II)V

    const/4 v3, 0x1

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    new-instance v5, Ljava/util/Date;

    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->NUMBER_OF_DAYS_IN_WEEK:Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->getLastDayOfWeek(J)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Start calendar: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", End calendar: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v5, v9, v11

    const-string v9, ", list Count: "

    const-string v10, "WifiApWeeklyStackedProgressBarEntryConfig"

    if-gtz v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "While loop Start calendar: "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v5, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    const-string v11, "Adding empty stacked progress List"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v5, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Calendar;

    iput-object v12, v5, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mWeekOfYearCalendar:Ljava/util/Calendar;

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v23, v6

    const-string v6, "Created "

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->weekOfYearToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    iget-object v10, v9, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mCalendar:Ljava/util/Calendar;

    iget-object v11, v5, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mWeekOfYearCalendar:Ljava/util/Calendar;

    invoke-static {v11, v10}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->isEqualsCalendarWeekOfYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    move-wide/from16 v27, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v10, v11, v14, v15}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->isEqualsDate(JJ)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Adding daily Item for Current day: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getProgressBarEntryConfigForToday(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->addDailyStackedProgressBarEntryConfigList(Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;)V

    goto :goto_9

    :cond_8
    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->addDailyStackedProgressBarEntryConfigList(Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;)V

    :goto_9
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Adding daily Item: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_9
    move-wide/from16 v27, v14

    :goto_a
    move-wide/from16 v14, v27

    goto :goto_8

    :cond_a
    move-wide/from16 v27, v14

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "Weekly list from framework is empty"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getProgressBarEntryConfigForToday(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->addDailyStackedProgressBarEntryConfigList(Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;)V

    :cond_b
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->add(II)V

    move-object/from16 v6, v23

    move-wide/from16 v14, v27

    goto/16 :goto_7

    :cond_c
    move-object/from16 v23, v6

    move-wide/from16 v27, v14

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Outside loop Start calendar: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getTopHotspotClientsForEachWeek - startDate: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    move-wide/from16 v5, v27

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mWeeklyStackedProgressBarEntryConfigList:Ljava/util/List;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getMonthlyDataUsage()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v26

    const/4 v5, 0x2

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v8, v3, v5

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;

    invoke-direct {v3, v11, v12, v8}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;-><init>(JLjava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    invoke-direct {v3, v4, v13, v14}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;-><init>(Ljava/util/List;J)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_d
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mMonthlyStackedProgressBarEntryConfigList:Ljava/util/List;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mWeeklyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mWeeklyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mSelectedWeeklyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    goto :goto_c

    :cond_e
    const/4 v2, 0x1

    :goto_c
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mMonthlyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mMonthlyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mCalendar:Ljava/util/Calendar;

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mSelectedMonthlyCalendar:Ljava/util/Calendar;

    :cond_f
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mWifiApHotspotUsageReport:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mReportCalendarRangeSelectorPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedWeekDateInMillis:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->getFirstDayOfWeek(J)J

    move-result-wide v1

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mSelectedWeeklyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    if-eqz v3, :cond_11

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mWeekOfYearCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->isEqualsCalendarWeekOfYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mWeeklyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v6, v4, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mWeekOfYearCalendar:Ljava/util/Calendar;

    invoke-static {v6, v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->isEqualsCalendarWeekOfYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_10

    iput-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mSelectedWeeklyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updatePreference week with: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->weekOfYearToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WifiApClientsReportBarChartPreference"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mWifiApHotspotUsageReport:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mReportCalendarRangeSelectorPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportCalendarRangeSelectorPreference;->mSelectedMonthDateInMillis:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mSelectedMonthlyCalendar:Ljava/util/Calendar;

    const v1, 0x7f0a1147

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;

    const v3, 0x7f0a09a0

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;

    const v4, 0x7f0a087a

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a016b

    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a107d

    invoke-virtual {v2, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f0a016a

    invoke-virtual {v2, v8}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v3, :cond_43

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mWifiApHotspotUsageReport:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;

    iget-object v8, v8, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApHotspotUsageReport;->mWeeklyAndMonthlyTabPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsMonthlyWeeklyTabPreference;

    iget v8, v8, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsMonthlyWeeklyTabPreference;->mTabIndexSelected:I

    const-string v11, "Invalid Unit found make default to MB"

    const-string v12, "WifiApDataUsageIAxisValueFormatter"

    const-string v13, "GB"

    const-string/jumbo v14, "sec"

    sget-object v15, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-object/from16 v28, v9

    const/high16 v29, 0x3fa00000    # 1.25f

    const v30, 0x3f8ccccd    # 1.1f

    const-wide v31, 0x41cdcd6500000000L    # 1.0E9

    const-string v9, "MB"

    move-object/from16 v33, v6

    const/high16 v34, 0x3f800000    # 1.0f

    move-object/from16 v35, v7

    if-nez v8, :cond_2b

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mSelectedWeeklyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    iput-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    iget-object v8, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    move-object/from16 v37, v2

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mWeekOfYearCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    move-object v2, v4

    move-object/from16 v38, v5

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->getFirstDayOfWeek(J)J

    move-result-wide v4

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mWeekOfYearCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    move-object v7, v10

    move-object/from16 v39, v11

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->getLastDayOfWeek(J)J

    move-result-wide v10

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v10, v23

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v35

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "WifiApClientsWeeklyBarChart"

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_e
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v35

    cmp-long v5, v19, v35

    if-gtz v5, :cond_14

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    move-object/from16 v23, v12

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-direct {v5, v4, v11, v12}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;-><init>(Ljava/util/List;J)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    iget-object v12, v11, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mCalendar:Ljava/util/Calendar;

    invoke-static {v12, v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->isEqualsDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v12

    if-eqz v12, :cond_12

    move-object v5, v11

    goto :goto_f

    :cond_13
    iget-object v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    const/4 v5, 0x6

    invoke-virtual {v6, v5, v4}, Ljava/util/Calendar;->add(II)V

    move-object/from16 v4, v19

    move-object/from16 v12, v23

    goto :goto_e

    :cond_14
    move-object/from16 v23, v12

    sget-boolean v4, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    iget-boolean v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mCurrentWeekClick:Z

    if-eqz v4, :cond_16

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    iget-object v8, v8, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mCalendar:Ljava/util/Calendar;

    invoke-static {v8, v4}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->isEqualsDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v8

    if-eqz v8, :cond_15

    const/4 v8, 0x6

    rsub-int/lit8 v11, v6, 0x6

    iput v11, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mShiftIndexFromRightToLeft:I

    :cond_15
    const/4 v8, 0x1

    add-int/2addr v6, v8

    goto :goto_10

    :cond_16
    iget-object v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->getTopEntryConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->getTotalUsage()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v4

    iput-object v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mTopWifiApDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mWeekOfYearCalendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->getFirstDayOfWeek(J)J

    move-result-wide v4

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mWeekOfYearCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->getLastDayOfWeek(J)J

    move-result-wide v11

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updating BarGraph for startDayOfWeek:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", endDayOfWeek: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyIBarDataSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarEntryArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_11
    iget-object v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1b

    iget-object v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mProgressBarEntryConfigList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v5, 0x4

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarEntryArrayList:Ljava/util/ArrayList;

    new-instance v6, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v8, v3

    invoke-direct {v6, v8, v4}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[F)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_12
    const/4 v4, 0x1

    goto/16 :goto_15

    :cond_17
    iget-object v5, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mTopWifiApDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iget-object v6, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x4

    new-array v6, v5, [F

    const/4 v5, 0x0

    const/4 v8, 0x0

    aput v8, v6, v5

    const/4 v5, 0x1

    aput v8, v6, v5

    const/4 v5, 0x2

    aput v8, v6, v5

    const/4 v5, 0x3

    aput v8, v6, v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x3

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;

    iget-object v8, v8, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->mDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-virtual {v8}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v10

    double-to-float v8, v10

    aput v8, v6, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_13

    :cond_18
    iget-object v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarEntryArrayList:Ljava/util/ArrayList;

    new-instance v5, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v8, v3

    invoke-direct {v5, v8, v6}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[F)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_19
    const/4 v5, 0x4

    new-array v6, v5, [F

    const/4 v5, 0x0

    const/4 v8, 0x0

    aput v8, v6, v5

    const/4 v5, 0x1

    aput v8, v6, v5

    const/4 v5, 0x2

    aput v8, v6, v5

    const/4 v5, 0x3

    aput v8, v6, v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x3

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;

    iget-object v8, v8, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->mDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ljava/math/BigDecimal;

    iget-wide v11, v8, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v11, v11

    div-double v11, v11, v31

    invoke-direct {v10, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v8, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v11, 0x2

    invoke-virtual {v10, v11, v8}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    double-to-float v8, v10

    aput v8, v6, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_14

    :cond_1a
    iget-object v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarEntryArrayList:Ljava/util/ArrayList;

    new-instance v5, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v8, v3

    invoke-direct {v5, v8, v6}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[F)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    :goto_15
    add-int/2addr v3, v4

    goto/16 :goto_11

    :cond_1b
    iget-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSelectedBarEntriesDataInMB:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x3

    :goto_16
    if-ltz v4, :cond_1c

    sget-object v5, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->STACKED_BAR_COLORS:[I

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    :cond_1c
    new-instance v4, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarEntryArrayList:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;)V

    iput-object v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    iput-object v3, v4, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyIBarDataSets:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/github/mikephil/charting/data/BarData;

    iget-object v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyIBarDataSets:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    iput-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setData(Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;)V

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v3, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v5

    iput v5, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mValueTextSize:F

    iget-object v3, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawIcons:Z

    iput-boolean v4, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawValues:Z

    iput-boolean v5, v1, Lcom/github/mikephil/charting/charts/BarChart;->mHighlightFullBarEnabled:Z

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setHovered(Z)V

    iget-object v3, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescription:Lcom/github/mikephil/charting/components/Description;

    iput-boolean v4, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    iput-boolean v4, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    iput-boolean v4, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    iput-boolean v4, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    iput-boolean v5, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    iput-boolean v5, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleXRangeMaximum(F)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->chartValueSelected:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

    iput-object v3, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->chartGestureListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

    iput-object v3, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGestureListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

    iput-boolean v5, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    iget-object v3, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v4, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v5, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    sget-boolean v6, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    iput-boolean v6, v3, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    iput-boolean v6, v4, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    iget v4, v5, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularity()V

    const/high16 v8, 0x40400000    # 3.0f

    cmpg-float v10, v4, v8

    iget-object v11, v5, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-gez v10, :cond_1d

    invoke-virtual {v1, v6, v8, v11}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleYRange(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    :goto_17
    const/4 v4, 0x4

    goto :goto_18

    :cond_1d
    mul-float v8, v4, v30

    mul-float v4, v4, v29

    invoke-virtual {v1, v8, v4, v11}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleYRange(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    goto :goto_17

    :goto_18
    invoke-virtual {v5, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(I)V

    const/4 v4, 0x0

    iput-boolean v4, v5, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    invoke-virtual {v5, v6}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    iput-boolean v4, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragDecelerationEnabled:Z

    iput v6, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragDecelerationFrictionCoef:F

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mTouchEnabled:Z

    iget-object v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    invoke-static {v4, v6, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getXAxisRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;

    move-result-object v4

    iput-object v4, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v4, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;->mLabels:Ljava/util/ArrayList;

    sget-object v8, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-static {v11}, Ljava/time/temporal/WeekFields;->of(Ljava/util/Locale;)Ljava/time/temporal/WeekFields;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/DayOfWeek;->getValue()I

    move-result v11

    const/4 v12, 0x0

    :goto_19
    sget-object v16, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    move-object/from16 v19, v7

    invoke-virtual/range {v16 .. v16}, Ljava/time/DayOfWeek;->getValue()I

    move-result v7

    if-ge v12, v7, :cond_1f

    const/4 v7, 0x7

    if-le v11, v7, :cond_1e

    sget-object v7, Ljava/time/DayOfWeek;->MONDAY:Ljava/time/DayOfWeek;

    invoke-virtual {v7}, Ljava/time/DayOfWeek;->getValue()I

    move-result v11

    :cond_1e
    invoke-static {v11}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v7

    move-object/from16 v35, v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Ljava/time/DayOfWeek;->getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    add-int/2addr v11, v2

    add-int/2addr v12, v2

    move-object/from16 v7, v19

    move-object/from16 v2, v35

    goto :goto_19

    :cond_1f
    move-object/from16 v35, v2

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ViewUtils;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_20
    iget-object v2, v4, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v4, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mXLabelFormatter:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getBarChartRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarRenderer:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mXLabelFormatter:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyChartXLabelFormatter;

    if-nez v2, :cond_21

    new-instance v2, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;

    iget v4, v3, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    invoke-direct {v2, v4}, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;-><init>(I)V

    iput-object v2, v3, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    goto :goto_1a

    :cond_21
    iput-object v2, v3, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    :goto_1a
    iget-object v2, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    iput-object v2, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarRenderer:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;

    if-eqz v2, :cond_22

    iput-object v2, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;

    :cond_22
    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setExtraOffsets(FF)V

    iput-object v15, v3, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f060b67

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1b
    iget-object v7, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_23

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v10, "dd"

    invoke-direct {v8, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v7, 0x1

    add-int/2addr v4, v7

    goto :goto_1b

    :cond_23
    new-instance v4, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;

    invoke-direct {v4, v2}, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;-><init>(Ljava/util/Collection;)V

    iput-object v4, v3, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mContext:Landroid/content/Context;

    const v3, 0x7f060b67

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, v5, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    const/4 v2, 0x0

    invoke-static {v14, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    const/16 v4, 0x190

    invoke-static {v3, v4, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, v5, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v5, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060b44

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, v5, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/views/chart/WifiApDataUsageIAxisValueFormatter;

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/views/chart/WifiApDataUsageIAxisValueFormatter;-><init>(Landroid/content/Context;)V

    iget-object v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mTopWifiApDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual {v3, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_1c

    :cond_24
    move-object/from16 v7, v23

    move-object/from16 v4, v39

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v9, v2, Lcom/samsung/android/settings/wifi/mobileap/views/chart/WifiApDataUsageIAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    goto :goto_1d

    :cond_25
    :goto_1c
    iput-object v3, v2, Lcom/samsung/android/settings/wifi/mobileap/views/chart/WifiApDataUsageIAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    :goto_1d
    iput-object v2, v5, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawMarkers:Z

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarker;

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->getTopEntryConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    move-result-object v5

    invoke-direct {v2, v3, v6, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarker;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    const-wide/16 v6, 0x0

    invoke-direct {v3, v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    iput-object v4, v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarker;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->getTotalUsage()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    const v3, 0x7f0a03cf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-boolean v4, v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mIsRTL:Z

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    const v3, 0x7f0a02fa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarker;->mMarkerXLabelText:Landroid/widget/TextView;

    const v3, 0x7f0a02fb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarker;->mMarkerYValueText:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMarkerHeight:F

    iput-object v2, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getEntryCount()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mIndexOfBarChartToBeHighlight:F

    new-instance v3, Lcom/github/mikephil/charting/highlight/Highlight;

    iget v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mShiftIndexFromRightToLeft:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sub-float v2, v2, v34

    invoke-direct {v3, v2, v2}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FF)V

    filled-new-array {v3}, [Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v2

    iput-object v2, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_26

    iget-object v2, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    goto :goto_1e

    :cond_26
    iget-object v3, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    iput-object v2, v3, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    :goto_1e
    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    iget v2, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mIndexOfBarChartToBeHighlight:F

    iget v3, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mShiftIndexFromRightToLeft:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float v2, v2, v34

    float-to-int v2, v2

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    iget-wide v2, v2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mDateInMillis:J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->updateBarSelectedListener$1(J)V

    iget-object v2, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    check-cast v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedInfoLoaded:Z

    iget v3, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mShiftIndexFromRightToLeft:I

    const/4 v4, 0x6

    rsub-int/lit8 v6, v3, 0x6

    int-to-float v3, v6

    float-to-int v3, v3

    iput v3, v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedLabel:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f14338b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v35

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mSelectedWeeklyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    iget-object v3, v2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mWeekOfYearCalendar:Ljava/util/Calendar;

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->NUMBER_OF_DAYS_IN_WEEK:Ljava/lang/Integer;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v6, v5, :cond_27

    if-ne v4, v3, :cond_27

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->getTotalUsage()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v3

    iget-wide v3, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v3, v3

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->getNumberOfDaysElapsedInCurrentWeek()I

    move-result v5

    :goto_1f
    int-to-double v5, v5

    div-double/2addr v3, v5

    double-to-long v3, v3

    goto :goto_20

    :cond_27
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->getTotalUsage()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v3

    iget-wide v3, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v3, v3

    sget-object v5, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->NUMBER_OF_DAYS_IN_WEEK:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1f

    :goto_20
    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-direct {v5, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Average Usage(MB): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->weekOfYearToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->getNumberOfDaysElapsedInCurrentWeek()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v38

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f1432d8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v8, v37

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f143408

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mSelectedWeeklyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->getTotalUsage()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v12, v33

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;)V

    iput-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mOnBarSelectedCLickListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference$1;

    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mFirstTime:Z

    if-eqz v1, :cond_43

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mSelectedWeeklyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    iget-wide v5, v4, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mDateInMillis:J

    invoke-static {v5, v6, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->isEqualsDate(JJ)Z

    move-result v5

    if-eqz v5, :cond_28

    move-object v9, v4

    goto :goto_21

    :cond_29
    const/4 v9, 0x0

    :goto_21
    if-eqz v9, :cond_2a

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->updateDeviceList(Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;)V

    :cond_2a
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mFirstTime:Z

    goto/16 :goto_33

    :cond_2b
    move-object v8, v2

    move-object v6, v5

    move-object v7, v12

    move-object/from16 v10, v23

    move-object/from16 v12, v33

    const/4 v2, 0x0

    move-object v5, v4

    move-object v4, v11

    move-object/from16 v11, v35

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->removeDeviceList$1()V

    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mMonthlyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    move-object/from16 v35, v5

    move-object/from16 v38, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v12, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-object/from16 v23, v7

    move-object/from16 v37, v8

    const-wide/16 v7, 0x0

    invoke-direct {v12, v7, v8}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string v6, "Adding empty progress List"

    const-string v7, "WifiApDailyStackedProgressBarEntryConfig"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "Created Entry for Calendar: "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v28

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2c

    iput-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    :cond_2c
    iget-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    :cond_2d
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mSelectedMonthlyCalendar:Ljava/util/Calendar;

    iput-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mWifiApMonthlyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, -0x5

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->add(II)V

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    move-object v8, v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v7, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "WifiApClientsMonthlyBarChart"

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :goto_22
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    cmp-long v7, v11, v20

    if-gtz v7, :cond_31

    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-direct {v7, v13, v11, v12}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;-><init>(Ljava/util/List;J)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_23
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_30

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    iget-object v13, v12, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mCalendar:Ljava/util/Calendar;

    sget-object v18, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->NUMBER_OF_DAYS_IN_WEEK:Ljava/lang/Integer;

    if-eqz v13, :cond_2e

    move-object/from16 v18, v1

    move-object/from16 v20, v6

    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object/from16 v21, v11

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v6, v11, :cond_2f

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v6, v11, :cond_2f

    move-object v7, v12

    goto :goto_24

    :cond_2e
    move-object/from16 v18, v1

    move-object/from16 v20, v6

    move-object/from16 v21, v11

    :cond_2f
    :goto_24
    move-object/from16 v1, v18

    move-object/from16 v6, v20

    move-object/from16 v11, v21

    goto :goto_23

    :cond_30
    move-object/from16 v18, v1

    move-object/from16 v20, v6

    iget-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Ljava/util/Calendar;->add(II)V

    move-object/from16 v1, v18

    move-object/from16 v6, v20

    goto :goto_22

    :cond_31
    sget-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    iget-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mWifiApMonthlyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;->getTopEntryConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->getTotalUsage()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v1

    iput-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mTopWifiApDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iget-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarEntryArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_25
    iget-object v5, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_35

    iget-object v5, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    iget-object v5, v5, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mProgressBarEntryConfigList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_33

    iget-object v5, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarEntryArrayList:Ljava/util/ArrayList;

    new-instance v6, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v7, v1

    const/4 v11, 0x0

    invoke-direct {v6, v7, v11}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    const/4 v5, 0x1

    goto/16 :goto_28

    :cond_33
    iget-object v6, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mTopWifiApDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iget-object v7, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;

    iget-object v7, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarEntryArrayList:Ljava/util/ArrayList;

    new-instance v11, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v12, v1

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->mDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-object v13, v5

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-direct {v11, v12, v5}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v13

    goto :goto_26

    :cond_34
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;

    iget-object v7, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarEntryArrayList:Ljava/util/ArrayList;

    new-instance v11, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v12, v1

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->mDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Ljava/math/BigDecimal;

    move-object/from16 v18, v5

    iget-wide v5, v6, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v5, v5

    div-double v5, v5, v31

    invoke-direct {v13, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v5, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v6, 0x2

    invoke-virtual {v13, v6, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v5

    move-object v13, v7

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    double-to-float v5, v6

    invoke-direct {v11, v12, v5}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v18

    goto :goto_27

    :goto_28
    add-int/2addr v1, v5

    goto/16 :goto_25

    :cond_35
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_29
    iget-object v6, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_37

    iget-object v6, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->isEqualsDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v6

    if-eqz v6, :cond_36

    const/4 v6, 0x5

    rsub-int/lit8 v7, v5, 0x5

    iput v7, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mSelectedXAxisIndexInReverseOrder:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateCalenderSelectedBar "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mSelectedXAxisIndexInReverseOrder:I

    invoke-static {v6, v7, v10}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_36
    const/4 v6, 0x1

    add-int/2addr v5, v6

    add-int/2addr v1, v6

    goto :goto_29

    :cond_37
    iget-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyIBarDataSetArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->STACKED_BAR_COLORS:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v5, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarEntryArrayList:Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;)V

    iput-object v2, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    iput-object v1, v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v5

    iput v5, v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mValueTextSize:F

    iget-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawIcons:Z

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawValues:Z

    new-instance v2, Lcom/github/mikephil/charting/data/BarData;

    filled-new-array {v1}, [Lcom/github/mikephil/charting/data/BarDataSet;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>([Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;)V

    iput-object v2, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarData:Lcom/github/mikephil/charting/data/BarData;

    const v1, 0x3ed70a3d    # 0.42f

    iput v1, v2, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setData(Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;)V

    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    iput-boolean v1, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    iput-boolean v1, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    iput-boolean v1, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    iput-boolean v1, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    iget-object v2, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iput-boolean v1, v2, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleXRangeMaximum(F)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    iget-object v2, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->chartValueSelectedMonthly:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart$1;

    iput-object v2, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    iput-boolean v1, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    iput-boolean v1, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mTouchEnabled:Z

    iget-object v1, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v2, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v5, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    sget-boolean v6, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    iput-boolean v6, v1, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    iget-object v7, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescription:Lcom/github/mikephil/charting/components/Description;

    iput-boolean v6, v7, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/github/mikephil/charting/charts/BarChart;->mHighlightFullBarEnabled:Z

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setHovered(Z)V

    iput-object v15, v1, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f060b67

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_2a
    iget-object v10, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_38

    iget-object v10, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    iget-object v10, v10, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "MM"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v10, 0x1

    add-int/2addr v7, v10

    goto :goto_2a

    :cond_38
    new-instance v7, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;

    invoke-direct {v7, v6}, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;-><init>(Ljava/util/Collection;)V

    iput-object v7, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    iget v2, v5, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/AxisBase;->setGranularity()V

    const/high16 v6, 0x40400000    # 3.0f

    cmpg-float v7, v2, v6

    iget-object v10, v5, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-gez v7, :cond_39

    invoke-virtual {v3, v1, v6, v10}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleYRange(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    :goto_2b
    const/4 v1, 0x4

    goto :goto_2c

    :cond_39
    mul-float v1, v2, v30

    mul-float v2, v2, v29

    invoke-virtual {v3, v1, v2, v10}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setVisibleYRange(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    goto :goto_2b

    :goto_2c
    invoke-virtual {v5, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(I)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060b67

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, v5, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    const/4 v1, 0x0

    iput-boolean v1, v5, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    invoke-static {v14, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    const/16 v6, 0x190

    invoke-static {v2, v6, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, v5, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v5, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f060b44

    invoke-virtual {v2, v6}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, v5, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    iput-boolean v1, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragDecelerationEnabled:Z

    const/4 v1, 0x0

    iput v1, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragDecelerationFrictionCoef:F

    iget-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_DATA_MONTHLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getXAxisRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;

    move-result-object v1

    iput-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mXAxisRendererMonthly:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;

    iget-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getBarChartRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;

    move-result-object v1

    iput-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarChartRenderer:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsRoundBarRenderer;

    iget-object v6, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mXAxisRendererMonthly:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;

    iput-object v6, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    if-eqz v1, :cond_3a

    iput-object v1, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;

    :cond_3a
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/views/chart/WifiApDataUsageIAxisValueFormatter;

    iget-object v6, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/settings/wifi/mobileap/views/chart/WifiApDataUsageIAxisValueFormatter;-><init>(Landroid/content/Context;)V

    iget-object v7, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mTopWifiApDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3c

    invoke-virtual {v6, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3b

    goto :goto_2d

    :cond_3b
    move-object/from16 v7, v23

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v9, v1, Lcom/samsung/android/settings/wifi/mobileap/views/chart/WifiApDataUsageIAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    goto :goto_2e

    :cond_3c
    :goto_2d
    iput-object v6, v1, Lcom/samsung/android/settings/wifi/mobileap/views/chart/WifiApDataUsageIAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    :goto_2e
    iput-object v1, v5, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawMarkers:Z

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mContext:Landroid/content/Context;

    iget-object v5, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    iget-object v6, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mWifiApMonthlyStackedProgressBarEntryConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;->getTopEntryConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    move-result-object v6

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    const-wide/16 v7, 0x0

    invoke-direct {v2, v7, v8}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    iput-object v5, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->getTotalUsage()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    const v2, 0x7f0a03cf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-boolean v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mIsRTL:Z

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    const v2, 0x7f0a02fa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;->mMarkerXLabelText:Landroid/widget/TextView;

    const v2, 0x7f0a02fb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;->mMarkerYValueText:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070061

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMarkerHeight:F

    iput-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyMarkerView:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;

    iput-object v1, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    const/high16 v1, 0x41a00000    # 20.0f

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setExtraOffsets(FF)V

    iget-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mMonthlyBarData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getEntryCount()I

    move-result v1

    int-to-float v1, v1

    new-instance v2, Lcom/github/mikephil/charting/highlight/Highlight;

    iget v4, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mSelectedXAxisIndexInReverseOrder:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    sub-float v1, v1, v34

    invoke-direct {v2, v1, v1}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FF)V

    filled-new-array {v2}, [Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v1

    iput-object v1, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_3d

    iget-object v1, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    goto :goto_2f

    :cond_3d
    iget-object v4, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    iput-object v1, v4, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    :goto_2f
    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    iget-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mXAxisRendererMonthly:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;

    check-cast v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedInfoLoaded:Z

    iget v4, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mSelectedXAxisIndexInReverseOrder:I

    const/4 v5, 0x5

    rsub-int/lit8 v8, v4, 0x5

    int-to-float v4, v8

    float-to-int v4, v4

    iput v4, v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->mSelectedLabel:I

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f14338a

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v35

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mMonthlyStackedProgressBarEntryConfigList:Ljava/util/List;

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_40

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_40

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mMonthlyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v6, v4

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    invoke-virtual {v8}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->getTotalUsage()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v8

    iget-wide v8, v8, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v8, v8

    cmpl-double v10, v8, v4

    if-nez v10, :cond_3e

    const/4 v10, 0x1

    add-int/2addr v2, v10

    goto :goto_31

    :cond_3e
    const/4 v10, 0x1

    :goto_31
    add-double/2addr v6, v8

    goto :goto_30

    :cond_3f
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mMonthlyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    int-to-double v1, v1

    div-double v4, v6, v1

    :cond_40
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    double-to-long v4, v4

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v38

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f1432da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v37

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mMonthlyStackedProgressBarEntryConfigList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mSelectedMonthlyCalendar:Ljava/util/Calendar;

    iget-wide v6, v4, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mDateInMillis:J

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApDateUtils;->isEqualsDate(JJ)Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->getTotalUsage()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v1

    goto :goto_32

    :cond_42
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f143407

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v33

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference$1;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;)V

    iput-object v1, v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsMonthlyBarChart;->mOnBarSelectedCLickListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference$1;

    :cond_43
    :goto_33
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final removeDeviceList$1()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)V

    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)V

    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)V

    const/16 v0, 0x67

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateDeviceList(Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;)V
    .locals 13

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->removeDeviceList$1()V

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mProgressBarEntryConfigList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hotspotClientList.size(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiApClientsReportBarChartPreference"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_2

    add-int/lit8 v5, v3, 0x64

    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->PROGRESS_COLORS:[I

    aget v6, v6, v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;

    iget-object v8, v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->mProgressEntryName:Ljava/lang/String;

    new-instance v9, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsReportBarChartPreference;->mContext:Landroid/content/Context;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApProgressBarEntryConfig;->mDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-virtual {v7, v10}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v10}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0d0a37

    invoke-virtual {v9, v11}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object v10, v9, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    const v11, 0x7f060b77

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    iput v11, v9, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mWarningColor:I

    invoke-virtual {v9}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x1010036

    invoke-static {v11, v12}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getColorFromAttribute(Landroid/content/Context;I)I

    move-result v11

    iput v11, v9, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mSummaryColor:I

    invoke-virtual {v9, v11}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSummaryTextColor(I)V

    const v11, 0x7f080ac2

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v9, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v11, v10, :cond_0

    iput-object v10, v9, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    iget-object v10, v9, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    const/4 v11, -0x2

    invoke-static {v10, v11}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v10

    iput v10, v9, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconWidthInPx:I

    iget-object v10, v9, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    const/16 v11, 0x28

    invoke-static {v10, v11}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v10

    iput v10, v9, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconHeightInPx:I

    invoke-virtual {v9}, Landroidx/preference/Preference;->notifyChanged()V

    iput v6, v9, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconColor:I

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f1433c1

    invoke-virtual {v9, v6}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v8}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    iput-boolean v2, v9, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mDividerAllowedAbove:Z

    iput-boolean v2, v9, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mDividerAllowedBelow:Z

    invoke-virtual {v9}, Landroidx/preference/Preference;->notifyChanged()V

    invoke-virtual {v9, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v9, v5}, Landroidx/preference/Preference;->setOrder(I)V

    iput-boolean v2, v9, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mDividerAllowedAbove:Z

    iput-boolean v2, v9, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mDividerAllowedBelow:Z

    invoke-virtual {v9}, Landroidx/preference/Preference;->notifyChanged()V

    iput-object v6, v9, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9}, Landroidx/preference/Preference;->notifyChanged()V

    invoke-virtual {v9, v6}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v2, v9, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgressBarVisibility:Z

    invoke-virtual {v9}, Landroidx/preference/Preference;->notifyChanged()V

    invoke-virtual {v9, v2}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIconDividerVisibility(Z)V

    invoke-virtual {v9, v4}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-virtual {v9, v4}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setEnabled(Z)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    if-lez v0, :cond_3

    const-string/jumbo p0, "sec_wifi_ap_dummy_preference"

    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    return-void
.end method
