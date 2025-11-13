.class public final Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;
.super Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDailyPackageUsageCnt:[[J

.field public final mDailyUsageTime:[[J

.field public final mUsageBarChart:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;

.field public final usageBarSelectedListener:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceViewHolder;)V

    new-instance p2, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport$1;-><init>(Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;)V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->mContext:Landroid/content/Context;

    const/4 p1, 0x3

    new-array v0, p1, [J

    fill-array-data v0, :array_0

    new-array v1, p1, [J

    fill-array-data v1, :array_1

    new-array v2, p1, [J

    fill-array-data v2, :array_2

    new-array v3, p1, [J

    fill-array-data v3, :array_3

    new-array v4, p1, [J

    fill-array-data v4, :array_4

    new-array v5, p1, [J

    fill-array-data v5, :array_5

    new-array v6, p1, [J

    fill-array-data v6, :array_6

    filled-new-array/range {v0 .. v6}, [[J

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->mDailyUsageTime:[[J

    new-array v1, p1, [J

    fill-array-data v1, :array_7

    new-array v2, p1, [J

    fill-array-data v2, :array_8

    new-array v3, p1, [J

    fill-array-data v3, :array_9

    new-array v4, p1, [J

    fill-array-data v4, :array_a

    new-array v5, p1, [J

    fill-array-data v5, :array_b

    new-array v6, p1, [J

    fill-array-data v6, :array_c

    new-array v7, p1, [J

    fill-array-data v7, :array_d

    filled-new-array/range {v1 .. v7}, [[J

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->mDailyPackageUsageCnt:[[J

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v0, 0x7f0a10c8

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->mUsageBarChart:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;

    invoke-virtual {p1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->initialize()V

    iput-object p2, p1, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->callbackListener:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart$ChartValueSelectedListener;

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final appendUsageCnt(IIJ)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-nez p3, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->mDailyPackageUsageCnt:[[J

    aget-object p0, p0, p1

    aget-wide p0, p0, p2

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, " ("

    const-string p2, ")"

    invoke-static {p1, p0, p2}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateInternal$1()V
    .locals 13

    sget v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportData;->mSelectedDay:I

    rsub-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->mDailyUsageTime:[[J

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    const/4 v8, 0x2

    aget-wide v9, v1, v8

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphText1:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "uwbtest"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->appendUsageCnt(IIJ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphText2:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "settings"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v5, v6, v7}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->appendUsageCnt(IIJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphText3:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "etc"

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->appendUsageCnt(IIJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphText3:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphValue1:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->mContext:Landroid/content/Context;

    const v4, 0x7f143159

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphValue2:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphValue3:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int v5, v9

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphText1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphText2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphValue1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphValue2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphValue3:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphDate:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mWeeklyDate:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
