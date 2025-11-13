.class public abstract Lcom/github/mikephil/charting/renderer/DataRenderer;
.super Lcom/github/mikephil/charting/renderer/Renderer;
.source "DataRenderer.java"


# instance fields
.field protected mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

.field protected mDrawPaint:Landroid/graphics/Paint;

.field protected mHighlightPaint:Landroid/graphics/Paint;

.field protected mRenderPaint:Landroid/graphics/Paint;

.field protected mValuePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 1

    .line 47
    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/renderer/Renderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 48
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 51
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mDrawPaint:Landroid/graphics/Paint;

    .line 55
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    const/16 v0, 0x3f

    .line 56
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 58
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 61
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 p1, 0xff

    const/16 p2, 0xbb

    const/16 v0, 0x73

    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 109
    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/DataRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getValueTextSize()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public abstract drawData(Landroid/graphics/Canvas;)V
.end method

.method public abstract drawExtras(Landroid/graphics/Canvas;)V
.end method

.method public abstract drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
.end method

.method public abstract drawValues(Landroid/graphics/Canvas;)V
.end method

.method public abstract initBuffers()V
.end method

.method protected isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z
    .locals 1

    .line 67
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;->getMaxVisibleCount()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 68
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result p0

    mul-float/2addr p1, p0

    cmpg-float p0, v0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
