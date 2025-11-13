.class public Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mEffectSize:I

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPath:Landroid/graphics/Path;

.field public mRoundRectX:F

.field public mRoundRectY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->updatePath(II)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setDegree(F)V
    .locals 0

    return-void
.end method

.method public setEffectParams(III)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mEffectSize:I

    int-to-float p2, p2

    int-to-float p1, p1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mRoundRectX:F

    int-to-float p2, p3

    iget p3, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mEffectSize:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mRoundRectY:F

    return-void
.end method

.method public updatePath(II)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mEffectSize:I

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mPath:Landroid/graphics/Path;

    int-to-float v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v1, v2, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mPath:Landroid/graphics/Path;

    iget p2, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mRoundRectX:F

    iget v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mRoundRectY:F

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->mPath:Landroid/graphics/Path;

    sget-object p1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return-void
.end method
