.class public final Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;
.super Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public mMaxTxBad:J

.field public mMinTxBad:J


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->$r8$classId:I

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getValueAxisLabels()[Ljava/lang/CharSequence;
    .locals 7

    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMaxTxBad:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

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

    :pswitch_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMaxTxBad:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

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

    :pswitch_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMaxTxBad:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

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

    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMaxTxBad:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    iget-wide v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->mMinTxBad:J

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getValueAxisOffset()J
    .locals 2

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$TxBadChartData;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_0
    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_1
    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_2
    const-wide/16 v0, 0x0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
