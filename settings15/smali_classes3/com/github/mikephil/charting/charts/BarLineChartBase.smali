.class public abstract Lcom/github/mikephil/charting/charts/BarLineChartBase;
.super Landroid/view/ViewGroup;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;


# instance fields
.field public mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

.field public mAutoScaleMinMaxEnabled:Z

.field public mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

.field public mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

.field public mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

.field public mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

.field public mBorderPaint:Landroid/graphics/Paint;

.field public mChartTouchListener:Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

.field public final mClipDataToContent:Z

.field public mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

.field public final mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

.field public mDescPaint:Landroid/graphics/Paint;

.field public mDescription:Lcom/github/mikephil/charting/components/Description;

.field public mDoubleTapToZoomEnabled:Z

.field public mDragDecelerationEnabled:Z

.field public mDragDecelerationFrictionCoef:F

.field public mDragXEnabled:Z

.field public mDragYEnabled:Z

.field public mDrawGridBackground:Z

.field public mDrawMarkers:Z

.field public mExtraBottomOffset:F

.field public mExtraLeftOffset:F

.field public mExtraRightOffset:F

.field public mExtraTopOffset:F

.field public final mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

.field public mGestureListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

.field public mGridBackgroundPaint:Landroid/graphics/Paint;

.field public final mHighLightPerTapEnabled:Z

.field public final mHighlightPerDragEnabled:Z

.field public mHighlighter:Lcom/github/mikephil/charting/highlight/ChartHighlighter;

.field public mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

.field public mInfoPaint:Landroid/graphics/Paint;

.field public final mJobs:Ljava/util/ArrayList;

.field public mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

.field public mLegend:Lcom/github/mikephil/charting/components/Legend;

.field public mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

.field public mMarker:Lcom/github/mikephil/charting/components/IMarker;

.field public mMaxHighlightDistance:F

.field public final mMaxVisibleCount:I

.field public final mMinOffset:F

.field public final mNoDataText:Ljava/lang/String;

.field public final mOffsetsBuffer:Landroid/graphics/RectF;

.field public mOffsetsCalculated:Z

.field public final mOnSizeChangedBuffer:[F

.field public mRenderer:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;

.field public mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

.field public mScaleXEnabled:Z

.field public mScaleYEnabled:Z

.field public mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

.field public mTouchEnabled:Z

.field public final mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

.field public mXAxis:Lcom/github/mikephil/charting/components/XAxis;

.field public mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

.field public final mZoomMatrixBuffer:Landroid/graphics/Matrix;

.field public final posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

.field public final posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighLightPerTapEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragDecelerationEnabled:Z

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragDecelerationFrictionCoef:F

    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mTouchEnabled:Z

    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mNoDataText:Ljava/lang/String;

    new-instance v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraTopOffset:F

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraRightOffset:F

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraBottomOffset:F

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraLeftOffset:F

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsCalculated:Z

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxHighlightDistance:F

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawMarkers:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->init()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipDataToContent:Z

    const/high16 p1, 0x41700000    # 15.0f

    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v0, v1}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    invoke-static {v0, v1, v0, v1}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighLightPerTapEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragDecelerationEnabled:Z

    const p2, 0x3f666666    # 0.9f

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragDecelerationFrictionCoef:F

    new-instance p2, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;-><init>(I)V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mTouchEnabled:Z

    const-string p2, "No chart data available."

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mNoDataText:Ljava/lang/String;

    new-instance p2, Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/4 p2, 0x0

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraTopOffset:F

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraRightOffset:F

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraBottomOffset:F

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraLeftOffset:F

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsCalculated:Z

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxHighlightDistance:F

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawMarkers:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->init()V

    const/16 p2, 0x64

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipDataToContent:Z

    const/high16 p1, 0x41700000    # 15.0f

    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p1, p2}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    invoke-static {p1, p2, p1, p2}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighLightPerTapEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragDecelerationEnabled:Z

    const p2, 0x3f666666    # 0.9f

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragDecelerationFrictionCoef:F

    new-instance p2, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;-><init>(I)V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mTouchEnabled:Z

    const-string p2, "No chart data available."

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mNoDataText:Ljava/lang/String;

    new-instance p2, Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/4 p2, 0x0

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraTopOffset:F

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraRightOffset:F

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraBottomOffset:F

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraLeftOffset:F

    iput-boolean p3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsCalculated:Z

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxHighlightDistance:F

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawMarkers:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->init()V

    const/16 p2, 0x64

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    iput-boolean p3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    iput-boolean p3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipDataToContent:Z

    const/high16 p1, 0x41700000    # 15.0f

    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p1, p2}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p3

    iput-object p3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    invoke-static {p1, p2, p1, p2}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    return-void
.end method


# virtual methods
.method public final animateY()V
    .locals 4

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/github/mikephil/charting/animation/Easing;->Linear:Lcom/github/mikephil/charting/animation/Easing$1;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "phaseY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v0, 0x2ee

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/github/mikephil/charting/animation/ChartAnimator;->mListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public calcMinMax()V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    iget v2, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMin:F

    iget v1, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMax:F

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/AxisBase;->calculate(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v1

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    return-void
.end method

.method public final calculateOffsets()V
    .locals 7

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    if-eqz v2, :cond_9

    iget-boolean v3, v2, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    if-eqz v3, :cond_9

    iget-object v2, v2, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_6

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v4, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v5, v5, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    mul-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v4, v4, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    goto/16 :goto_0

    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v4, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v5, v5, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    mul-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v4, v4, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v4, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v5, v5, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    mul-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v4, v4, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_5
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v4, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v5, v5, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    mul-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v4, v4, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_8

    if-eq v2, v3, :cond_7

    goto :goto_0

    :cond_7
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v4, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v5, v5, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    mul-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v4, v4, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_8
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v4, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v5, v5, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    mul-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v4, v4, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->top:F

    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v1

    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-boolean v5, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-eqz v5, :cond_a

    iget-boolean v5, v1, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    if-eqz v5, :cond_a

    iget-object v5, v1, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v5, v6, :cond_a

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v5, v5, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->getRequiredWidthSpace(Landroid/graphics/Paint;)F

    move-result v1

    add-float/2addr v2, v1

    :cond_a
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-boolean v5, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    if-eqz v5, :cond_b

    iget-boolean v5, v1, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    if-eqz v5, :cond_b

    iget-object v5, v1, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v5, v6, :cond_b

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v5, v5, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->getRequiredWidthSpace(Landroid/graphics/Paint;)F

    move-result v1

    add-float/2addr v4, v1

    :cond_b
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-boolean v5, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    if-eqz v5, :cond_e

    iget-boolean v5, v1, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    if-eqz v5, :cond_e

    iget v5, v1, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    int-to-float v5, v5

    iget v6, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    add-float/2addr v5, v6

    iget-object v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v1, v6, :cond_c

    add-float/2addr v0, v5

    goto :goto_2

    :cond_c
    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v1, v6, :cond_d

    :goto_1
    add-float/2addr v3, v5

    goto :goto_2

    :cond_d
    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v1, v6, :cond_e

    add-float/2addr v0, v5

    goto :goto_1

    :cond_e
    :goto_2
    iget v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraTopOffset:F

    add-float/2addr v3, v1

    iget v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraRightOffset:F

    add-float/2addr v4, v1

    iget v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraBottomOffset:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraLeftOffset:F

    add-float/2addr v2, v1

    iget v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, v5, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v6, v5, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    sub-float/2addr v6, v4

    iget v4, v5, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    sub-float/2addr v4, v0

    invoke-virtual {v1, v2, v3, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixOffset()V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixOffset()V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v4, v3, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    iget v3, v3, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixValuePx(FFFF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixValuePx(FFFF)V

    return-void
.end method

.method public final computeScroll()V
    .locals 11

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    instance-of v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v4, v3, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget-object v5, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget v5, v5, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragDecelerationFrictionCoef:F

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v6, v3, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    mul-float/2addr v6, v5

    iput v6, v3, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-wide v7, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationLastTime:J

    sub-long v7, v0, v7

    long-to-float v3, v7

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v3, v5

    mul-float/2addr v4, v3

    mul-float/2addr v6, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v5, v3, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v8, v5, v4

    iput v8, v3, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v4, v3, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v9, v4, v6

    iput v9, v3, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const/4 v7, 0x2

    const/4 v10, 0x0

    move-wide v3, v0

    move-wide v5, v0

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-boolean v5, v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v5, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget-object v6, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v6, v6, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float/2addr v5, v6

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    iget-boolean v4, v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v4, v4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v6, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v6, v6, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float/2addr v4, v6

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {p0, v5, v4}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->performDrag(FF)V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v4, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v5, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)V

    iput-object v5, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iput-wide v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationLastTime:J

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v3

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v3

    if-ltz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidate()V

    iget-object p0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iput v2, p0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iput v2, p0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    sget-object v0, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_5
    :goto_3
    return-void
.end method

.method public getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    return-object p0
.end method

.method public final getHighestVisibleX()F
    .locals 4

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v1, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    invoke-virtual {v0, v2, v1, v3}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    float-to-double v0, v0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    iget-wide v2, p0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    if-nez v0, :cond_0

    const-string p0, "MPAndroidChart"

    const-string p1, "Can\'t select by touch. No data set."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlighter:Lcom/github/mikephil/charting/highlight/ChartHighlighter;

    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object p0

    return-object p0
.end method

.method public final getLowestVisibleX()F
    .locals 4

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v1, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    invoke-virtual {v0, v2, v1, v3}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    float-to-double v0, v0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    iget-wide v2, p0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public final getScaleX()F
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    iget p0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    return p0
.end method

.method public final getScaleY()F
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    iget p0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    return p0
.end method

.method public final getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    return-object p0
.end method

.method public final highlightValue()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V

    return-void
.end method

.method public final highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    move-object p1, v0

    goto :goto_0

    :cond_1
    filled-new-array {p1}, [Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v2

    iput-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    array-length v4, v2

    if-lez v4, :cond_3

    aget-object v4, v2, v3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    iput-object v4, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    iput-object v0, v4, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    :goto_2
    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    if-eqz p2, :cond_6

    if-eqz v2, :cond_5

    array-length v0, v2

    if-lez v0, :cond_5

    aget-object v0, v2, v3

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p2, v1, p1}, Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;->onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    goto :goto_4

    :cond_5
    :goto_3
    invoke-interface {p2}, Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;->onNothingSelected()V

    :cond_6
    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public init()V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    new-instance v1, Lcom/github/mikephil/charting/animation/ChartAnimator;

    new-instance v2, Lcom/github/mikephil/charting/charts/Chart$1;

    invoke-direct {v2, p0}, Lcom/github/mikephil/charting/charts/Chart$1;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/github/mikephil/charting/animation/ChartAnimator;->mListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v1

    sput v1, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    sput v1, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    const-string v1, "MPChartLib-Utils"

    const-string v2, "Utils.init(...) PROVIDED CONTEXT OBJECT IS NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    sput v3, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    sput v2, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    sput-object v1, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    :goto_0
    const/high16 v1, 0x43fa0000    # 500.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxHighlightDistance:F

    new-instance v1, Lcom/github/mikephil/charting/components/Description;

    invoke-direct {v1}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    const-string v2, "Description Label"

    iput-object v2, v1, Lcom/github/mikephil/charting/components/Description;->text:Ljava/lang/String;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v2, v1, Lcom/github/mikephil/charting/components/Description;->mTextAlign:Landroid/graphics/Paint$Align;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v3

    iput v3, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescription:Lcom/github/mikephil/charting/components/Description;

    new-instance v1, Lcom/github/mikephil/charting/components/Legend;

    invoke-direct {v1}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    new-array v3, v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object v3, v1, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    iput-boolean v0, v1, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    iput-object v3, v1, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    iput-object v3, v1, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    iput-object v3, v1, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    iput-object v3, v1, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->SQUARE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v3, v1, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput v2, v1, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    const/high16 v2, 0x40400000    # 3.0f

    iput v2, v1, Lcom/github/mikephil/charting/components/Legend;->mFormLineWidth:F

    const/high16 v3, 0x40c00000    # 6.0f

    iput v3, v1, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    const/high16 v3, 0x40a00000    # 5.0f

    iput v3, v1, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    iput v2, v1, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    const v4, 0x3f733333    # 0.95f

    iput v4, v1, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    const/4 v4, 0x0

    iput v4, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    iput v4, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v1, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v1, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v1, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v5

    iput v5, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v3

    iput v3, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v3

    iput v3, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    new-instance v3, Lcom/github/mikephil/charting/renderer/LegendRenderer;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v3, v5}, Lcom/github/mikephil/charting/renderer/Renderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v3, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v5, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v5}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v5, v3, Lcom/github/mikephil/charting/renderer/LegendRenderer;->legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v3, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    iput-object v1, v3, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v3, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x41100000    # 9.0f

    invoke-static {v6}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v3, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    new-instance v1, Lcom/github/mikephil/charting/components/XAxis;

    invoke-direct {v1}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    iput v5, v1, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    iput-boolean v0, v1, Lcom/github/mikephil/charting/components/XAxis;->mAvoidFirstLastClipping:Z

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    iput-object v3, v1, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v3

    iput v3, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mInfoPaint:Landroid/graphics/Paint;

    const/16 v3, 0xf7

    const/16 v5, 0xbd

    const/16 v7, 0x33

    invoke-static {v3, v5, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mInfoPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mInfoPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v1, Lcom/github/mikephil/charting/components/YAxis;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-direct {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;-><init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    new-instance v1, Lcom/github/mikephil/charting/components/YAxis;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-direct {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;-><init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    new-instance v1, Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v1, v3}, Lcom/github/mikephil/charting/utils/Transformer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    new-instance v1, Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v1, v3}, Lcom/github/mikephil/charting/utils/Transformer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    new-instance v1, Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v1, v3, v5, v7}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    new-instance v1, Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v1, v3, v5, v7}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    new-instance v1, Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v1, v3, v5, v7}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    new-instance v1, Lcom/github/mikephil/charting/highlight/ChartHighlighter;

    invoke-direct {v1, p0}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;)V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlighter:Lcom/github/mikephil/charting/highlight/ChartHighlighter;

    new-instance v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v3, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    sget-object v5, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->NONE:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v5, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput v0, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    iput-object p0, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-static {v4, v4}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    iput-object v0, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-static {v4, v4}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    iput-object v0, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchPointCenter:Lcom/github/mikephil/charting/utils/MPPointF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedXDist:F

    iput v0, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedYDist:F

    iput v0, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedDist:F

    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationLastTime:J

    invoke-static {v4, v4}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v5

    iput-object v5, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-static {v4, v4}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v4

    iput-object v4, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iput-object v3, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    iput v2, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDragTriggerDist:F

    const/high16 v2, 0x40600000    # 3.5f

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    iput v2, v1, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMinScalePointerDistance:F

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    const/16 v2, 0xf0

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public final isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final moveViewToX(F)V
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    sget-object v2, Lcom/github/mikephil/charting/jobs/MoveViewJob;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ObjectPool;->get()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/jobs/MoveViewJob;

    iput-object v0, v2, Lcom/github/mikephil/charting/jobs/ViewPortJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iput p1, v2, Lcom/github/mikephil/charting/jobs/ViewPortJob;->xValue:F

    const/4 p1, 0x0

    iput p1, v2, Lcom/github/mikephil/charting/jobs/ViewPortJob;->yValue:F

    iput-object v1, v2, Lcom/github/mikephil/charting/jobs/ViewPortJob;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iput-object p0, v2, Lcom/github/mikephil/charting/jobs/ViewPortJob;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v1, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    cmpl-float v1, v1, p1

    if-lez v1, :cond_0

    iget v0, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final notifyDataSetChanged()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->initBuffers()V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calcMinMax()V

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v2, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iget v2, v2, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    invoke-virtual {v1, v3, v2}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->computeAxis(FF)V

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v2, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iget v2, v2, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    invoke-virtual {v1, v3, v2}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->computeAxis(FF)V

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v3, v2, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iget v2, v2, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    invoke-virtual {v1, v3, v2}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->computeAxis(FF)V

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    iget-object v3, v1, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget-boolean v4, v3, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    sget-object v11, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/4 v12, 0x1

    if-nez v4, :cond_a

    iget-object v4, v1, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetCount()I

    move-result v5

    if-ge v4, v5, :cond_9

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    move-result-object v5

    if-nez v5, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v6, v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mColors:Ljava/util/List;

    iget-object v7, v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    instance-of v8, v5, Lcom/github/mikephil/charting/data/BarDataSet;

    if-eqz v8, :cond_6

    move-object v8, v5

    check-cast v8, Lcom/github/mikephil/charting/data/BarDataSet;

    iget v10, v8, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    if-le v10, v12, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    iget v10, v8, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v7, :cond_5

    iget-object v14, v8, Lcom/github/mikephil/charting/data/BarDataSet;->mStackLabels:[Ljava/lang/String;

    array-length v15, v14

    if-lez v15, :cond_4

    rem-int v15, v10, v7

    array-length v9, v14

    if-ge v15, v9, :cond_3

    aget-object v9, v14, v15

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v17, v9

    goto :goto_3

    :cond_4
    const/16 v17, 0x0

    :goto_3
    iget-object v9, v1, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v14, Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v21

    iget v15, v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mFormLineWidth:F

    iget-object v13, v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mForm:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iget v12, v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mFormSize:F

    move-object/from16 v16, v14

    move-object/from16 v18, v13

    move/from16 v19, v12

    move/from16 v20, v15

    invoke-direct/range {v16 .. v21}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFI)V

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    iget-object v6, v8, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mLabel:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v12, v1, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v13, Lcom/github/mikephil/charting/components/LegendEntry;

    iget-object v6, v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mLabel:Ljava/lang/String;

    const v10, 0x112233

    const/high16 v8, 0x7fc00000    # Float.NaN

    const/high16 v9, 0x7fc00000    # Float.NaN

    move-object v5, v13

    move-object v7, v11

    invoke-direct/range {v5 .. v10}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFI)V

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    if-ge v8, v7, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ge v8, v9, :cond_7

    add-int/lit8 v9, v7, -0x1

    if-ge v8, v9, :cond_7

    const/16 v17, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    move-result-object v9

    iget-object v9, v9, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mLabel:Ljava/lang/String;

    move-object/from16 v17, v9

    :goto_5
    iget-object v9, v1, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v10, Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v21

    iget v12, v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mFormLineWidth:F

    iget-object v13, v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mForm:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iget v14, v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mFormSize:F

    move-object/from16 v16, v10

    move-object/from16 v18, v13

    move/from16 v19, v14

    move/from16 v20, v12

    invoke-direct/range {v16 .. v21}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFI)V

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object v2, v3, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    :cond_a
    iget-object v2, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_b

    iget-object v4, v1, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_b
    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget v4, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget v4, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget v4, v3, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v5

    iget v6, v3, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    invoke-static {v6}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v6

    iget v7, v3, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    invoke-static {v7}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v8

    iget v9, v3, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    invoke-static {v9}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v12

    iget-object v13, v3, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v14, v13

    invoke-static {v7}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    iget-object v7, v3, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v15, v7

    move/from16 v16, v10

    move/from16 v17, v16

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v15, :cond_10

    aget-object v0, v7, v10

    move/from16 v18, v4

    iget v4, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_c

    move/from16 v4, v18

    goto :goto_8

    :cond_c
    iget v4, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    :goto_8
    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v4

    cmpl-float v19, v4, v17

    if-lez v19, :cond_d

    move/from16 v17, v4

    :cond_d
    iget-object v0, v0, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    if-nez v0, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    cmpl-float v4, v0, v16

    if-lez v4, :cond_f

    move/from16 v16, v0

    :cond_f
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v18

    goto :goto_7

    :cond_10
    iget-object v0, v3, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v4, v0

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v4, :cond_13

    aget-object v15, v0, v10

    iget-object v15, v15, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    if-nez v15, :cond_11

    goto :goto_b

    :cond_11
    invoke-static {v2, v15}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v15

    int-to-float v15, v15

    cmpl-float v16, v15, v7

    if-lez v16, :cond_12

    move v7, v15

    :cond_12
    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_13
    iget-object v0, v3, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v4, 0x1

    if-eq v0, v4, :cond_14

    goto/16 :goto_1c

    :cond_14
    sget-object v0, Lcom/github/mikephil/charting/utils/Utils;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_c
    if-ge v9, v14, :cond_1e

    aget-object v15, v13, v9

    move/from16 v16, v5

    iget-object v5, v15, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move/from16 v17, v7

    if-eq v5, v11, :cond_15

    const/4 v5, 0x1

    goto :goto_d

    :cond_15
    const/4 v5, 0x0

    :goto_d
    iget v7, v15, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-eqz v18, :cond_16

    move/from16 v7, v16

    goto :goto_e

    :cond_16
    invoke-static {v7}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v7

    :goto_e
    iget-object v15, v15, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    if-nez v10, :cond_17

    const/16 v17, 0x0

    :cond_17
    if-eqz v5, :cond_19

    if-eqz v10, :cond_18

    add-float v17, v17, v6

    :cond_18
    add-float v17, v17, v7

    :cond_19
    move-object/from16 v18, v11

    move/from16 v11, v17

    if-eqz v15, :cond_1c

    if-eqz v5, :cond_1a

    if-nez v10, :cond_1a

    add-float v5, v11, v8

    goto :goto_f

    :cond_1a
    if-eqz v10, :cond_1b

    invoke-static {v0, v11}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float v5, v1, v12

    add-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v10, 0x0

    goto :goto_f

    :cond_1b
    move v5, v11

    :goto_f
    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    add-float v7, v1, v12

    add-float/2addr v7, v4

    move v4, v7

    move v7, v5

    goto :goto_10

    :cond_1c
    add-float/2addr v11, v7

    add-int/lit8 v5, v14, -0x1

    if-ge v9, v5, :cond_1d

    add-float/2addr v11, v6

    :cond_1d
    move v7, v11

    const/4 v10, 0x1

    :goto_10
    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v16

    move-object/from16 v11, v18

    goto :goto_c

    :cond_1e
    iput v0, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    iput v4, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    goto/16 :goto_1c

    :cond_1f
    move/from16 v16, v5

    move-object/from16 v18, v11

    sget-object v0, Lcom/github/mikephil/charting/utils/Utils;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v7, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v5, v7

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v5, v0

    add-float/2addr v5, v12

    iget-object v0, v1, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v0, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    iget-object v0, v3, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v3, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v3, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    :goto_11
    if-ge v7, v14, :cond_2c

    aget-object v15, v13, v7

    iget-object v0, v15, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move/from16 v19, v9

    move-object/from16 v9, v18

    if-eq v0, v9, :cond_20

    const/4 v0, 0x1

    goto :goto_12

    :cond_20
    const/4 v0, 0x0

    :goto_12
    iget v9, v15, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-eqz v20, :cond_21

    move/from16 v9, v16

    goto :goto_13

    :cond_21
    invoke-static {v9}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v9

    :goto_13
    iget-object v15, v15, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    move-object/from16 v20, v13

    iget-object v13, v3, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    move/from16 v21, v5

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, -0x1

    if-ne v11, v5, :cond_22

    const/4 v1, 0x0

    goto :goto_14

    :cond_22
    add-float/2addr v1, v6

    :goto_14
    if-eqz v15, :cond_24

    iget-object v5, v3, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    invoke-static {v2, v15}, Lcom/github/mikephil/charting/utils/Utils;->calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v13

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_23

    add-float v0, v8, v9

    goto :goto_15

    :cond_23
    const/4 v0, 0x0

    :goto_15
    add-float/2addr v1, v0

    iget-object v0, v3, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/utils/FSize;

    iget v0, v0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    add-float/2addr v1, v0

    move-object/from16 v22, v2

    const/4 v0, -0x1

    goto :goto_17

    :cond_24
    iget-object v5, v3, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    sget-object v13, Lcom/github/mikephil/charting/utils/FSize;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/utils/ObjectPool;->get()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    move-result-object v13

    check-cast v13, Lcom/github/mikephil/charting/utils/FSize;

    move-object/from16 v22, v2

    const/4 v2, 0x0

    iput v2, v13, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iput v2, v13, Lcom/github/mikephil/charting/utils/FSize;->height:F

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_25

    goto :goto_16

    :cond_25
    const/4 v9, 0x0

    :goto_16
    add-float/2addr v1, v9

    const/4 v0, -0x1

    if-ne v11, v0, :cond_26

    move v11, v7

    :cond_26
    :goto_17
    if-nez v15, :cond_27

    add-int/lit8 v2, v14, -0x1

    if-ne v7, v2, :cond_28

    :cond_27
    const/4 v2, 0x0

    goto :goto_18

    :cond_28
    const/4 v2, 0x0

    goto :goto_1a

    :goto_18
    cmpl-float v5, v12, v2

    if-nez v5, :cond_29

    move v5, v2

    goto :goto_19

    :cond_29
    move/from16 v5, v19

    :goto_19
    add-float/2addr v5, v1

    add-float/2addr v12, v5

    add-int/lit8 v5, v14, -0x1

    if-ne v7, v5, :cond_2a

    iget-object v5, v3, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    sget-object v9, Lcom/github/mikephil/charting/utils/FSize;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/utils/ObjectPool;->get()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/utils/FSize;

    iput v12, v9, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iput v4, v9, Lcom/github/mikephil/charting/utils/FSize;->height:F

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    :cond_2a
    :goto_1a
    if-eqz v15, :cond_2b

    move v11, v0

    :cond_2b
    add-int/lit8 v7, v7, 0x1

    move/from16 v9, v19

    move-object/from16 v13, v20

    move/from16 v5, v21

    move-object/from16 v2, v22

    goto/16 :goto_11

    :cond_2c
    move/from16 v21, v5

    iput v10, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    iget-object v0, v3, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v4, v0

    iget-object v0, v3, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2d

    const/4 v13, 0x0

    goto :goto_1b

    :cond_2d
    iget-object v0, v3, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/lit8 v13, v0, -0x1

    :goto_1b
    int-to-float v0, v13

    mul-float v5, v21, v0

    add-float/2addr v5, v4

    iput v5, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    :goto_1c
    iget v0, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iget v1, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    add-float/2addr v0, v1

    iput v0, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iget v0, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    iget v1, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    add-float/2addr v0, v1

    iput v0, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v10, 0x1

    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->onDraw$com$github$mikephil$charting$charts$Chart(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-boolean v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v1, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    iget-boolean v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getLowestVisibleX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighestVisibleX()F

    move-result v2

    iget-object v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    iget-object v4, v3, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    const v6, -0x800001

    iput v6, v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMax:F

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    iput v6, v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mYMin:F

    iget-object v6, v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/github/mikephil/charting/data/DataSet$Rounding;->DOWN:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    const/high16 v11, 0x7fc00000    # Float.NaN

    invoke-virtual {v5, v1, v11, v6}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryIndex(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)I

    move-result v6

    sget-object v12, Lcom/github/mikephil/charting/data/DataSet$Rounding;->UP:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {v5, v2, v11, v12}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryIndex(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)I

    move-result v11

    if-ge v11, v6, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    if-gt v6, v11, :cond_2

    iget-object v12, v5, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v5, v12}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->calcMinMaxY(Lcom/github/mikephil/charting/data/Entry;)V

    add-int/2addr v6, v10

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->calcMinMax()V

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    iget v3, v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMin:F

    iget v2, v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mXMax:F

    invoke-virtual {v1, v3, v2}, Lcom/github/mikephil/charting/components/AxisBase;->calculate(FF)V

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-boolean v2, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    :cond_6
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-boolean v2, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    :cond_8
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-boolean v2, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget v3, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    invoke-virtual {v2, v3, v1}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->computeAxis(FF)V

    :cond_9
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-boolean v2, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget v3, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    invoke-virtual {v2, v3, v1}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->computeAxis(FF)V

    :cond_a
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-boolean v2, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    iget v3, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    invoke-virtual {v2, v3, v1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->computeAxis(FF)V

    :cond_b
    iget-object v11, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    iget-object v12, v11, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-boolean v1, v12, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    sget-object v13, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    sget-object v14, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    sget-object v15, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    const/4 v5, 0x0

    if-eqz v1, :cond_c

    iget-boolean v1, v12, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    if-nez v1, :cond_d

    :cond_c
    move-object/from16 v19, v6

    move-object/from16 v18, v15

    move-object v15, v5

    goto/16 :goto_4

    :cond_d
    iget-object v1, v11, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    iget v2, v12, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v11, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    iget v2, v12, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v11, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v1, v12, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    iget-object v3, v11, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    if-eq v1, v6, :cond_f

    if-eq v1, v15, :cond_f

    if-ne v1, v4, :cond_e

    goto :goto_2

    :cond_e
    move-object v10, v3

    move-object v9, v4

    move-object/from16 v19, v6

    move-object/from16 v18, v15

    move-object v15, v5

    goto :goto_3

    :cond_f
    :goto_2
    iget-object v1, v3, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v8, v11, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    move/from16 v18, v1

    move-object/from16 v1, p1

    move-object v10, v3

    move v3, v5

    move-object v9, v4

    move/from16 v4, v18

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move-object/from16 v19, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_3
    iget-object v1, v12, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v1, v14, :cond_10

    if-eq v1, v13, :cond_10

    if-ne v1, v9, :cond_11

    :cond_10
    iget-object v1, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget-object v6, v11, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_11
    :goto_4
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderAxisLine(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderAxisLine(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-boolean v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLinesBehindData:Z

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    :cond_12
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-boolean v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLinesBehindData:Z

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    :cond_13
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-boolean v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLinesBehindData:Z

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    :cond_14
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-boolean v1, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-boolean v1, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-boolean v1, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-boolean v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipDataToContent:Z

    if-eqz v2, :cond_15

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v2, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    :cond_15
    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;

    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->drawData(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-boolean v2, v2, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLinesBehindData:Z

    if-nez v2, :cond_16

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    :cond_16
    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-boolean v2, v2, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLinesBehindData:Z

    if-nez v2, :cond_17

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    :cond_17
    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-boolean v2, v2, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLinesBehindData:Z

    if-nez v2, :cond_18

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    :cond_18
    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    if-eqz v2, :cond_1a

    array-length v3, v2

    if-lez v3, :cond_1a

    const/4 v3, 0x0

    aget-object v4, v2, v3

    if-nez v4, :cond_19

    goto :goto_5

    :cond_19
    iget-object v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;

    invoke-virtual {v3, v7, v2}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V

    :cond_1a
    :goto_5
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;

    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->drawExtras(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-boolean v1, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    const/4 v9, 0x0

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    iget-object v3, v1, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v3, v3, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    if-eqz v3, :cond_21

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1b

    goto/16 :goto_a

    :cond_1b
    iget-object v4, v1, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mRenderLimitLinesBuffer:[F

    const/4 v5, 0x0

    aput v9, v4, v5

    const/4 v5, 0x1

    aput v9, v4, v5

    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_21

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/components/LimitLine;

    iget-boolean v10, v6, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    if-nez v10, :cond_1c

    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    iget-object v11, v1, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    iget-object v12, v1, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v12, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v11, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    iget v11, v6, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    neg-float v11, v11

    invoke-virtual {v2, v11, v9}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget v2, v6, Lcom/github/mikephil/charting/components/LimitLine;->mLimit:F

    const/4 v11, 0x0

    aput v2, v4, v11

    const/4 v2, 0x1

    aput v9, v4, v2

    iget-object v9, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v9, v4}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    aget v9, v4, v11

    iget-object v15, v1, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLineSegmentsBuffer:[F

    aput v9, v15, v11

    iget-object v9, v12, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v8, v9, Landroid/graphics/RectF;->top:F

    aput v8, v15, v2

    aget v2, v4, v11

    const/4 v8, 0x2

    aput v2, v15, v8

    iget v2, v9, Landroid/graphics/RectF;->bottom:F

    const/4 v8, 0x3

    aput v2, v15, v8

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePath:Landroid/graphics/Path;

    aget v9, v15, v11

    const/4 v11, 0x1

    aget v8, v15, v11

    invoke-virtual {v2, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePath:Landroid/graphics/Path;

    const/4 v8, 0x2

    aget v9, v15, v8

    const/4 v8, 0x3

    aget v8, v15, v8

    invoke-virtual {v2, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    iget v8, v6, Lcom/github/mikephil/charting/components/LimitLine;->mLineColor:I

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    iget v8, v6, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    iget-object v8, v6, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mLimitLinePath:Landroid/graphics/Path;

    iget-object v8, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v2, v6, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    const/high16 v8, 0x40000000    # 2.0f

    add-float/2addr v2, v8

    iget-object v8, v6, Lcom/github/mikephil/charting/components/LimitLine;->mLabel:Ljava/lang/String;

    if-eqz v8, :cond_20

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    iget-object v9, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    iget-object v11, v6, Lcom/github/mikephil/charting/components/LimitLine;->mTextStyle:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v9, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v9, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    iget v11, v6, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v9, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    iget v11, v6, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v9, v6, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    iget v11, v6, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    add-float/2addr v9, v11

    iget-object v6, v6, Lcom/github/mikephil/charting/components/LimitLine;->mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    sget-object v11, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v6, v11, :cond_1d

    iget-object v6, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-static {v6, v8}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    iget-object v11, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v11, 0x0

    aget v15, v4, v11

    add-float/2addr v15, v9

    iget-object v9, v12, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v2

    add-float/2addr v9, v6

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v15, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_1d
    sget-object v11, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_BOTTOM:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v6, v11, :cond_1e

    iget-object v6, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v6, 0x0

    aget v11, v4, v6

    add-float/2addr v11, v9

    iget-object v6, v12, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v2

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v11, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_1e
    sget-object v11, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->LEFT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v6, v11, :cond_1f

    iget-object v6, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-static {v6, v8}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    const/4 v11, 0x0

    aget v15, v4, v11

    sub-float/2addr v15, v9

    iget-object v9, v12, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v2

    add-float/2addr v9, v6

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v15, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_1f
    iget-object v6, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v6, 0x0

    aget v11, v4, v6

    sub-float/2addr v11, v9

    iget-object v6, v12, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v2

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v11, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_20
    :goto_8
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_7

    :goto_9
    add-int/2addr v5, v2

    const/4 v9, 0x0

    const/4 v15, 0x0

    goto/16 :goto_6

    :cond_21
    :goto_a
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-boolean v1, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    if-eqz v1, :cond_22

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    :cond_22
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-boolean v1, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    :cond_23
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    iget-object v2, v1, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-boolean v3, v2, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v3, :cond_29

    iget-boolean v3, v2, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    if-nez v3, :cond_24

    goto/16 :goto_c

    :cond_24
    iget v3, v2, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    iget-object v4, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v5, v2, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v4, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget v5, v2, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v4, v1, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget v5, v2, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    invoke-static {v4, v4}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v5

    iget-object v4, v2, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    iget-object v6, v1, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v9, v19

    if-ne v4, v9, :cond_25

    const/high16 v9, 0x3f000000    # 0.5f

    iput v9, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iput v8, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v2, v6, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v7, v2, v5}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_b

    :cond_25
    move-object/from16 v10, v18

    const/high16 v9, 0x3f000000    # 0.5f

    if-ne v4, v10, :cond_26

    iput v9, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iput v8, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v4, v6, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v3

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    int-to-float v2, v2

    add-float/2addr v4, v2

    invoke-virtual {v1, v7, v4, v5}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_b

    :cond_26
    if-ne v4, v14, :cond_27

    const/high16 v9, 0x3f000000    # 0.5f

    iput v9, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const/4 v10, 0x0

    iput v10, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v2, v6, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v7, v2, v5}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_b

    :cond_27
    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    if-ne v4, v13, :cond_28

    iput v9, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iput v10, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v4, v6, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v3

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    int-to-float v2, v2

    sub-float/2addr v4, v2

    invoke-virtual {v1, v7, v4, v5}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_b

    :cond_28
    move v2, v9

    iput v2, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iput v8, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v4, v6, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v3

    invoke-virtual {v1, v7, v4, v5}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    iput v2, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const/4 v2, 0x0

    iput v2, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v2, v6, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v7, v2, v5}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    :goto_b
    sget-object v1, Lcom/github/mikephil/charting/utils/MPPointF;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/utils/ObjectPool;->recycle(Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V

    :cond_29
    :goto_c
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderAxisLabels(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderAxisLabels(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;

    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;->drawValues(Landroid/graphics/Canvas;)V

    iget-object v9, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget-boolean v2, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    if-nez v2, :cond_2a

    move-object v8, v7

    goto/16 :goto_32

    :cond_2a
    iget-object v2, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_2b

    iget-object v3, v9, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2b
    iget-object v2, v9, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v9, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v9, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v3, v9, Lcom/github/mikephil/charting/renderer/LegendRenderer;->legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

    sget-object v4, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v2, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v10, v2, v3

    iget-object v2, v9, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v3, v9, Lcom/github/mikephil/charting/renderer/LegendRenderer;->legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v2, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v4

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v2, v3

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v3

    add-float v12, v3, v2

    iget-object v2, v9, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    const-string v3, "ABC"

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v13, v10, v2

    iget-object v14, v1, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    iget v2, v1, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v15

    iget v2, v1, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v6

    iget-object v5, v1, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    iget-object v2, v1, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    iget v3, v1, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v16

    iget v3, v1, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v4

    iget v3, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    iget v11, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    move/from16 v19, v4

    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move/from16 v22, v12

    sget-object v12, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move/from16 v23, v6

    iget-object v6, v1, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    iget-object v7, v1, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move/from16 v24, v10

    iget-object v10, v9, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    if-eqz v8, :cond_35

    move/from16 v25, v15

    const/4 v15, 0x1

    if-eq v8, v15, :cond_2f

    const/4 v15, 0x2

    if-eq v8, v15, :cond_2c

    move/from16 v30, v3

    move-object v15, v9

    move/from16 v28, v13

    move-object/from16 v29, v14

    const/4 v8, 0x0

    goto/16 :goto_15

    :cond_2c
    if-ne v6, v4, :cond_2d

    iget v4, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    :goto_d
    sub-float/2addr v4, v11

    goto :goto_e

    :cond_2d
    iget-object v4, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    goto :goto_d

    :goto_e
    if-ne v7, v0, :cond_2e

    iget v8, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    sub-float/2addr v4, v8

    :cond_2e
    move/from16 v30, v3

    move v8, v4

    :goto_f
    move-object v15, v9

    move/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_15

    :cond_2f
    if-ne v6, v4, :cond_30

    iget v8, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v8, v15

    goto :goto_10

    :cond_30
    const/high16 v15, 0x40000000    # 2.0f

    iget-object v8, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v15, v8, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v21, 0x40000000    # 2.0f

    div-float v8, v8, v21

    add-float/2addr v8, v15

    :goto_10
    if-ne v7, v0, :cond_31

    move v15, v11

    goto :goto_11

    :cond_31
    neg-float v15, v11

    :goto_11
    add-float/2addr v8, v15

    if-ne v6, v4, :cond_34

    move-object v15, v9

    float-to-double v8, v8

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    if-ne v7, v0, :cond_32

    iget v4, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    neg-float v4, v4

    move/from16 v28, v13

    move-object/from16 v29, v14

    float-to-double v13, v4

    div-double v13, v13, v26

    move/from16 v30, v3

    float-to-double v3, v11

    add-double/2addr v13, v3

    goto :goto_12

    :cond_32
    move/from16 v30, v3

    move/from16 v28, v13

    move-object/from16 v29, v14

    iget v3, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    float-to-double v3, v3

    div-double v3, v3, v26

    float-to-double v13, v11

    sub-double v13, v3, v13

    :goto_12
    add-double/2addr v8, v13

    double-to-float v4, v8

    :cond_33
    :goto_13
    move v8, v4

    goto :goto_15

    :cond_34
    move/from16 v30, v3

    goto :goto_f

    :cond_35
    move/from16 v30, v3

    move/from16 v28, v13

    move-object/from16 v29, v14

    move/from16 v25, v15

    move-object v15, v9

    if-ne v6, v4, :cond_36

    move v4, v11

    goto :goto_14

    :cond_36
    iget-object v3, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v11

    move v4, v3

    :goto_14
    if-ne v7, v12, :cond_33

    iget v3, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    add-float/2addr v4, v3

    goto :goto_13

    :goto_15
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sget-object v9, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v11, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    if-eqz v3, :cond_49

    const/4 v4, 0x1

    if-eq v3, v4, :cond_38

    :cond_37
    move-object/from16 v8, p1

    goto/16 :goto_31

    :cond_38
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_3b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_39

    const/4 v4, 0x0

    goto :goto_18

    :cond_39
    if-ne v5, v11, :cond_3a

    iget v2, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    goto :goto_16

    :cond_3a
    iget-object v2, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    :goto_16
    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    add-float v1, v1, v30

    sub-float v4, v2, v1

    goto :goto_18

    :cond_3b
    iget v2, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget v1, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    add-float v4, v2, v1

    goto :goto_18

    :cond_3c
    if-ne v5, v11, :cond_3d

    const/4 v4, 0x0

    goto :goto_17

    :cond_3d
    iget-object v1, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->top:F

    :goto_17
    add-float v4, v4, v30

    :goto_18
    move v11, v4

    move-object/from16 v6, v29

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_19
    array-length v1, v6

    if-ge v14, v1, :cond_37

    aget-object v5, v6, v14

    iget-object v1, v5, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-eq v1, v9, :cond_3e

    const/16 v23, 0x1

    goto :goto_1a

    :cond_3e
    const/16 v23, 0x0

    :goto_1a
    iget v1, v5, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3f

    move/from16 v26, v16

    goto :goto_1b

    :cond_3f
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    move/from16 v26, v1

    :goto_1b
    if-eqz v23, :cond_42

    if-ne v7, v0, :cond_40

    add-float v1, v8, v10

    :goto_1c
    move/from16 v27, v1

    goto :goto_1d

    :cond_40
    sub-float v1, v26, v10

    sub-float v1, v8, v1

    goto :goto_1c

    :goto_1d
    add-float v4, v11, v28

    iget-object v3, v15, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v29, v3

    move/from16 v3, v27

    move/from16 v31, v8

    move/from16 v8, v19

    move-object/from16 v19, v5

    move-object/from16 v32, v9

    move-object v9, v6

    move-object/from16 v6, v29

    invoke-virtual/range {v1 .. v6}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawForm(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/LegendEntry;Lcom/github/mikephil/charting/components/Legend;)V

    if-ne v7, v0, :cond_41

    add-float v27, v27, v26

    :cond_41
    move-object/from16 v1, v19

    goto :goto_1e

    :cond_42
    move/from16 v31, v8

    move-object/from16 v32, v9

    move/from16 v8, v19

    move-object v9, v6

    move-object v1, v5

    move/from16 v27, v31

    :goto_1e
    iget-object v2, v1, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_48

    if-eqz v23, :cond_44

    if-nez v13, :cond_44

    if-ne v7, v0, :cond_43

    move/from16 v3, v25

    move v6, v3

    goto :goto_1f

    :cond_43
    move/from16 v6, v25

    neg-float v3, v6

    :goto_1f
    add-float v27, v27, v3

    goto :goto_20

    :cond_44
    move/from16 v6, v25

    if-eqz v13, :cond_45

    move/from16 v27, v31

    :cond_45
    :goto_20
    if-ne v7, v12, :cond_46

    iget-object v3, v15, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float v27, v27, v2

    :cond_46
    move/from16 v2, v27

    if-nez v13, :cond_47

    add-float v10, v11, v24

    iget-object v1, v1, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    iget-object v3, v15, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object v4, v7

    move-object/from16 v7, p1

    invoke-virtual {v7, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_21

    :cond_47
    move-object v4, v7

    move-object/from16 v7, p1

    add-float v10, v24, v22

    add-float/2addr v11, v10

    add-float v10, v11, v24

    iget-object v1, v1, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    iget-object v3, v15, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_21
    add-float v10, v24, v22

    add-float/2addr v10, v11

    move v11, v10

    const/4 v1, 0x1

    const/4 v10, 0x0

    goto :goto_22

    :cond_48
    move-object v4, v7

    move/from16 v6, v25

    move-object/from16 v7, p1

    add-float v26, v26, v8

    add-float v26, v26, v10

    move/from16 v10, v26

    const/4 v1, 0x1

    const/4 v13, 0x1

    :goto_22
    add-int/2addr v14, v1

    move-object v7, v4

    move/from16 v25, v6

    move/from16 v19, v8

    move-object v6, v9

    move/from16 v8, v31

    move-object/from16 v9, v32

    goto/16 :goto_19

    :cond_49
    move-object v4, v7

    move/from16 v31, v8

    move-object/from16 v32, v9

    move/from16 v8, v19

    move/from16 v6, v25

    move-object/from16 v9, v29

    move-object/from16 v7, p1

    iget-object v13, v1, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    iget-object v14, v1, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    iget-object v3, v1, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_4c

    move/from16 v25, v6

    const/4 v6, 0x1

    if-eq v2, v6, :cond_4b

    const/4 v6, 0x2

    if-eq v2, v6, :cond_4a

    const/4 v1, 0x0

    goto :goto_23

    :cond_4a
    iget v2, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    sub-float v2, v2, v30

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    sub-float v1, v2, v1

    goto :goto_23

    :cond_4b
    iget v2, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    sub-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    add-float v1, v2, v30

    goto :goto_23

    :cond_4c
    move/from16 v25, v6

    move/from16 v1, v30

    :goto_23
    array-length v10, v9

    move/from16 v19, v31

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_24
    if-ge v6, v10, :cond_5d

    move/from16 v20, v10

    aget-object v10, v9, v6

    move-object/from16 v29, v9

    iget-object v9, v10, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move/from16 v26, v8

    move-object/from16 v8, v32

    if-eq v9, v8, :cond_4d

    const/4 v9, 0x1

    goto :goto_25

    :cond_4d
    const/4 v9, 0x0

    :goto_25
    iget v8, v10, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v27

    if-eqz v27, :cond_4e

    move/from16 v8, v16

    goto :goto_26

    :cond_4e
    invoke-static {v8}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v8

    :goto_26
    move-object v7, v3

    check-cast v7, Ljava/util/ArrayList;

    move-object/from16 v27, v3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_4f

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4f

    add-float v3, v24, v22

    add-float/2addr v3, v1

    move v7, v3

    move/from16 v19, v31

    goto :goto_27

    :cond_4f
    move v7, v1

    :goto_27
    cmpl-float v1, v19, v31

    if-nez v1, :cond_51

    if-ne v5, v11, :cond_51

    move-object v1, v13

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_51

    if-ne v4, v12, :cond_50

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/utils/FSize;

    iget v1, v1, Lcom/github/mikephil/charting/utils/FSize;->width:F

    :goto_28
    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_29

    :cond_50
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/utils/FSize;

    iget v1, v1, Lcom/github/mikephil/charting/utils/FSize;->width:F

    neg-float v1, v1

    goto :goto_28

    :goto_29
    div-float/2addr v1, v3

    add-float v19, v1, v19

    const/4 v1, 0x1

    add-int/2addr v2, v1

    :cond_51
    move/from16 v1, v19

    move/from16 v19, v2

    iget-object v2, v10, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    if-nez v2, :cond_52

    const/16 v30, 0x1

    goto :goto_2a

    :cond_52
    const/16 v30, 0x0

    :goto_2a
    if-eqz v9, :cond_55

    if-ne v4, v12, :cond_53

    sub-float/2addr v1, v8

    :cond_53
    move/from16 v33, v1

    add-float v34, v7, v28

    iget-object v3, v15, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v35, v3

    move/from16 v3, v33

    move-object/from16 v36, v11

    move-object v11, v4

    move/from16 v4, v34

    move-object/from16 v34, v5

    move-object v5, v10

    move-object/from16 v37, v13

    move/from16 v38, v23

    move/from16 v13, v25

    move-object/from16 v23, v15

    move v15, v6

    move-object/from16 v6, v35

    invoke-virtual/range {v1 .. v6}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawForm(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/LegendEntry;Lcom/github/mikephil/charting/components/Legend;)V

    if-ne v11, v0, :cond_54

    add-float v1, v33, v8

    goto :goto_2b

    :cond_54
    move/from16 v1, v33

    goto :goto_2b

    :cond_55
    move-object/from16 v34, v5

    move-object/from16 v36, v11

    move-object/from16 v37, v13

    move/from16 v38, v23

    move/from16 v13, v25

    move-object v11, v4

    move-object/from16 v23, v15

    move v15, v6

    :goto_2b
    if-nez v30, :cond_5b

    if-eqz v9, :cond_57

    if-ne v11, v12, :cond_56

    neg-float v6, v13

    goto :goto_2c

    :cond_56
    move v6, v13

    :goto_2c
    add-float/2addr v1, v6

    :cond_57
    if-ne v11, v12, :cond_58

    move-object v2, v14

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/utils/FSize;

    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    sub-float/2addr v1, v2

    :cond_58
    add-float v2, v7, v24

    iget-object v3, v10, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    move-object/from16 v4, v23

    iget-object v5, v4, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual {v8, v3, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-ne v11, v0, :cond_59

    move-object v2, v14

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/utils/FSize;

    iget v2, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    add-float/2addr v1, v2

    :cond_59
    move/from16 v2, v38

    if-ne v11, v12, :cond_5a

    neg-float v6, v2

    goto :goto_2d

    :cond_5a
    move v6, v2

    :goto_2d
    add-float/2addr v1, v6

    move/from16 v3, v26

    :goto_2e
    const/4 v5, 0x1

    goto :goto_30

    :cond_5b
    move-object/from16 v8, p1

    move-object/from16 v4, v23

    move/from16 v2, v38

    move/from16 v3, v26

    if-ne v11, v12, :cond_5c

    neg-float v5, v3

    goto :goto_2f

    :cond_5c
    move v5, v3

    :goto_2f
    add-float/2addr v1, v5

    goto :goto_2e

    :goto_30
    add-int/lit8 v6, v15, 0x1

    move/from16 v23, v2

    move-object v15, v4

    move-object v4, v11

    move/from16 v25, v13

    move/from16 v2, v19

    move/from16 v10, v20

    move-object/from16 v9, v29

    move-object/from16 v5, v34

    move-object/from16 v11, v36

    move-object/from16 v13, v37

    move/from16 v19, v1

    move v1, v7

    move-object v7, v8

    move v8, v3

    move-object/from16 v3, v27

    goto/16 :goto_24

    :cond_5d
    move-object v8, v7

    :goto_31
    move-object/from16 v0, p0

    :goto_32
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescription:Lcom/github/mikephil/charting/components/Description;

    if-eqz v1, :cond_5e

    iget-boolean v2, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    if-eqz v2, :cond_5e

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescPaint:Landroid/graphics/Paint;

    iget-object v1, v1, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescription:Lcom/github/mikephil/charting/components/Description;

    iget v2, v2, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescription:Lcom/github/mikephil/charting/components/Description;

    iget v2, v2, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescription:Lcom/github/mikephil/charting/components/Description;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/Description;->mTextAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v3, v2, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    iget-object v2, v2, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescription:Lcom/github/mikephil/charting/components/Description;

    iget v2, v2, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    sub-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v4, v3, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    iget-object v3, v3, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget-object v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescription:Lcom/github/mikephil/charting/components/Description;

    iget v4, v3, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    sub-float/2addr v2, v4

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDescPaint:Landroid/graphics/Paint;

    iget-object v3, v3, Lcom/github/mikephil/charting/components/Description;->text:Ljava/lang/String;

    invoke-virtual {v8, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5e
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    if-eqz v1, :cond_6b

    iget-boolean v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawMarkers:Z

    if-eqz v1, :cond_6b

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    if-eqz v1, :cond_6b

    array-length v2, v1

    if-lez v2, :cond_6b

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_5f

    goto/16 :goto_38

    :cond_5f
    const/4 v7, 0x0

    :goto_33
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    array-length v2, v1

    if-ge v7, v2, :cond_6b

    aget-object v1, v1, v7

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    iget v3, v1, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    move-result-object v2

    iget-object v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    iget-object v4, v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-eqz v3, :cond_69

    int-to-float v4, v4

    iget-object v2, v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v2, v9

    cmpl-float v2, v4, v2

    if-lez v2, :cond_60

    const/4 v1, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x40000000    # 2.0f

    goto/16 :goto_37

    :cond_60
    iget v2, v1, Lcom/github/mikephil/charting/highlight/Highlight;->mDrawX:F

    iget v4, v1, Lcom/github/mikephil/charting/highlight/Highlight;->mDrawY:F

    const/4 v10, 0x2

    new-array v5, v10, [F

    const/4 v11, 0x0

    aput v2, v5, v11

    const/4 v2, 0x1

    aput v4, v5, v2

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v6, v5, v11

    aget v12, v5, v2

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v6

    if-eqz v6, :cond_6a

    invoke-virtual {v4, v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v4

    if-eqz v4, :cond_6a

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    invoke-interface {v4, v3, v1}, Lcom/github/mikephil/charting/components/IMarker;->refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    aget v12, v5, v11

    aget v13, v5, v2

    move-object v14, v1

    check-cast v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-direct {v15}, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;-><init>()V

    iget-object v1, v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    if-eqz v1, :cond_61

    iget v1, v1, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-virtual {v14}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    neg-float v2, v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_62

    :cond_61
    invoke-virtual {v14}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v1, v2

    new-instance v2, Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-virtual {v14}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    neg-float v3, v3

    invoke-virtual {v14}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>(FF)V

    iput-object v2, v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    :cond_62
    iget-object v1, v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v2, v1, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iput v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v1, v1, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iput v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v14}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v3, v12, v2

    iget v4, v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMarkerStartBound:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_63

    neg-float v1, v12

    add-float/2addr v1, v4

    iput v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    goto :goto_34

    :cond_63
    iget-object v3, v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v3, :cond_64

    add-float v4, v12, v1

    add-float/2addr v4, v2

    iget v2, v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMarkerEndBound:F

    add-float/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_64

    iget-object v2, v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v12

    sub-float/2addr v2, v1

    iget v1, v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMarkerEndBound:F

    sub-float/2addr v2, v1

    iput v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    :cond_64
    :goto_34
    iget-object v1, v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v1, :cond_65

    neg-float v1, v13

    iput v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    :cond_65
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget v1, v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMissingIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_67

    iget-object v1, v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v1, :cond_67

    iget-object v0, v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mCategoryType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_DRIVING:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    if-eq v0, v2, :cond_66

    iget-object v0, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/16 v16, 0x0

    throw v16

    :cond_66
    const/16 v16, 0x0

    iget-object v0, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v16

    :cond_67
    const/16 v16, 0x0

    iget-boolean v1, v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mDrawMarker:Z

    if-eqz v1, :cond_68

    iget v1, v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mMarkerHeight:F

    const/high16 v17, 0x40000000    # 2.0f

    div-float v3, v1, v17

    iget-object v5, v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsChartMarker;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v12

    move v4, v12

    move-object/from16 v18, v5

    move v5, v13

    move v9, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v12, v1

    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v13, v1

    invoke-virtual {v8, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v14, v8}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_35

    :cond_68
    move v9, v6

    const/high16 v17, 0x40000000    # 2.0f

    :goto_35
    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_36
    const/4 v1, 0x1

    goto :goto_37

    :cond_69
    const/4 v10, 0x2

    const/4 v11, 0x0

    :cond_6a
    const/16 v16, 0x0

    const/high16 v17, 0x40000000    # 2.0f

    goto :goto_36

    :goto_37
    add-int/2addr v7, v1

    goto/16 :goto_33

    :cond_6b
    :goto_38
    return-void
.end method

.method public final onDraw$com$github$mikephil$charting$charts$Chart(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mNoDataText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {v0, v3}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    sget-object v2, Lcom/github/mikephil/charting/charts/Chart$2;->$SwitchMap$android$graphics$Paint$Align:[I

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint$Align;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mNoDataText:Ljava/lang/String;

    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mNoDataText:Ljava/lang/String;

    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mNoDataText:Ljava/lang/String;

    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsCalculated:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsCalculated:Z

    :cond_4
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->onSizeChanged$com$github$mikephil$charting$charts$Chart(IIII)V

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object p2, p1, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, p0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)V

    return-void
.end method

.method public final onSizeChanged$com$github$mikephil$charting$charts$Chart(IIII)V
    .locals 9

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    int-to-float v1, p1

    int-to-float v2, p2

    iget-object v3, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v3, Landroid/graphics/RectF;->top:F

    iget v6, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    iget v7, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    iget v7, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    iput v2, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    iput v1, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    sub-float/2addr v1, v6

    sub-float/2addr v2, v7

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mTouchEnabled:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, p0, p1}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final setData(Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;)V
    .locals 4

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsCalculated:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v1, p1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMin:F

    iget v2, p1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mYMax:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getEntryCount()I

    move-result p1

    const/4 v3, 0x2

    if-ge p1, v3, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    :cond_1
    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    :goto_0
    float-to-double v1, p1

    invoke-static {v1, v2}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 v0, p1, 0x2

    :goto_1
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;->setup(I)V

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    iget-object p1, p1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->mDataSets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    iget-object v1, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    if-ne v1, v2, :cond_3

    :goto_3
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    iput-object v1, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->notifyDataSetChanged()V

    return-void
.end method

.method public final setExtraOffsets(FF)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraLeftOffset:F

    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraTopOffset:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraRightOffset:F

    invoke-static {p2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mExtraBottomOffset:F

    return-void
.end method

.method public final setVisibleXRangeMaximum(F)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    div-float/2addr v0, p1

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    move v0, p1

    :cond_0
    iput v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    iget-object p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setVisibleXRangeMinimum(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    div-float/2addr v0, p1

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    iput v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    iget-object p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setVisibleYRange(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 2

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p3, v0, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    :goto_0
    div-float/2addr v1, p1

    if-ne p3, v0, :cond_1

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget p1, p1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget p1, p1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    :goto_1
    div-float/2addr p1, p2

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p3, v1, p2

    if-gez p3, :cond_2

    move v1, p2

    :cond_2
    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_3

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    :cond_3
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    iget-object p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method
