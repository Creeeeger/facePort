.class public Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;
.super Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;
.source "ChartDataFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RssiChartData"
.end annotation


# instance fields
.field mMaxRssi:I

.field mMinRssi:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;-><init>(Ljava/util/List;)V

    const/16 v0, -0x80

    .line 90
    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMaxRssi:I

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    .line 96
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getRssi()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMinRssi:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMinRssi:I

    .line 97
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getRssi()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMaxRssi:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMaxRssi:I

    goto :goto_0

    .line 100
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

    .line 101
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getRssi()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMinRssi:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 102
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mPoints:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTimeStampMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getValueAxisLabels()[Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 109
    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMaxRssi:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMinRssi:I

    iget v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMaxRssi:I

    add-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 110
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMinRssi:I

    .line 111
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    return-object v0
.end method

.method public getValueAxisOffset()J
    .locals 2

    .line 116
    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMinRssi:I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    neg-int p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public showValueLabel()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
