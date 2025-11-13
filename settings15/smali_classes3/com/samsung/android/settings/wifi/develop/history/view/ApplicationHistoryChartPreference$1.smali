.class public final Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mTcpSocketStats:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mPoints:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mSecondPoints:Ljava/util/List;

    const-wide p3, 0x7fffffffffffffffL

    iput-wide p3, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMinSockets:J

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    iget-object p5, p5, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mDate:Ljava/util/Date;

    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    invoke-static {p3, p1}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    iget-object p5, p5, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mDate:Ljava/util/Date;

    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxDomainValue:J

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mGoodSockets:I

    int-to-long v1, v1

    iget-wide v3, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMinSockets:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMinSockets:J

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mGoodSockets:I

    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mWaitSockets:I

    add-int/2addr v1, v2

    iget v0, v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mSlowSockets:I

    add-int/2addr v1, v0

    int-to-long v0, v1

    iget-wide v2, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMaxSockets:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMaxSockets:J

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mGoodSockets:I

    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mWaitSockets:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mSlowSockets:I

    add-int/2addr v1, v2

    int-to-long v1, v1

    iget-wide v3, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMinSockets:J

    sub-long/2addr v1, v3

    iget-object v3, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mPoints:Ljava/util/List;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-wide v6, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v3, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;

    iget v0, p5, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mGoodSockets:I

    int-to-long v0, v0

    iget-wide v2, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMinSockets:J

    sub-long/2addr v0, v2

    iget-object v2, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mSecondPoints:Ljava/util/List;

    iget-object p5, p5, Lcom/samsung/android/settings/wifi/develop/history/model/TcpSocketStats;->mDate:Ljava/util/Date;

    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-wide v5, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p5

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    goto :goto_2

    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->clearPaths()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    iget-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxDomainValue:J

    const-wide/16 v2, 0x0

    cmp-long p5, v0, v2

    if-lez p5, :cond_4

    goto :goto_4

    :cond_4
    const-wide/16 v0, 0x1

    :goto_4
    iget-wide v2, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    iput-wide v0, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mMaxDomainValue:J

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    long-to-float p5, v0

    iput p5, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMaxX:F

    long-to-float p5, v2

    iput p5, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMaxY:F

    iget-object p5, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPaths:Ljava/util/List;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalPaths:Ljava/util/List;

    invoke-virtual {p1, p5, v0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->calculateLocalPaths(Ljava/util/List;Ljava/util/List;)V

    iget-object p5, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPaths:Ljava/util/List;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalSecondPaths:Ljava/util/List;

    invoke-virtual {p1, p5, v0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->calculateLocalPaths(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    iget-object p5, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    const/4 v0, 0x2

    int-to-float v0, v0

    iget-object v1, p5, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v1

    iput v0, p5, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterRadius:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p5, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterDensity:F

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->getValueAxisLabels()[Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setValueAxisLabels([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    iget-object p5, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p5, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mValueAxisTick:J

    sget-object p5, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object p5, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisFormat:Ljava/text/Format;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getDomainAxisLabels()[Ljava/util/Date;

    move-result-object p5

    array-length v0, p5

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ne v0, v1, :cond_5

    iput-object p5, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisValues:[Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    iget-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference$1TcpChart;->mMinSockets:J

    iget-object p5, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    iput-wide v0, p5, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mValueAxisOffset:J

    iput-boolean p3, p5, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mShowValueLabel:Z

    const/16 p3, 0xb4

    invoke-static {p3, p3, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p5

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-static {p3, p3, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    iget-object p5, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mLegend1:Landroid/widget/TextView;

    const-string v0, "Total sockets(Good, Wait, Slow)"

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p5, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mLegend1:Landroid/widget/TextView;

    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mLegend1:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    const/16 p3, 0x3f

    const/16 p5, 0x91

    const/16 v0, 0xff

    invoke-static {p3, p5, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-static {p3, p5, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    iget-object p5, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mLegend2:Landroid/widget/TextView;

    const-string v0, "Good sockets"

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p5, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mLegend2:Landroid/widget/TextView;

    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mLegend2:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    iget-object p3, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mPoints:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    iget-object p4, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPaths:Ljava/util/List;

    iget-object p5, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalPaths:Ljava/util/List;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, p4, p5}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->calculateLocalPaths(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mSecondPoints:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    iget-object p3, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPaths:Ljava/util/List;

    iget-object p4, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalSecondPaths:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->calculateLocalPaths(Ljava/util/List;Ljava/util/List;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ApplicationHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid number of labels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const-string p0, "ApplicationHistoryChartPreference"

    const-string p1, "changeItem, but chart is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
