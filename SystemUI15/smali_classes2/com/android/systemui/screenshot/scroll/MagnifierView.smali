.class public Lcom/android/systemui/screenshot/scroll/MagnifierView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenshot/scroll/CropView$CropInteractionListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBorderColor:I

.field public final mBorderPx:F

.field public mCheckerboard:Landroid/graphics/Path;

.field public final mCheckerboardBoxSize:F

.field public final mCheckerboardPaint:Landroid/graphics/Paint;

.field public mCropBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public final mHandlePaint:Landroid/graphics/Paint;

.field public mInnerCircle:Landroid/graphics/Path;

.field public mLastCenter:F

.field public mLastCropPosition:F

.field public mOuterCircle:Landroid/graphics/Path;

.field public final mShadePaint:Landroid/graphics/Paint;

.field public mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

.field public final mTranslationAnimatorListener:Lcom/android/systemui/screenshot/scroll/MagnifierView$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/screenshot/scroll/MagnifierView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x42200000    # 40.0f

    iput p3, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mCheckerboardBoxSize:F

    const/high16 p3, 0x3f000000    # 0.5f

    iput p3, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mLastCenter:F

    new-instance p3, Lcom/android/systemui/screenshot/scroll/MagnifierView$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/screenshot/scroll/MagnifierView$1;-><init>(Lcom/android/systemui/screenshot/scroll/MagnifierView;)V

    iput-object p3, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mTranslationAnimatorListener:Lcom/android/systemui/screenshot/scroll/MagnifierView$1;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/android/systemui/res/R$styleable;->MagnifierView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mShadePaint:Landroid/graphics/Paint;

    const/4 p3, 0x4

    const/16 v1, 0xff

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1, p3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mHandlePaint:Landroid/graphics/Paint;

    const/4 p3, 0x2

    const/high16 v1, -0x1000000

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p3, 0x3

    const/16 v1, 0x14

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mBorderPx:F

    const/4 p2, -0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mBorderColor:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mCheckerboardPaint:Landroid/graphics/Paint;

    const p0, -0x777778

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final getParentWidth()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mOuterCircle:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget v0, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mBorderColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mInnerCircle:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mCheckerboard:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mCheckerboardPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mLastCenter:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mLastCropPosition:F

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mCropBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    sget-object v2, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mShadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mHandlePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 8

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mOuterCircle:Landroid/graphics/Path;

    int-to-float p1, p1

    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p1, p1, p1, p3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mInnerCircle:Landroid/graphics/Path;

    iget p4, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mBorderPx:F

    sub-float p4, p1, p4

    invoke-virtual {p2, p1, p1, p4, p3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mCheckerboardBoxSize:F

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mCheckerboardBoxSize:F

    div-float/2addr p3, p4

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p3, p3

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    if-ge p5, p3, :cond_2

    rem-int/lit8 v0, p5, 0x2

    if-nez v0, :cond_0

    move v0, p4

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v6, v0

    :goto_2
    if-ge v6, p2, :cond_1

    int-to-float v0, v6

    iget v1, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mCheckerboardBoxSize:F

    mul-float v2, v0, v1

    int-to-float v0, p5

    mul-float v3, v0, v1

    add-int/lit8 v0, v6, 0x1

    int-to-float v0, v0

    mul-float v4, v0, v1

    add-int/lit8 v0, p5, 0x1

    int-to-float v0, v0

    mul-float v5, v0, v1

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    :cond_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mCheckerboard:Landroid/graphics/Path;

    return-void
.end method
