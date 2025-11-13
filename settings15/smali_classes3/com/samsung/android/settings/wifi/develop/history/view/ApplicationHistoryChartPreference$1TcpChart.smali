.class public final Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;
.super Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mMaxSockets:J

.field public mMinSockets:J


# virtual methods
.method public final getDomainAxisTick()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public final getValueAxisLabels()[Ljava/lang/CharSequence;
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMaxSockets:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMinSockets:J

    add-long/2addr v1, v3

    const-wide/16 v5, 0x2

    div-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    return-object v0
.end method

.method public final getValueAxisOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMinSockets:J

    return-wide v0
.end method
