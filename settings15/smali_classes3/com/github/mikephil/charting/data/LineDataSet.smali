.class public final Lcom/github/mikephil/charting/data/LineDataSet;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCircleColors:Ljava/util/List;

.field public final mCircleHoleColor:I

.field public final mCircleHoleRadius:F

.field public final mCircleRadius:F

.field public final mCubicIntensity:F

.field public final mDrawCircleHole:Z

.field public mDrawCircles:Z

.field public mDrawFilled:Z

.field public mDrawHorizontalHighlightIndicator:Z

.field public mDrawVerticalHighlightIndicator:Z

.field public final mFillAlpha:I

.field public final mFillColor:I

.field public mFillDrawable:Landroid/graphics/drawable/Drawable;

.field public mFillFormatter:Lcom/github/mikephil/charting/formatter/IFillFormatter;

.field public mHighlightLineWidth:F

.field public mLineWidth:F

.field public final mMode:Lcom/github/mikephil/charting/data/LineDataSet$Mode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawVerticalHighlightIndicator:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawHorizontalHighlightIndicator:Z

    const/high16 p2, 0x3f000000    # 0.5f

    iput p2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mHighlightLineWidth:F

    invoke-static {p2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p2

    iput p2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mHighlightLineWidth:F

    const/16 p2, 0x8c

    const/16 v0, 0xea

    const/16 v1, 0xff

    invoke-static {p2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mFillColor:I

    const/16 v2, 0x55

    iput v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mFillAlpha:I

    const/high16 v2, 0x40200000    # 2.5f

    iput v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mLineWidth:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawFilled:Z

    sget-object v2, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->LINEAR:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    iput-object v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mMode:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    const/4 v2, -0x1

    iput v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleHoleColor:I

    const/high16 v2, 0x41000000    # 8.0f

    iput v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleRadius:F

    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleHoleRadius:F

    const v2, 0x3e4ccccd    # 0.2f

    iput v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCubicIntensity:F

    new-instance v2, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/IFillFormatter;

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircleHole:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    invoke-static {p2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final setLineWidth(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mLineWidth:F

    return-void
.end method
