.class Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;
.super Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;
.source "ApplicationHistoryChartPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->buildChardData(Ljava/util/List;)Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TcpChart"
.end annotation


# instance fields
.field private mMaxSockets:J

.field private mMinSockets:J

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;",
            ">;)V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 124
    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMinSockets:J

    if-eqz p2, :cond_3

    .line 128
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 p1, 0x0

    .line 130
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    .line 131
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mEndTime:J

    .line 132
    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxDomainValue:J

    .line 134
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    .line 135
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->getGoodSockets()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMinSockets:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMinSockets:J

    .line 136
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->getTotalSockets()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMaxSockets:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMaxSockets:J

    goto :goto_0

    .line 139
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    .line 140
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->getTotalSockets()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMinSockets:J

    sub-long/2addr v1, v3

    .line 141
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mPoints:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

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

    .line 142
    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    goto :goto_1

    .line 145
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    .line 146
    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->getGoodSockets()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMinSockets:J

    sub-long/2addr v0, v2

    .line 147
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mSecondPoints:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method protected getDomainAxisTick()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getValueAxisLabels()[Ljava/lang/CharSequence;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 159
    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMaxSockets:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMinSockets:J

    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMaxSockets:J

    add-long/2addr v1, v3

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    .line 160
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMinSockets:J

    .line 161
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    return-object v0
.end method

.method public getValueAxisOffset()J
    .locals 2

    .line 166
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMinSockets:J

    return-wide v0
.end method

.method protected showValueLabel()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
