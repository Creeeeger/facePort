.class public abstract Lcom/github/mikephil/charting/charts/Chart;
.super Landroid/view/ViewGroup;
.source "Chart.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/ChartData<",
        "+",
        "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet<",
        "+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Landroid/view/ViewGroup;",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;"
    }
.end annotation


# instance fields
.field protected mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

.field protected mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

.field protected mData:Lcom/github/mikephil/charting/data/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

.field protected mDescPaint:Landroid/graphics/Paint;

.field protected mDescription:Lcom/github/mikephil/charting/components/Description;

.field private mDragDecelerationEnabled:Z

.field private mDragDecelerationFrictionCoef:F

.field protected mDrawMarkers:Z

.field private mExtraBottomOffset:F

.field private mExtraLeftOffset:F

.field private mExtraRightOffset:F

.field private mExtraTopOffset:F

.field private mGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

.field protected mHighLightPerTapEnabled:Z

.field protected mHighlighter:Lcom/github/mikephil/charting/highlight/IHighlighter;

.field protected mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

.field protected mInfoPaint:Landroid/graphics/Paint;

.field protected mJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mLegend:Lcom/github/mikephil/charting/components/Legend;

.field protected mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

.field protected mLogEnabled:Z

.field protected mMarker:Lcom/github/mikephil/charting/components/IMarker;

.field protected mMaxHighlightDistance:F

.field private mNoDataText:Ljava/lang/String;

.field private mOffsetsCalculated:Z

.field protected mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

.field protected mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

.field protected mTouchEnabled:Z

.field private mUnbind:Z

.field protected mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

.field protected mXAxis:Lcom/github/mikephil/charting/components/XAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 183
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    .line 88
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    const v1, 0x3f666666    # 0.9f

    .line 96
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 101
    new-instance v1, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    invoke-direct {v1, p1}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;-><init>(I)V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    .line 123
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    const-string v1, "No chart data available."

    .line 145
    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 164
    new-instance v1, Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;-><init>()V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/4 v1, 0x0

    .line 174
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 390
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 459
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    .line 705
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkers:Z

    .line 1605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 1715
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mUnbind:Z

    .line 184
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 191
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    const/4 p2, 0x0

    .line 78
    iput-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    const/4 p2, 0x1

    .line 83
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    .line 88
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    const v0, 0x3f666666    # 0.9f

    .line 96
    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 101
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    invoke-direct {v0, p1}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    .line 123
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    const-string v0, "No chart data available."

    .line 145
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 164
    new-instance v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 390
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 459
    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    .line 705
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkers:Z

    .line 1605
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 1715
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mUnbind:Z

    .line 192
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 199
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    const/4 p2, 0x0

    .line 78
    iput-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    const/4 p2, 0x1

    .line 83
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    .line 88
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    const p3, 0x3f666666    # 0.9f

    .line 96
    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 101
    new-instance p3, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    invoke-direct {p3, p1}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;-><init>(I)V

    iput-object p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    .line 123
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    const-string p3, "No chart data available."

    .line 145
    iput-object p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 164
    new-instance p3, Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {p3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;-><init>()V

    iput-object p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/4 p3, 0x0

    .line 174
    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 390
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 459
    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    .line 705
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkers:Z

    .line 1605
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 1715
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mUnbind:Z

    .line 200
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    return-void
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3

    .line 1725
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1726
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1728
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1729
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1730
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/charts/Chart;->unbindDrawables(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1732
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    return-void
.end method


# virtual methods
.method public addViewportJob(Ljava/lang/Runnable;)V
    .locals 1

    .line 1623
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->hasChartDimens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1624
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1626
    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public animateY(ILcom/github/mikephil/charting/animation/Easing$EasingFunction;)V
    .locals 0

    .line 881
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateY(ILcom/github/mikephil/charting/animation/Easing$EasingFunction;)V

    return-void
.end method

.method protected abstract calculateOffsets()V
.end method

.method public disableScroll()V
    .locals 1

    .line 1258
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1260
    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method protected drawDescription(Landroid/graphics/Canvas;)V
    .locals 4

    .line 421
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/ComponentBase;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Description;->getPosition()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 426
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 427
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 428
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Description;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetRight()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/ComponentBase;->getXOffset()F

    move-result v1

    sub-float/2addr v0, v1

    .line 435
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetBottom()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/ComponentBase;->getYOffset()F

    move-result v2

    sub-float/2addr v1, v2

    goto :goto_0

    .line 437
    :cond_0
    iget v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 438
    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move v3, v1

    move v1, v0

    move v0, v3

    .line 441
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Description;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected drawMarkers(Landroid/graphics/Canvas;)V
    .locals 9

    .line 718
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->isDrawMarkersEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->valuesToHighlight()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 721
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 723
    aget-object v2, v2, v1

    .line 725
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v3

    .line 727
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/ChartData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    .line 728
    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v5

    if-eqz v4, :cond_3

    int-to-float v5, v5

    .line 731
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v6

    mul-float/2addr v3, v6

    cmpl-float v3, v5, v3

    if-lez v3, :cond_1

    goto :goto_1

    .line 734
    :cond_1
    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/charts/Chart;->getMarkerPosition(Lcom/github/mikephil/charting/highlight/Highlight;)[F

    move-result-object v3

    .line 737
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v6, v3, v0

    const/4 v7, 0x1

    aget v8, v3, v7

    invoke-virtual {v5, v6, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBounds(FF)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 741
    :cond_2
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    invoke-interface {v5, v4, v2}, Lcom/github/mikephil/charting/components/IMarker;->refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 744
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    aget v4, v3, v0

    aget v3, v3, v7

    invoke-interface {v2, p1, v4, v3}, Lcom/github/mikephil/charting/components/IMarker;->draw(Landroid/graphics/Canvas;FF)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public enableScroll()V
    .locals 1

    .line 1267
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1269
    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;
    .locals 0

    .line 771
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    return-object p0
.end method

.method public getCenter()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 2

    .line 1031
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-static {v0, p0}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object p0

    return-object p0
.end method

.method public getCenterOfView()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 0

    .line 1431
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenter()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object p0

    return-object p0
.end method

.method public getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 0

    .line 1043
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentCenter()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object p0

    return-object p0
.end method

.method public getChartBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1441
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1443
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1445
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1448
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 1452
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1454
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public getContentRect()Landroid/graphics/RectF;
    .locals 0

    .line 1251
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getData()Lcom/github/mikephil/charting/data/ChartData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1377
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    return-object p0
.end method

.method public getDefaultValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .locals 0

    .line 960
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    return-object p0
.end method

.method public getDescription()Lcom/github/mikephil/charting/components/Description;
    .locals 0

    .line 1219
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    return-object p0
.end method

.method public getDragDecelerationFrictionCoef()F
    .locals 0

    .line 796
    iget p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    return p0
.end method

.method public getExtraBottomOffset()F
    .locals 0

    .line 1101
    iget p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    return p0
.end method

.method public getExtraLeftOffset()F
    .locals 0

    .line 1115
    iget p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    return p0
.end method

.method public getExtraRightOffset()F
    .locals 0

    .line 1087
    iget p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    return p0
.end method

.method public getExtraTopOffset()F
    .locals 0

    .line 1073
    iget p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    return p0
.end method

.method public getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    const-string p0, "MPAndroidChart"

    const-string p1, "Can\'t select by touch. No data set."

    .line 672
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHighlighter()Lcom/github/mikephil/charting/highlight/IHighlighter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/github/mikephil/charting/highlight/IHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object p0

    return-object p0
.end method

.method public getHighlighted()[Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    return-object p0
.end method

.method public getHighlighter()Lcom/github/mikephil/charting/highlight/IHighlighter;
    .locals 0

    .line 1411
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighlighter:Lcom/github/mikephil/charting/highlight/IHighlighter;

    return-object p0
.end method

.method public getJobs()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1637
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getLegend()Lcom/github/mikephil/charting/components/Legend;
    .locals 0

    .line 1230
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    return-object p0
.end method

.method public getLegendRenderer()Lcom/github/mikephil/charting/renderer/LegendRenderer;
    .locals 0

    .line 1240
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    return-object p0
.end method

.method public getMarker()Lcom/github/mikephil/charting/components/IMarker;
    .locals 0

    .line 1190
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    return-object p0
.end method

.method protected getMarkerPosition(Lcom/github/mikephil/charting/highlight/Highlight;)[F
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 756
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDrawX()F

    move-result v0

    const/4 v1, 0x0

    aput v0, p0, v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDrawY()F

    move-result p1

    const/4 v0, 0x1

    aput p1, p0, v0

    return-object p0
.end method

.method public getMarkerView()Lcom/github/mikephil/charting/components/IMarker;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1200
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getMarker()Lcom/github/mikephil/charting/components/IMarker;

    move-result-object p0

    return-object p0
.end method

.method public getMaxHighlightDistance()F
    .locals 0

    .line 463
    iget p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    return p0
.end method

.method public abstract synthetic getMaxVisibleCount()I
.end method

.method public getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    .locals 0

    .line 988
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    return-object p0
.end method

.method public getOnTouchListener()Lcom/github/mikephil/charting/listener/ChartTouchListener;
    .locals 0

    .line 694
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    return-object p0
.end method

.method public getRenderer()Lcom/github/mikephil/charting/renderer/DataRenderer;
    .locals 0

    .line 1396
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    return-object p0
.end method

.method public getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .locals 0

    .line 1387
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    return-object p0
.end method

.method public getXAxis()Lcom/github/mikephil/charting/components/XAxis;
    .locals 0

    .line 950
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    return-object p0
.end method

.method public getXChartMax()F
    .locals 0

    .line 1011
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    return p0
.end method

.method public getXChartMin()F
    .locals 0

    .line 1016
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    return p0
.end method

.method public getXRange()F
    .locals 0

    .line 1021
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    return p0
.end method

.method public abstract synthetic getYChartMax()F
.end method

.method public abstract synthetic getYChartMin()F
.end method

.method public getYMax()F
    .locals 0

    .line 997
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getYMax()F

    move-result p0

    return p0
.end method

.method public getYMin()F
    .locals 0

    .line 1006
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getYMin()F

    move-result p0

    return p0
.end method

.method public highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 625
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    goto :goto_1

    .line 628
    :cond_0
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v1, :cond_1

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Highlighted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MPAndroidChart"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/data/ChartData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    if-nez v1, :cond_2

    .line 633
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    move-object p1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/github/mikephil/charting/highlight/Highlight;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 638
    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    :goto_0
    move-object v0, v1

    .line 644
    :goto_1
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setLastHighlighted([Lcom/github/mikephil/charting/highlight/Highlight;)V

    if-eqz p2, :cond_4

    .line 646
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    if-eqz p2, :cond_4

    .line 648
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->valuesToHighlight()Z

    move-result p2

    if-nez p2, :cond_3

    .line 649
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    invoke-interface {p1}, Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;->onNothingSelected()V

    goto :goto_2

    .line 652
    :cond_3
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    invoke-interface {p2, v0, p1}, Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;->onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 657
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 545
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setLastHighlighted([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 548
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method protected init()V
    .locals 4

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 211
    new-instance v0, Lcom/github/mikephil/charting/animation/ChartAnimator;

    new-instance v1, Lcom/github/mikephil/charting/charts/Chart$1;

    invoke-direct {v1, p0}, Lcom/github/mikephil/charting/charts/Chart$1;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 221
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->init(Landroid/content/Context;)V

    const/high16 v0, 0x43fa0000    # 500.0f

    .line 222
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    .line 224
    new-instance v0, Lcom/github/mikephil/charting/components/Description;

    invoke-direct {v0}, Lcom/github/mikephil/charting/components/Description;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    .line 225
    new-instance v0, Lcom/github/mikephil/charting/components/Legend;

    invoke-direct {v0}, Lcom/github/mikephil/charting/components/Legend;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 227
    new-instance v1, Lcom/github/mikephil/charting/renderer/LegendRenderer;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v1, v2, v0}, Lcom/github/mikephil/charting/renderer/LegendRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/Legend;)V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    .line 229
    new-instance v0, Lcom/github/mikephil/charting/components/XAxis;

    invoke-direct {v0}, Lcom/github/mikephil/charting/components/XAxis;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 231
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    .line 233
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    const/16 v1, 0xf7

    const/16 v2, 0xbd

    const/16 v3, 0x33

    .line 234
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 236
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 238
    iget-boolean p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz p0, :cond_0

    const-string p0, ""

    const-string v0, "Chart.init()"

    .line 239
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public isDragDecelerationEnabled()Z
    .locals 0

    .line 778
    iget-boolean p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    return p0
.end method

.method public isDrawMarkersEnabled()Z
    .locals 0

    .line 1357
    iget-boolean p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkers:Z

    return p0
.end method

.method public isHighlightPerTapEnabled()Z
    .locals 0

    .line 492
    iget-boolean p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    return p0
.end method

.method public isLogEnabled()Z
    .locals 0

    .line 1134
    iget-boolean p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    return p0
.end method

.method public abstract notifyDataSetChanged()V
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1704
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1708
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mUnbind:Z

    if-eqz v0, :cond_0

    .line 1709
    invoke-direct {p0, p0}, Lcom/github/mikephil/charting/charts/Chart;->unbindDrawables(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenter()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void

    .line 408
    :cond_1
    iget-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    if-nez p1, :cond_2

    .line 410
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->calculateOffsets()V

    .line 411
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const/4 p1, 0x0

    .line 1643
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1644
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1650
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    const/high16 v0, 0x42480000    # 50.0f

    .line 1651
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    float-to-int v0, v0

    .line 1653
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    .line 1654
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p1

    .line 1653
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1656
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v1

    .line 1657
    invoke-static {v0, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p2

    .line 1656
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1652
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 1663
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    const-string v1, "MPAndroidChart"

    if-eqz v0, :cond_0

    const-string v0, "OnSizeChanged()"

    .line 1664
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, ", height: "

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    const/16 v2, 0x2710

    if-ge p1, v2, :cond_2

    if-ge p2, v2, :cond_2

    .line 1667
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v2, :cond_1

    .line 1668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting chart dimens, width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setChartDimens(FF)V

    goto :goto_0

    .line 1671
    :cond_2
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v2, :cond_3

    .line 1672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*Avoiding* setting chart dimens! width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->notifyDataSetChanged()V

    .line 1679
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1680
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1683
    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1685
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    return-void
.end method

.method public setData(Lcom/github/mikephil/charting/data/ChartData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    if-nez p1, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->getYMin()F

    move-result v0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->getYMax()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setupDefaultFormatter(FF)V

    .line 294
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 295
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->needsFormatter()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    if-ne v1, v2, :cond_1

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    goto :goto_0

    .line 300
    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->notifyDataSetChanged()V

    .line 302
    iget-boolean p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz p0, :cond_4

    const-string p0, "MPAndroidChart"

    const-string p1, "Data is set."

    .line 303
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public setDescription(Lcom/github/mikephil/charting/components/Description;)V
    .locals 0

    .line 1209
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Lcom/github/mikephil/charting/components/Description;

    return-void
.end method

.method public setDragDecelerationEnabled(Z)V
    .locals 0

    .line 787
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    return-void
.end method

.method public setDragDecelerationFrictionCoef(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const p1, 0x3f7fbe77    # 0.999f

    .line 815
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    return-void
.end method

.method public setDrawMarkerViews(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1347
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    return-void
.end method

.method public setDrawMarkers(Z)V
    .locals 0

    .line 1368
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkers:Z

    return-void
.end method

.method public setExtraBottomOffset(F)V
    .locals 0

    .line 1094
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    return-void
.end method

.method public setExtraLeftOffset(F)V
    .locals 0

    .line 1108
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    return-void
.end method

.method public setExtraOffsets(FFFF)V
    .locals 0

    .line 1056
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setExtraLeftOffset(F)V

    .line 1057
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/Chart;->setExtraTopOffset(F)V

    .line 1058
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/Chart;->setExtraRightOffset(F)V

    .line 1059
    invoke-virtual {p0, p4}, Lcom/github/mikephil/charting/charts/Chart;->setExtraBottomOffset(F)V

    return-void
.end method

.method public setExtraRightOffset(F)V
    .locals 0

    .line 1080
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    return-void
.end method

.method public setExtraTopOffset(F)V
    .locals 0

    .line 1066
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    return-void
.end method

.method public setHardwareAccelerationEnabled(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 1697
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1699
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public setHighlightPerTapEnabled(Z)V
    .locals 0

    .line 502
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighLightPerTapEnabled:Z

    return-void
.end method

.method public setHighlighter(Lcom/github/mikephil/charting/highlight/ChartHighlighter;)V
    .locals 0

    .line 1421
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mHighlighter:Lcom/github/mikephil/charting/highlight/IHighlighter;

    return-void
.end method

.method protected setLastHighlighted([Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 525
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->setLastHighlighted(Lcom/github/mikephil/charting/highlight/Highlight;)V

    goto :goto_1

    .line 526
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->setLastHighlighted(Lcom/github/mikephil/charting/highlight/Highlight;)V

    :goto_1
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    .line 1125
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    return-void
.end method

.method public setMarker(Lcom/github/mikephil/charting/components/IMarker;)V
    .locals 0

    .line 1181
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    return-void
.end method

.method public setMarkerView(Lcom/github/mikephil/charting/components/IMarker;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1195
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    return-void
.end method

.method public setMaxHighlightDistance(F)V
    .locals 0

    .line 473
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mMaxHighlightDistance:F

    return-void
.end method

.method public setNoDataText(Ljava/lang/String;)V
    .locals 0

    .line 1144
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    return-void
.end method

.method public setNoDataTextColor(I)V
    .locals 0

    .line 1153
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setNoDataTextTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1162
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setOnChartGestureListener(Lcom/github/mikephil/charting/listener/OnChartGestureListener;)V
    .locals 0

    .line 979
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    return-void
.end method

.method public setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    return-void
.end method

.method public setOnTouchListener(Lcom/github/mikephil/charting/listener/ChartTouchListener;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    return-void
.end method

.method public setRenderer(Lcom/github/mikephil/charting/renderer/DataRenderer;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1407
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .line 1172
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    return-void
.end method

.method public setUnbindEnabled(Z)V
    .locals 0

    .line 1745
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mUnbind:Z

    return-void
.end method

.method protected setupDefaultFormatter(FF)V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p2, p1

    .line 378
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_1

    .line 376
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 381
    :goto_1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->getDecimals(F)I

    move-result p1

    .line 384
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultValueFormatter:Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;->setup(I)V

    return-void
.end method

.method public valuesToHighlight()Z
    .locals 2

    .line 513
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    aget-object p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method
