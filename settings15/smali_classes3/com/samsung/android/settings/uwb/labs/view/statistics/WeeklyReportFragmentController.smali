.class public final Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCurrentDate:Ljava/util/Calendar;

.field public final mStatisticsControl:Lcom/samsung/android/settings/uwb/labs/control/statistics/WeeklyReportController;

.field public mTabIndexSelected:I

.field public mWeeklyTime:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;

.field public mWeeklyUsage:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mTabIndexSelected:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mCurrentDate:Ljava/util/Calendar;

    const-string v0, "WeeklyReportFragmentController"

    const-string v1, "CREATE: WeeklyReportFragmentController"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/uwb/labs/control/statistics/WeeklyReportController;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/uwb/labs/control/statistics/WeeklyReportController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mStatisticsControl:Lcom/samsung/android/settings/uwb/labs/control/statistics/WeeklyReportController;

    return-void
.end method


# virtual methods
.method public final draw()V
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    iget-object v9, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mWeeklyTime:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;

    if-nez v9, :cond_0

    return-void

    :cond_0
    iget v10, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mTabIndexSelected:I

    const/high16 v11, -0x1000000

    iget-object v14, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mStatisticsControl:Lcom/samsung/android/settings/uwb/labs/control/statistics/WeeklyReportController;

    if-nez v10, :cond_9

    iget-object v10, v9, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;->mDailyConnData:[J

    invoke-static {v10, v6, v7}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v9, v9, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;->mDailyRangingCnt:[J

    invoke-static {v9, v6, v7}, Ljava/util/Arrays;->fill([JJ)V

    new-array v6, v1, [J

    fill-array-data v6, :array_0

    invoke-virtual {v14, v3}, Lcom/samsung/android/settings/uwb/labs/control/statistics/WeeklyReportController;->getData(I)[J

    move-result-object v7

    invoke-static {v7, v4, v6, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    rem-int/2addr v7, v1

    move v9, v4

    :goto_0
    if-ge v9, v1, :cond_2

    invoke-static {v7}, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->convertWeekDay(I)I

    move-result v10

    iget-object v15, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mWeeklyTime:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;

    invoke-virtual {v14, v10, v4}, Lcom/samsung/android/settings/uwb/labs/control/statistics/WeeklyReportController;->getData(II)J

    move-result-wide v16

    iget-object v15, v15, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;->mDailyConnData:[J

    aput-wide v16, v15, v9

    iget-object v15, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mWeeklyTime:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;

    aget-wide v16, v6, v10

    iget-object v10, v15, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;->mDailyRangingCnt:[J

    aput-wide v16, v10, v9

    sub-int/2addr v7, v8

    if-ge v7, v8, :cond_1

    move v7, v1

    :cond_1
    add-int/2addr v9, v8

    goto :goto_0

    :cond_2
    iget-object v6, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mWeeklyTime:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;

    invoke-virtual {v6}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->generateWeekData()V

    iget-object v7, v6, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;->mTimeBarChart:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput v4, v7, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mBarGraphTap:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v4

    const/4 v14, -0x1

    :goto_1
    if-ge v10, v1, :cond_4

    rsub-int/lit8 v15, v10, 0x6

    iget-object v3, v6, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;->mDailyConnData:[J

    aget-wide v12, v3, v15

    long-to-float v3, v12

    const v12, 0x36ee80

    int-to-float v12, v12

    div-float/2addr v3, v12

    const v12, 0x36ee81

    int-to-float v12, v12

    rem-float/2addr v3, v12

    new-instance v12, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v13, v10

    new-array v15, v8, [F

    aput v3, v15, v4

    invoke-direct {v12, v13, v15}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[F)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-float v12, v14

    cmpg-float v12, v12, v3

    if-gez v12, :cond_3

    float-to-int v3, v3

    add-int/lit8 v14, v3, 0x1

    :cond_3
    add-int/2addr v10, v8

    const/4 v3, 0x6

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ranging count - 0:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;->mDailyRangingCnt:[J

    aget-wide v12, v3, v4

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " 1:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v12, v3, v8

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " 2:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v12, v3, v2

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " 3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeeklyTimeUsageBarChart"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x18

    if-le v14, v1, :cond_5

    move v4, v1

    goto :goto_3

    :cond_5
    move v1, v4

    :goto_2
    if-ge v1, v5, :cond_7

    add-int v2, v14, v1

    rem-int/lit8 v3, v2, 0x3

    if-nez v3, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    add-int/2addr v1, v8

    goto :goto_2

    :cond_7
    :goto_3
    iput v4, v7, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mMaxYValue:I

    new-instance v1, Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-direct {v1, v9}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;)V

    iput-object v1, v7, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    sget-object v2, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->TIME_BAR_COLORS:[I

    aget v2, v2, v8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->setColors([I)V

    iget-object v1, v7, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyIBarDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v7, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyIBarDataSet:Ljava/util/ArrayList;

    iget-object v2, v7, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/github/mikephil/charting/data/BarData;

    iget-object v2, v7, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyIBarDataSet:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    iput-object v1, v7, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

    sget-boolean v1, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->mDarkMode:Z

    if-eqz v1, :cond_8

    iget-object v1, v7, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    iput v11, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mHighLightColor:I

    goto :goto_4

    :cond_8
    iget-object v1, v7, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v2, -0x1

    iput v2, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mHighLightColor:I

    :goto_4
    invoke-virtual {v7}, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->showWeeklyBarChart()V

    iget-object v1, v6, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphDataImage2:Landroid/widget/ImageView;

    const v2, 0x7f0606f9

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->getPointDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v6, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphDataImage3:Landroid/widget/ImageView;

    const v2, 0x7f0606fa

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->getPointDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;->updateInternal()V

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mWeeklyUsage:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->mUsageBarChart:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_f

    :cond_9
    iget-object v3, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mWeeklyUsage:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;

    move v9, v4

    :goto_5
    if-ge v9, v1, :cond_a

    iget-object v10, v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->mDailyUsageTime:[[J

    aget-object v10, v10, v9

    invoke-static {v10, v6, v7}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v10, v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->mDailyPackageUsageCnt:[[J

    aget-object v10, v10, v9

    invoke-static {v10, v6, v7}, Ljava/util/Arrays;->fill([JJ)V

    add-int/2addr v9, v8

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    rem-int/2addr v3, v1

    new-array v9, v5, [J

    fill-array-data v9, :array_1

    move v10, v4

    :goto_6
    if-ge v10, v1, :cond_11

    invoke-static {v3}, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->convertWeekDay(I)I

    move-result v12

    add-int/2addr v12, v1

    invoke-virtual {v14, v12}, Lcom/samsung/android/settings/uwb/labs/control/statistics/WeeklyReportController;->getData(I)[J

    move-result-object v12

    invoke-static {v12, v4, v9, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v12, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mWeeklyUsage:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;

    const-string v13, "failed to update : wrong data"

    const-string v15, "WeeklyUsageReport"

    if-lt v10, v1, :cond_b

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    iget-object v12, v12, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->mDailyPackageUsageCnt:[[J

    aget-object v12, v12, v10

    aget-wide v18, v9, v4

    aput-wide v18, v12, v4

    aget-wide v18, v9, v8

    aput-wide v18, v12, v8

    aget-wide v18, v9, v2

    aput-wide v18, v12, v2

    :goto_7
    move v12, v4

    :goto_8
    if-gt v12, v2, :cond_f

    invoke-static {v3}, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->convertWeekDay(I)I

    move-result v18

    add-int/lit8 v11, v18, 0x64

    invoke-virtual {v14, v11, v12}, Lcom/samsung/android/settings/uwb/labs/control/statistics/WeeklyReportController;->getData(II)J

    move-result-wide v20

    cmp-long v11, v20, v6

    if-nez v11, :cond_c

    goto :goto_9

    :cond_c
    const-wide/16 v22, 0x3c

    div-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    :goto_9
    iget-object v11, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mWeeklyUsage:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ge v10, v1, :cond_e

    if-le v12, v2, :cond_d

    goto :goto_a

    :cond_d
    iget-object v11, v11, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->mDailyUsageTime:[[J

    aget-object v11, v11, v10

    aput-wide v20, v11, v12

    goto :goto_b

    :cond_e
    :goto_a
    invoke-static {v15, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    add-int/2addr v12, v8

    const/high16 v11, -0x1000000

    goto :goto_8

    :cond_f
    sub-int/2addr v3, v8

    if-ge v3, v8, :cond_10

    move v3, v1

    :cond_10
    add-int/2addr v10, v8

    const/high16 v11, -0x1000000

    goto :goto_6

    :cond_11
    iget-object v3, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mWeeklyUsage:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;

    invoke-virtual {v3}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->generateWeekData()V

    iget-object v6, v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->mUsageBarChart:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput v8, v6, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mBarGraphTap:I

    new-instance v7, Lcom/github/mikephil/charting/data/BarDataSet;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v11, v4

    const/4 v10, -0x1

    :goto_c
    if-ge v11, v1, :cond_13

    const/4 v12, 0x6

    rsub-int/lit8 v13, v11, 0x6

    iget-object v14, v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->mDailyUsageTime:[[J

    aget-object v13, v14, v13

    aget-wide v14, v13, v4

    long-to-float v14, v14

    aget-wide v4, v13, v8

    long-to-float v4, v4

    aget-wide v12, v13, v2

    long-to-float v12, v12

    new-instance v13, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v1, v11

    const/4 v5, 0x3

    new-array v15, v5, [F

    const/16 v16, 0x0

    aput v12, v15, v16

    aput v4, v15, v8

    aput v14, v15, v2

    invoke-direct {v13, v1, v15}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[F)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v14, v4

    add-float/2addr v14, v12

    int-to-float v1, v10

    cmpg-float v1, v1, v14

    if-gez v1, :cond_12

    float-to-int v1, v14

    add-int/2addr v1, v8

    move v10, v1

    :cond_12
    add-int/2addr v11, v8

    const/4 v1, 0x7

    const/4 v4, 0x0

    goto :goto_c

    :cond_13
    iput v10, v6, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mMaxYValue:I

    invoke-direct {v7, v9}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;)V

    iput-object v7, v6, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    sget-boolean v1, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->mDarkMode:Z

    if-eqz v1, :cond_14

    sget-object v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->USAGE_BAR_COLORS_DARK:[I

    invoke-virtual {v7, v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->setColors([I)V

    goto :goto_d

    :cond_14
    sget-object v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->USAGE_BAR_COLORS:[I

    invoke-virtual {v7, v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->setColors([I)V

    :goto_d
    iget-object v1, v6, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyIBarDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v6, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyIBarDataSet:Ljava/util/ArrayList;

    iget-object v2, v6, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/github/mikephil/charting/data/BarData;

    iget-object v2, v6, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyIBarDataSet:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    iput-object v1, v6, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyBarData:Lcom/github/mikephil/charting/data/BarData;

    sget-boolean v1, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->mDarkMode:Z

    if-eqz v1, :cond_15

    iget-object v1, v6, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    const/high16 v2, -0x1000000

    iput v2, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mHighLightColor:I

    goto :goto_e

    :cond_15
    iget-object v1, v6, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mWeeklyBarDataSet:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v2, -0x1

    iput v2, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mHighLightColor:I

    :goto_e
    invoke-virtual {v6}, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->showWeeklyBarChart()V

    iget-object v1, v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphDataImage1:Landroid/widget/ImageView;

    const v2, 0x7f0606f0

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->getPointDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphDataImage2:Landroid/widget/ImageView;

    const v2, 0x7f0606f1

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->getPointDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphDataImage3:Landroid/widget/ImageView;

    const v2, 0x7f0606f2

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->getPointDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphDataImage1:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v3, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReport;->mGraphDataImage3:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->updateInternal$1()V

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mWeeklyTime:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;->mTimeBarChart:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_f
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
    .end array-data
.end method
