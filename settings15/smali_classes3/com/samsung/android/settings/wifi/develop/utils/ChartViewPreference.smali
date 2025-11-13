.class public Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mChartView:Lcom/samsung/android/settings/wifi/develop/utils/ChartView;

.field public mGraphColors:[I

.field public mGraphLabels:[Ljava/lang/String;

.field public final mHistory:Ljava/util/ArrayList;

.field public mMaxY:I

.field public mMinY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mMinY:I

    const/16 p2, 0x64

    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mMaxY:I

    const p2, -0xffff01

    filled-new-array {p2}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mGraphColors:[I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mGraphLabels:[Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mHistory:Ljava/util/ArrayList;

    const p1, 0x7f0d0a50

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 12

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a03d1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    const v1, 0x7f0a02ff

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mChartView:Lcom/samsung/android/settings/wifi/develop/utils/ChartView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mGraphColors:[I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mGraphLabels:[Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mMinY:I

    iget v4, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mMaxY:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "ChartView"

    const-string v6, "initChart"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p1, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mMinY:I

    iput v4, p1, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mMaxY:I

    iput-object v1, p1, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mGraphColors:[I

    iput-object v2, p1, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mGraphLabels:[Ljava/lang/String;

    iget-object v1, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescription:Lcom/github/mikephil/charting/components/Description;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mTouchEnabled:Z

    iput-boolean v1, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    iput-boolean v1, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    iput-boolean v2, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    iput-boolean v2, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    iput-boolean v2, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    iget-object v3, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iput-boolean v1, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    iput v0, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    iput-boolean v1, v3, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    iput-boolean v1, v3, Lcom/github/mikephil/charting/components/XAxis;->mAvoidFirstLastClipping:Z

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    iput-object v4, v3, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    iput-boolean v2, v3, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    iput-boolean v2, v3, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    iget-object v3, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iput-boolean v1, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    iput v0, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    iput-boolean v2, v3, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    iget v4, p1, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mMinY:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    iget v4, p1, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mMaxY:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(I)V

    iget-object v3, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iput-boolean v2, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    new-instance v3, Lcom/github/mikephil/charting/data/LineData;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    :goto_0
    iget-object v6, p1, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mGraphLabels:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_1

    aget-object v6, v6, v5

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v7, Lcom/github/mikephil/charting/data/LineDataSet;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/lang/String;Ljava/util/List;)V

    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v6, v7, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iget-object v6, p1, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mGraphColors:[I

    aget v6, v6, v5

    invoke-virtual {v7, v6}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->setColor(I)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v7, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    iput-boolean v2, v7, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    iput-boolean v2, v7, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawValues:Z

    iput-boolean v2, v7, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawHorizontalHighlightIndicator:Z

    iput-boolean v2, v7, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawVerticalHighlightIndicator:Z

    iput-boolean v1, v7, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawFilled:Z

    new-instance v6, Lcom/samsung/android/settings/wifi/develop/utils/ChartView$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/utils/ChartView;)V

    iput-object v6, v7, Lcom/github/mikephil/charting/data/LineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/IFillFormatter;

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v9, p1, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mGraphColors:[I

    aget v9, v9, v5

    const v10, 0xffffff

    and-int/2addr v9, v10

    const/high16 v11, -0x30000000

    or-int/2addr v9, v11

    filled-new-array {v9, v10}, [I

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v6, v7, Lcom/github/mikephil/charting/data/LineDataSet;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {v3, v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setData(Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;)V

    iget-object v3, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendForm;->LINE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v4, v3, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput v0, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mGraphLabels:[Ljava/lang/String;

    array-length p1, p1

    if-le p1, v1, :cond_2

    move v2, v1

    :cond_2
    iput-boolean v2, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mHistory:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
