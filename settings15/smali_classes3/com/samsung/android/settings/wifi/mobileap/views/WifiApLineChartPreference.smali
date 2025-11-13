.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mChartDataModel:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApChartDataModel;

.field public final mContext:Landroid/content/Context;

.field public final mEntryList:Ljava/util/List;

.field public final mLineChartLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;->mEntryList:Ljava/util/List;

    const-string p2, ""

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;->mLineChartLabel:Ljava/lang/String;

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApChartDataModel;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApChartDataModel;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;->mChartDataModel:Lcom/samsung/android/settings/wifi/mobileap/datamodels/chart/WifiApChartDataModel;

    const p2, 0x7f0d0a2f

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a08bf

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0605fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f06058f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0609ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    new-instance v3, Lcom/github/mikephil/charting/data/LineDataSet;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;->mEntryList:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;->mLineChartLabel:Ljava/lang/String;

    invoke-direct {v3, v5, v4}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/lang/String;Ljava/util/List;)V

    sget-object v4, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v4, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->setColor(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    iput-boolean v4, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawValues:Z

    iput-boolean v4, v3, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawHorizontalHighlightIndicator:Z

    iput-boolean v4, v3, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawVerticalHighlightIndicator:Z

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference$$ExternalSyntheticLambda0;-><init>(Lcom/github/mikephil/charting/charts/LineChart;)V

    iput-object v5, v3, Lcom/github/mikephil/charting/data/LineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/IFillFormatter;

    new-instance v5, Lcom/github/mikephil/charting/data/LineData;

    filled-new-array {v3}, [Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>([Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;)V

    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setData(Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;)V

    iget-object v3, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescription:Lcom/github/mikephil/charting/components/Description;

    iput-boolean v4, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mTouchEnabled:Z

    iput-boolean v3, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    iput-boolean v3, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    iput-boolean v4, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    iput-boolean v4, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    iput-boolean v4, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    iget-object v5, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iput-boolean v3, v5, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    iput v0, v5, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    iput-boolean v4, v5, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    iput-boolean v3, v5, Lcom/github/mikephil/charting/components/XAxis;->mAvoidFirstLastClipping:Z

    sget-object v0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    iput-object v0, v5, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    iput-boolean v3, v5, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    iput-boolean v3, v5, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApLineChartPreference;)V

    iput-object v0, v5, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    iget-object p0, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iput-boolean v3, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    iput v1, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    iput-boolean v4, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    iget-object p0, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iput-boolean v4, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    iget-object p0, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->LINE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput v2, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    iget-object v0, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iput-boolean v3, v0, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    new-instance v0, Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    iput v1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formLineWidth:F

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formLineDashEffect:Landroid/graphics/DashPathEffect;

    const-string v1, "Recent hotspot speed in Mbps"

    iput-object v1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->SQUARE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput v2, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    iput-boolean v3, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
