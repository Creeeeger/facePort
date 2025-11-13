.class public Landroid/widget/SemFastScrollerBgDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SemFastScrollerBgDrawable.java"


# instance fields
.field private blacklist mPaint:Landroid/graphics/Paint;

.field private blacklist mValue:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemFastScrollerBgDrawable;->mValue:F

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/widget/SemFastScrollerBgDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/widget/SemFastScrollerBgDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroid/widget/SemFastScrollerBgDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/SemFastScrollerBgDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroid/widget/SemFastScrollerBgDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Landroid/widget/SemFastScrollerBgDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/SemFastScrollerBgDrawable;->mValue:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget-object v0, p0, Landroid/widget/SemFastScrollerBgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Landroid/widget/SemFastScrollerBgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    div-float/2addr v5, v1

    sub-float v5, v0, v5

    iget-object v6, p0, Landroid/widget/SemFastScrollerBgDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public whitelist setAlpha(I)V
    .locals 0

    return-void
.end method

.method public blacklist setArgb(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemFastScrollerBgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public blacklist setValue(F)V
    .locals 0

    iput p1, p0, Landroid/widget/SemFastScrollerBgDrawable;->mValue:F

    return-void
.end method
