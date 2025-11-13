.class public final Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;
.super Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$BaseChartData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mMaxRssi:I

.field public mMinRssi:I


# virtual methods
.method public final getValueAxisLabels()[Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMaxRssi:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMinRssi:I

    add-int/2addr v1, p0

    const/4 v2, 0x2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    return-object v0
.end method

.method public final getValueAxisOffset()J
    .locals 2

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/ChartDataFactory$RssiChartData;->mMinRssi:I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    neg-int p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final showValueLabel()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
