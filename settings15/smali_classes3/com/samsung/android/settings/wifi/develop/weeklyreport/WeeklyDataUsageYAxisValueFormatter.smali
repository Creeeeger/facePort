.class public final Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyDataUsageYAxisValueFormatter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDataUsageUnit:Ljava/lang/String;


# virtual methods
.method public final getFormattedValue(F)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.1f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    if-ltz v2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyDataUsageYAxisValueFormatter;->mContext:Landroid/content/Context;

    const p1, 0x7f1428c6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p1, "MB"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyDataUsageYAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v1, 0x7f1428c8

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyDataUsageYAxisValueFormatter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p1, "h"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyDataUsageYAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyDataUsageYAxisValueFormatter;->mContext:Landroid/content/Context;

    const p1, 0x7f1428c7

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyDataUsageYAxisValueFormatter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setDataUsageUnit(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "h"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "m"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyDataUsageYAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/WeeklyDataUsageYAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    :goto_1
    return-void
.end method
