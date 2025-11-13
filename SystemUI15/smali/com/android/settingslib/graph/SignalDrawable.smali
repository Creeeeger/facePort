.class public final Lcom/android/settingslib/graph/SignalDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ICON_RES:I


# instance fields
.field public mAnimating:Z

.field public final mAttributionPath:Landroid/graphics/Path;

.field public final mAttributionScaleMatrix:Landroid/graphics/Matrix;

.field public final mChangeDot:Lcom/android/settingslib/graph/SignalDrawable$1;

.field public mCurrentDot:I

.field public final mCutoutHeightFraction:F

.field public final mCutoutPath:Landroid/graphics/Path;

.field public final mCutoutWidthFraction:F

.field public final mForegroundPaint:Landroid/graphics/Paint;

.field public final mForegroundPath:Landroid/graphics/Path;

.field public final mHandler:Landroid/os/Handler;

.field public final mIntrinsicSize:I

.field public final mScaledAttributionPath:Landroid/graphics/Path;

.field public final mTransparentPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    const v0, 0x10805c6

    sput v0, Lcom/android/settingslib/graph/SignalDrawable;->ICON_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    sget v0, Lcom/android/settingslib/graph/SignalDrawable;->ICON_RES:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAttributionPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAttributionScaleMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable;->mScaledAttributionPath:Landroid/graphics/Path;

    new-instance v2, Lcom/android/settingslib/graph/SignalDrawable$1;

    invoke-direct {v2, p0}, Lcom/android/settingslib/graph/SignalDrawable$1;-><init>(Lcom/android/settingslib/graph/SignalDrawable;)V

    iput-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Lcom/android/settingslib/graph/SignalDrawable$1;

    const v2, 0x10403bc

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->updateScaledAttributionPath()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutWidthFraction:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutHeightFraction:F

    const v1, 0x7f0600ea

    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    move-result v1

    const v2, 0x7f0601e9

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0713d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    const v3, 0x106000d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/graph/SignalDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static getState(IIZ)I
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    shl-int/lit8 p2, p2, 0x10

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    const v4, 0x3daaaaab

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/settingslib/graph/SignalDrawable;->isInState(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/high16 v2, 0x3e000000    # 0.125f

    mul-float/2addr v2, v1

    const/high16 v5, 0x3d800000    # 0.0625f

    mul-float v11, v1, v5

    add-float v12, v11, v2

    sub-float/2addr v0, v4

    sub-float/2addr v0, v2

    sub-float/2addr v1, v4

    sub-float/2addr v1, v2

    iget-object v4, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    const/4 v10, 0x2

    move-object v5, p0

    move v6, v0

    move v7, v1

    move v8, v11

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/settingslib/graph/SignalDrawable;->drawDotAndPadding(FFFFI)V

    sub-float v6, v0, v12

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/android/settingslib/graph/SignalDrawable;->drawDotAndPadding(FFFFI)V

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v12, v4

    sub-float v6, v0, v12

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/settingslib/graph/SignalDrawable;->drawDotAndPadding(FFFFI)V

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/settingslib/graph/SignalDrawable;->isInState(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutWidthFraction:F

    mul-float/2addr v4, v0

    const/high16 v5, 0x41c00000    # 24.0f

    div-float/2addr v4, v5

    iget v6, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutHeightFraction:F

    mul-float/2addr v6, v1

    div-float/2addr v6, v5

    iget-object v5, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    neg-float v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    neg-float v1, v6

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mScaledAttributionPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final drawDotAndPadding(FFFFI)V
    .locals 8

    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    if-ne p5, v0, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    add-float p5, p1, p4

    add-float/2addr p4, p2

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, p1

    move v3, p2

    move v4, p5

    move v5, p4

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    sub-float v3, p1, p3

    sub-float v4, p2, p3

    add-float v5, p5, p3

    add-float v6, p4, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :cond_0
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    return p0
.end method

.method public final isInState(I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLevel()I

    move-result p0

    const/high16 v0, 0xff0000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x10

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->updateScaledAttributionPath()V

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->invalidateSelf()V

    return-void
.end method

.method public final onLevelChange(I)Z
    .locals 3

    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit16 p1, p1, 0xff

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->updateAnimation()V

    iget-object p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/graph/SignalDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->invalidateSelf()V

    return v2
.end method

.method public final setAlpha(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setAlpha(I)V

    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->updateAnimation()V

    return p1
.end method

.method public final updateAnimation()V
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settingslib/graph/SignalDrawable;->isInState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAnimating:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAnimating:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Lcom/android/settingslib/graph/SignalDrawable$1;

    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable$1;->run()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Lcom/android/settingslib/graph/SignalDrawable$1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final updateScaledAttributionPath()V
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAttributionScaleMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAttributionScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41c00000    # 24.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAttributionPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAttributionScaleMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mScaledAttributionPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    return-void
.end method
