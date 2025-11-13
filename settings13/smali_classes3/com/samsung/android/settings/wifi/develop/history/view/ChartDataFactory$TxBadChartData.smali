.class public Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;
.super Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;
.source "ChartDataFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TxBadChartData"
.end annotation


# instance fields
.field mMaxTxBad:J

.field mMinTxBad:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;",
            ">;)V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;-><init>(Ljava/util/List;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 190
    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    .line 196
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    .line 197
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTotalTxBad()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    .line 198
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTotalTxBad()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMaxTxBad:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMaxTxBad:J

    goto :goto_0

    .line 201
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    .line 202
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTotalTxBad()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    sub-long/2addr v1, v3

    .line 203
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mPoints:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTimeStampMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getValueAxisLabels()[Ljava/lang/CharSequence;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 210
    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMaxTxBad:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMaxTxBad:J

    add-long/2addr v1, v3

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    .line 211
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    .line 212
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    return-object v0
.end method

.method public getValueAxisOffset()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
