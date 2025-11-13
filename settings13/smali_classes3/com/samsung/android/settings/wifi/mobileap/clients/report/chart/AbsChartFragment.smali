.class public abstract Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;
.super Landroidx/fragment/app/Fragment;
.source "AbsChartFragment.java"


# instance fields
.field protected mBarRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

.field mBarSelectedListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

.field private mCategoryType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

.field private mChart:Lcom/github/mikephil/charting/charts/BarChart;

.field private mChartBarDataSetBack:Lcom/github/mikephil/charting/data/BarDataSet;

.field private mChartBarDataSetFront:Lcom/github/mikephil/charting/data/BarDataSet;

.field private mChartBottomOffset:F

.field private mChartEndOffset:F

.field private mChartStartOffset:F

.field private mChartTopOffset:F

.field private mChartType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

.field private mContext:Landroid/content/Context;

.field protected mDaylightSavingTime:I

.field protected mDiffDay:I

.field private mIsBarStartFromZeroLine:Z

.field protected mMapDateEntriesMonthly:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMarker:Lcom/github/mikephil/charting/components/MarkerView;

.field private mMaxY:I

.field mRank:[I

.field private mWeekType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$WeekType;

.field protected mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

.field mXLabelFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

.field protected mYAxisRenderer:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

.field mYLabelFormatter:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmChart(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;)Lcom/github/mikephil/charting/charts/BarChart;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSelectedEntry(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;)Lcom/github/mikephil/charting/data/Entry;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getSelectedEntry()Lcom/github/mikephil/charting/data/Entry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSelectedTime(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;I)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getSelectedTime(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mMapDateEntriesMonthly:Ljava/util/HashMap;

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 85
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mRank:[I

    return-void
.end method

.method private getSelectedEntry()Lcom/github/mikephil/charting/data/Entry;
    .locals 0

    .line 201
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->getTodayDefaultEntry()Lcom/github/mikephil/charting/data/Entry;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedTime(I)J
    .locals 4

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getCurrentTodayTime()J

    move-result-wide v0

    .line 218
    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDateFromStart(JI)J

    move-result-wide v2

    .line 220
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDiffDays(JJ)I

    move-result p1

    if-gez p1, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    move-result-object p1

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object p0

    const-string v0, "is.support.oneui.30"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwFeature;->is(Ljava/lang/String;)Z

    move-result v0

    .line 223
    invoke-static {p1, v2, v3, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->normalizeToSupportedRange(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;JLcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method private setChartDataOptions(Lcom/github/mikephil/charting/data/BarData;)V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v0, :cond_5

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->DAILY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    if-ne v0, v1, :cond_0

    .line 277
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->daily_chart_bar_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->daily_chart_x_label_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v0, v1

    .line 277
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->weekly_chart_bar_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 281
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->weekly_chart_x_label_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v0, v1

    .line 280
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    :goto_0
    const/4 v0, 0x0

    .line 283
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/ChartData;->setDrawValues(Z)V

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_SOUND:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-ne v0, v1, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getMaxY()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mYLabelFormatter:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v2, 0x6e

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->setLabelWithFixedMaxValue(Lcom/github/mikephil/charting/charts/BarChart;II)V

    goto :goto_1

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_WEEKLY_BED_TIME:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-ne v0, v1, :cond_2

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mYLabelFormatter:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getMaxY()I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->setLabelWithFixedMaxValue(Lcom/github/mikephil/charting/charts/BarChart;II)V

    goto :goto_1

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mYLabelFormatter:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getMaxY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;->calculateLabel(Lcom/github/mikephil/charting/charts/BarChart;I)V

    .line 296
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 297
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->notifyDataSetChanged()V

    .line 298
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_WEEKLY_DRIVING:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-eq p1, v0, :cond_4

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_WEEKLY_BED_TIME:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-ne p1, v0, :cond_3

    goto :goto_2

    .line 303
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    goto :goto_3

    .line 302
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartBarDataSetBack()Lcom/github/mikephil/charting/data/BarDataSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setSALoggingRankArrayBackground(Lcom/github/mikephil/charting/data/BarDataSet;)V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method addSALogging(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 2

    .line 531
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->DAILY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    if-eq v0, v1, :cond_2

    .line 532
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_SOUND:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_WEEKLY_BED_TIME:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-ne v0, v1, :cond_1

    .line 536
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[J

    goto :goto_0

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_WEEKLY_DRIVING:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-ne p0, v0, :cond_2

    .line 545
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getData()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 546
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BaseEntry;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    :cond_2
    :goto_0
    return-void
.end method

.method public getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mCategoryType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    return-object p0
.end method

.method public getChartBarDataSetBack()Lcom/github/mikephil/charting/data/BarDataSet;
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChartBarDataSetBack:Lcom/github/mikephil/charting/data/BarDataSet;

    return-object p0
.end method

.method public getChartBarDataSetFront()Lcom/github/mikephil/charting/data/BarDataSet;
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChartBarDataSetFront:Lcom/github/mikephil/charting/data/BarDataSet;

    return-object p0
.end method

.method public getChartBottomOffset()F
    .locals 0

    .line 468
    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChartBottomOffset:F

    return p0
.end method

.method public getChartEndOffset()F
    .locals 0

    .line 452
    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChartEndOffset:F

    return p0
.end method

.method public getChartStartOffset()F
    .locals 0

    .line 444
    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChartStartOffset:F

    return p0
.end method

.method public getChartTopOffset()F
    .locals 0

    .line 460
    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChartTopOffset:F

    return p0
.end method

.method public getChartType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChartType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getMaxY()I
    .locals 0

    .line 436
    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mMaxY:I

    return p0
.end method

.method public isBarStartFromZeroLine()Z
    .locals 0

    .line 476
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mIsBarStartFromZeroLine:Z

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 94
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mDiffDay:I

    const/4 p1, -0x1

    .line 95
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mDaylightSavingTime:I

    .line 96
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$WeekType;->WEEK_1:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$WeekType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setWeekType(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$WeekType;)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setChartViewOffset()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    move-result-object p3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getLayoutId(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getChartId(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setChart(Lcom/github/mikephil/charting/charts/BarChart;)V

    .line 118
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz p2, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setBarSelectedListener()V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    move-result-object p3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mDiffDay:I

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setChartMarker(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;I)V

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->isBarStartFromZeroLine()Z

    move-result v7

    iget v8, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mDaylightSavingTime:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setChartRenderers(Landroid/content/Context;Lcom/github/mikephil/charting/charts/BarChart;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;ZI)V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setChartAxis(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;)V

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setChartViewOptions()V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_WEEKLY_DRIVING:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-eq p2, p3, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_WEEKLY_BED_TIME:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-eq p2, p3, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_DRIVING:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->getEmptyChartWeekArray()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setChartData(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    goto :goto_1

    .line 128
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->getEmptyChartWeekArray()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->getEmptyChartWeekArray()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setChartData(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    :cond_2
    :goto_1
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mBarSelectedListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mBarSelectedListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    .line 157
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 159
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 149
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->removeObserver()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 103
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/TtsUtils;->isTtsEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/Chart;->setTouchEnabled(Z)V

    .line 107
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 143
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->startObserveData()V

    return-void
.end method

.method protected abstract removeObserver()V
.end method

.method protected setBarSelectedListener()V
    .locals 1

    .line 163
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mBarSelectedListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    return-void
.end method

.method public setChart(Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    return-void
.end method

.method setChartAxis(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;)V
    .locals 6

    .line 334
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v0, :cond_3

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getYLabelFormatter(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mYLabelFormatter:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;

    .line 337
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ViewUtils;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 338
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    const/4 v2, 0x0

    .line 339
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 341
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ViewUtils;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    :goto_1
    const/4 v3, 0x1

    .line 342
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 343
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    .line 344
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 345
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawAxisLine(Z)V

    .line 346
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$color;->dw_graph_line_color:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/AxisBase;->setGridColor(I)V

    .line 347
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$color;->dw_data_index_text_color:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 348
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mYLabelFormatter:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/YLabelFormatter;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 350
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawAxisLine(Z)V

    .line 351
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mXLabelFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/AxisBase;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 355
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->DAILY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    if-ne p1, v0, :cond_2

    .line 356
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    .line 357
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p0

    const/16 p1, 0x18

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(I)V

    goto :goto_2

    .line 359
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawGridLines(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setChartBarDataSetBack(Lcom/github/mikephil/charting/data/BarDataSet;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChartBarDataSetBack:Lcom/github/mikephil/charting/data/BarDataSet;

    return-void
.end method

.method public setChartBarDataSetFront(Lcom/github/mikephil/charting/data/BarDataSet;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChartBarDataSetFront:Lcom/github/mikephil/charting/data/BarDataSet;

    return-void
.end method

.method protected setChartData(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;)V"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->isBarStartFromZeroLine()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->getDefaultBarDataSet(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Z)Lcom/github/mikephil/charting/data/BarDataSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setChartBarDataSetFront(Lcom/github/mikephil/charting/data/BarDataSet;)V

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartBarDataSetFront()Lcom/github/mikephil/charting/data/BarDataSet;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightAlpha(I)V

    .line 260
    new-instance p1, Lcom/github/mikephil/charting/data/BarData;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartBarDataSetFront()Lcom/github/mikephil/charting/data/BarDataSet;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-direct {p1, v1}, Lcom/github/mikephil/charting/data/BarData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setChartDataOptions(Lcom/github/mikephil/charting/data/BarData;)V

    :cond_0
    return-void
.end method

.method protected setChartData(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;)V"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->isBarStartFromZeroLine()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->getDefaultBarDataSet(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Z)Lcom/github/mikephil/charting/data/BarDataSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setChartBarDataSetFront(Lcom/github/mikephil/charting/data/BarDataSet;)V

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartBarDataSetFront()Lcom/github/mikephil/charting/data/BarDataSet;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightAlpha(I)V

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->isBarStartFromZeroLine()Z

    move-result v1

    invoke-static {p2, p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->getDefaultBarDataSet(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Z)Lcom/github/mikephil/charting/data/BarDataSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setChartBarDataSetBack(Lcom/github/mikephil/charting/data/BarDataSet;)V

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartBarDataSetBack()Lcom/github/mikephil/charting/data/BarDataSet;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightAlpha(I)V

    .line 270
    new-instance p1, Lcom/github/mikephil/charting/data/BarData;

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartBarDataSetBack()Lcom/github/mikephil/charting/data/BarDataSet;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartBarDataSetFront()Lcom/github/mikephil/charting/data/BarDataSet;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-direct {p1, p2}, Lcom/github/mikephil/charting/data/BarData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->setChartDataOptions(Lcom/github/mikephil/charting/data/BarData;)V

    :cond_0
    return-void
.end method

.method setChartMarker(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;I)V
    .locals 6

    .line 325
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v3, :cond_0

    .line 326
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mMapDateEntriesMonthly:Ljava/util/HashMap;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getMarker(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;ILjava/util/HashMap;)Lcom/github/mikephil/charting/components/MarkerView;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mMarker:Lcom/github/mikephil/charting/components/MarkerView;

    if-eqz p1, :cond_0

    .line 328
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    :cond_0
    return-void
.end method

.method setChartRenderers(Landroid/content/Context;Lcom/github/mikephil/charting/charts/BarChart;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;ZI)V
    .locals 6

    .line 314
    invoke-static {p1, p3, p4, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getXAxisRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;)Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 315
    invoke-static {p1, p4, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getYAxisRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;)Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mYAxisRenderer:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 316
    invoke-static {p1, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getXLabelFormatter(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;)Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mXLabelFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-object v0, p1

    move-object v1, p4

    move-object v2, p2

    move v3, p5

    move-object v4, p3

    move v5, p6

    .line 317
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConfigSelector;->getBarChartRenderer(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/github/mikephil/charting/charts/BarChart;ZLcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;I)Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mBarRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    return-void
.end method

.method protected abstract setChartViewOffset()V
.end method

.method setChartViewOptions()V
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 366
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setDescription(Lcom/github/mikephil/charting/components/Description;)V

    .line 367
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDrawGridBackground(Z)V

    .line 369
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setScaleEnabled(Z)V

    .line 370
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDoubleTapToZoomEnabled(Z)V

    .line 371
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDragEnabled(Z)V

    .line 372
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/TtsUtils;->isTtsEnabled(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setTouchEnabled(Z)V

    .line 373
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v1, 0x1f4

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/EasingFunctionSineInOut90;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/EasingFunctionSineInOut90;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/Chart;->animateY(ILcom/github/mikephil/charting/animation/Easing$EasingFunction;)V

    .line 374
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mBarRenderer:Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setRenderer(Lcom/github/mikephil/charting/renderer/DataRenderer;)V

    .line 375
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 376
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mYAxisRenderer:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setRendererRightYAxis(Lcom/github/mikephil/charting/renderer/YAxisRenderer;)V

    .line 377
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mYAxisRenderer:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setRendererLeftYAxis(Lcom/github/mikephil/charting/renderer/YAxisRenderer;)V

    .line 378
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mBarSelectedListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 379
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartStartOffset()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartTopOffset()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartEndOffset()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartBottomOffset()F

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setViewPortOffsets(FFFF)V

    :cond_0
    return-void
.end method

.method setSALoggingRankArrayBackground(Lcom/github/mikephil/charting/data/BarDataSet;)V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 609
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mRank:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_7

    .line 613
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_7

    .line 617
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BaseEntry;->getData()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    move v3, v0

    move v4, v3

    :goto_2
    if-ge v3, v1, :cond_5

    .line 619
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_WEEKLY_DRIVING:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-ne v5, v6, :cond_1

    .line 620
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BaseEntry;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 621
    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BaseEntry;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 625
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_WEEKLY_BED_TIME:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-ne v5, v6, :cond_4

    .line 626
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BaseEntry;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    .line 627
    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BaseEntry;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[J

    move v7, v0

    .line 629
    :goto_3
    array-length v8, v5

    if-ge v7, v8, :cond_4

    move v8, v0

    .line 630
    :goto_4
    array-length v9, v6

    if-ge v8, v9, :cond_3

    .line 631
    aget-object v9, v5, v7

    aget-wide v9, v9, v0

    aget-object v11, v6, v8

    aget-wide v11, v11, v0

    cmp-long v9, v9, v11

    if-gez v9, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v8, v8, 0x2

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x2

    goto :goto_3

    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 638
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mRank:[I

    aput v4, v3, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public setWeekType(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$WeekType;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->mWeekType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$WeekType;

    return-void
.end method

.method protected abstract startObserveData()V
.end method

.method protected updateSelectedDay(J)V
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartBarDataSetFront()Lcom/github/mikephil/charting/data/BarDataSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getChartBarDataSetFront()Lcom/github/mikephil/charting/data/BarDataSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    .line 232
    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->getIndexInWeekChart(J)I

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartFragment;->getCategoryType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object p0

    const-string v1, "is.support.oneui.30"

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwFeature;->is(Ljava/lang/String;)Z

    move-result v1

    .line 233
    invoke-static {v0, p1, p2, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->normalizeToSupportedRange(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;JLcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Z)J

    :cond_0
    return-void
.end method
