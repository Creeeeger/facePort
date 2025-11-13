.class public final Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyDataUsageYAxisValueFormatter;
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

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const/high16 p1, 0x41c00000    # 24.0f

    cmpl-float p1, v0, p1

    const-string v0, "m"

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyDataUsageYAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "h"

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyDataUsageYAxisValueFormatter;->mDataUsageUnit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f1428c7

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyDataUsageYAxisValueFormatter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyDataUsageYAxisValueFormatter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
