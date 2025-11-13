.class public Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxSuccessChartData;
.super Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;
.source "ChartDataFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TxSuccessChartData"
.end annotation


# instance fields
.field mMaxTxSuccess:J

.field mMinTxSuccess:J


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

    .line 162
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;-><init>(Ljava/util/List;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 158
    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxSuccessChartData;->mMinTxSuccess:J

    .line 164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    .line 165
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTotalTxSuccess()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxSuccessChartData;->mMinTxSuccess:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxSuccessChartData;->mMinTxSuccess:J

    .line 166
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTotalTxSuccess()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxSuccessChartData;->mMaxTxSuccess:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxSuccessChartData;->mMaxTxSuccess:J

    goto :goto_0

    .line 169
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

    .line 170
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTotalTxSuccess()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxSuccessChartData;->mMinTxSuccess:J

    sub-long/2addr v1, v3

    .line 171
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

    .line 172
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

    .line 178
    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxSuccessChartData;->mMaxTxSuccess:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxSuccessChartData;->mMinTxSuccess:J

    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxSuccessChartData;->mMaxTxSuccess:J

    add-long/2addr v1, v3

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    .line 179
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxSuccessChartData;->mMinTxSuccess:J

    .line 180
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
