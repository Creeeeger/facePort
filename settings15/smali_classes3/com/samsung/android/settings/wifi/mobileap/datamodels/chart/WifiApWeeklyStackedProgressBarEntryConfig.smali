.class public final Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

.field public mWeekOfYearCalendar:Ljava/util/Calendar;


# virtual methods
.method public final addDailyStackedProgressBarEntryConfigList(Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding daily stack progress"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->weekOfYearToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiApWeeklyStackedProgressBarEntryConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getTopEntryConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;
    .locals 7

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->getTotalUsage()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v4

    iget-wide v4, v4, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v4, v4

    cmpg-double v6, v1, v4

    if-gtz v6, :cond_0

    move-object v0, v3

    move-wide v1, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getTotalUsage()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    long-to-double v1, v1

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;->mTotalUsed:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    iget-wide v3, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v3, v3

    add-double/2addr v1, v3

    double-to-long v1, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Total Usage(MB): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->weekOfYearToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WifiApWeeklyStackedProgressBarEntryConfig"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final weekOfYearToString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CalendarWeekOfYear: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mWeekOfYearCalendar:Ljava/util/Calendar;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApWeeklyStackedProgressBarEntryConfig;->mWeekOfYearCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
