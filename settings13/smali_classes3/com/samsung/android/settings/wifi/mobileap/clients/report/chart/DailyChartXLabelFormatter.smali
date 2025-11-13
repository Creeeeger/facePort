.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyChartXLabelFormatter;
.super Lcom/github/mikephil/charting/formatter/ValueFormatter;
.source "DailyChartXLabelFormatter.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyChartXLabelFormatter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 4

    .line 18
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ViewUtils;->isRTL()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-eqz v0, :cond_3

    float-to-int v0, p1

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x40c00000    # 6.0f

    rem-float/2addr p1, v2

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-nez p1, :cond_1

    .line 22
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyChartXLabelFormatter;->mContext:Landroid/content/Context;

    rsub-int/lit8 p1, v0, 0x18

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/TimeTextUtil;->getHourString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1

    .line 20
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyChartXLabelFormatter;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/TimeTextUtil;->getHourString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    float-to-int p1, p1

    .line 27
    rem-int/lit8 v0, p1, 0x6

    if-nez v0, :cond_4

    .line 28
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyChartXLabelFormatter;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/TimeTextUtil;->getHourString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-ne p1, v3, :cond_5

    .line 30
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DailyChartXLabelFormatter;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/TimeTextUtil;->getHourString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1
.end method
