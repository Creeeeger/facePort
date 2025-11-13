.class public final Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDailyStackedProgressBarEntryConfigList:Ljava/util/List;


# virtual methods
.method public final getTopEntryConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;
    .locals 7

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApDailyStackedProgressBarEntryConfig;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApMonthlyStackedProgressBarEntryConfig;->mDailyStackedProgressBarEntryConfigList:Ljava/util/List;

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
