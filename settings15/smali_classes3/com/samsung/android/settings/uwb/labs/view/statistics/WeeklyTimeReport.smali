.class public final Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;
.super Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDailyConnData:[J

.field public final mDailyRangingCnt:[J

.field public final mTimeBarChart:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;

.field public final timeBarSelectedListener:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceViewHolder;)V

    new-instance p1, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport$1;-><init>(Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;)V

    const/4 v0, 0x7

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;->mDailyConnData:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;->mDailyRangingCnt:[J

    const v0, 0x7f0a101e

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;->mTimeBarChart:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;

    invoke-virtual {p2}, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->initialize()V

    iput-object p1, p2, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->callbackListener:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart$ChartValueSelectedListener;

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final updateInternal()V
    .locals 11

    sget v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportData;->mSelectedDay:I

    rsub-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mWeeklyDate:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphText2:Landroid/widget/TextView;

    const-string v2, "Connected"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphText3:Landroid/widget/TextView;

    const v2, 0x7f143189

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphValue2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;->mDailyConnData:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->getHours(J)J

    move-result-wide v4

    invoke-static {v2, v3}, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->getMinutes(J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const-string v9, "m"

    const-string v10, ""

    if-nez v8, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "h "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    cmp-long v5, v2, v6

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphValue3:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;->mDailyRangingCnt:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphText1:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphValue1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphDataImage1:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
