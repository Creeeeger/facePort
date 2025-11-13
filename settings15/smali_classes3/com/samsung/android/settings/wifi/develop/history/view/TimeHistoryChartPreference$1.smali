.class public final Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    const-string p3, "TimeHistoryChartPreference"

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mUsabilityStats:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    const-string p2, "RSSI"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mUsabilityStats:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;-><init>(Ljava/util/List;)V

    const/16 p3, -0x80

    iput p3, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMaxRssi:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    iget p5, p4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mRssi:I

    iget v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMinRssi:I

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    iput p5, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMinRssi:I

    iget p5, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMaxRssi:I

    iget p4, p4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mRssi:I

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMaxRssi:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    iget p4, p3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mRssi:I

    iget p5, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMinRssi:I

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    add-int/2addr p5, p4

    iget-object p4, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mPoints:Ljava/util/List;

    iget-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    iget-wide v2, p3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTimeStampMillis:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    int-to-long v0, p5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-static {p3, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p3

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide p3, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    goto :goto_1

    :cond_1
    const-string p2, "BcnCnt"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide p4, 0x7fffffffffffffffL

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mUsabilityStats:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;-><init>(ILjava/util/List;)V

    iput-wide p4, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    iget-wide v0, p4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalBeaconRx:J

    iget-wide v2, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    iget-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMaxTxBad:J

    iget-wide p4, p4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalBeaconRx:J

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    iput-wide p4, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMaxTxBad:J

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    iget-wide p4, p3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalBeaconRx:J

    iget-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    sub-long/2addr p4, v0

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mPoints:Ljava/util/List;

    iget-wide v1, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    iget-wide v3, p3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTimeStampMillis:J

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    goto :goto_3

    :cond_3
    const-string p2, "TxRetry"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mUsabilityStats:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;

    const/4 p3, 0x2

    invoke-direct {p2, p3, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;-><init>(ILjava/util/List;)V

    iput-wide p4, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    iget-wide v0, p4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxRetries:J

    iget-wide v2, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    iget-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMaxTxBad:J

    iget-wide p4, p4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxRetries:J

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    iput-wide p4, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMaxTxBad:J

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    iget-wide p4, p3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxRetries:J

    iget-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    sub-long/2addr p4, v0

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mPoints:Ljava/util/List;

    iget-wide v1, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    iget-wide v3, p3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTimeStampMillis:J

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    goto :goto_5

    :cond_5
    const-string p2, "TxGood"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mUsabilityStats:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;

    const/4 p3, 0x3

    invoke-direct {p2, p3, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;-><init>(ILjava/util/List;)V

    iput-wide p4, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    iget-wide v0, p4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxSuccess:J

    iget-wide v2, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    iget-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMaxTxBad:J

    iget-wide p4, p4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxSuccess:J

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    iput-wide p4, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMaxTxBad:J

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    iget-wide p4, p3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxSuccess:J

    iget-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    sub-long/2addr p4, v0

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mPoints:Ljava/util/List;

    iget-wide v1, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    iget-wide v3, p3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTimeStampMillis:J

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    goto :goto_7

    :cond_7
    const-string p2, "TxBad"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mUsabilityStats:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;-><init>(ILjava/util/List;)V

    iput-wide p4, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    iget-wide v0, p4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxBad:J

    iget-wide v2, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    iget-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMaxTxBad:J

    iget-wide p4, p4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxBad:J

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    iput-wide p4, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMaxTxBad:J

    goto :goto_8

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    iget-wide p4, p3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxBad:J

    iget-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

    sub-long/2addr p4, v0

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mPoints:Ljava/util/List;

    iget-wide v1, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mStartTime:J

    iget-wide v3, p3, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTimeStampMillis:J

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    goto :goto_9

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->clearPaths()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    iget-wide p3, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxDomainValue:J

    const-wide/16 v0, 0x0

    cmp-long p5, p3, v0

    if-lez p5, :cond_a

    goto :goto_a

    :cond_a
    const-wide/16 p3, 0x1

    :goto_a
    iget-wide v0, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mMaxRangeValue:J

    iput-wide p3, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mMaxDomainValue:J

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    long-to-float p3, p3

    iput p3, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMaxX:F

    long-to-float p3, v0

    iput p3, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMaxY:F

    iget-object p3, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPaths:Ljava/util/List;

    iget-object p4, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalPaths:Ljava/util/List;

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->calculateLocalPaths(Ljava/util/List;Ljava/util/List;)V

    iget-object p3, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPaths:Ljava/util/List;

    iget-object p4, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalSecondPaths:Ljava/util/List;

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->calculateLocalPaths(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    iget-object p3, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    const/4 p4, 0x2

    int-to-float p4, p4

    iget-object p5, p3, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p5, p5, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p4, p5

    iput p4, p3, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterRadius:F

    const p4, 0x3e99999a    # 0.3f

    iput p4, p3, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterDensity:F

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getValueAxisLabels()[Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->setValueAxisLabels([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getDomainAxisTick()J

    move-result-wide p3

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    iput-wide p3, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mValueAxisTick:J

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    sget-object p3, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object p3, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisFormat:Ljava/text/Format;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getDomainAxisLabels()[Ljava/util/Date;

    move-result-object p3

    array-length p4, p3

    iget-object p5, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisLabels:[Landroid/widget/TextView;

    array-length p5, p5

    if-ne p4, p5, :cond_b

    iput-object p3, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisValues:[Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->getValueAxisOffset()J

    move-result-wide p3

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    iput-wide p3, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mValueAxisOffset:J

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->showValueLabel()Z

    move-result p3

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    iput-boolean p3, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mShowValueLabel:Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;->mPoints:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    iget-object p3, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPaths:Ljava/util/List;

    iget-object p4, p1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalPaths:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->calculateLocalPaths(Ljava/util/List;Ljava/util/List;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TimeHistoryChartPreference;->mChart:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mHistoryGraph:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_b

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid number of labels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    const-string p0, "Unsupported chart"

    invoke-static {p3, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_d
    const-string p0, "changeItem, but chart is null or stats is empty"

    invoke-static {p3, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
