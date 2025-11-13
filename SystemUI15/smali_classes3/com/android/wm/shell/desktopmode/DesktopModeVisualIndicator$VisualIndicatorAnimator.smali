.class public final Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;
.super Landroid/animation/ValueAnimator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mEndBounds:Landroid/graphics/Rect;

.field public final mRectEvaluator:Landroid/animation/RectEvaluator;

.field public final mStartBounds:Landroid/graphics/Rect;

.field public final mView:Landroid/view/View;


# direct methods
.method public static -$$Nest$smanimateIndicatorType(Landroid/view/View;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;
    .locals 0

    invoke-static {p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->getIndicatorBounds(Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p3}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->getIndicatorBounds(Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;)Landroid/graphics/Rect;

    move-result-object p1

    new-instance p3, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    invoke-direct {p3, p0, p2, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;-><init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p3, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$AlphaAnimType;->ALPHA_NO_CHANGE_ANIM:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$AlphaAnimType;

    invoke-static {p3, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->setupIndicatorAnimation(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$AlphaAnimType;)V

    return-object p3
.end method

.method public static -$$Nest$smfadeBoundsIn(Landroid/view/View;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;Lcom/android/wm/shell/common/DisplayLayout;)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;
    .locals 1

    invoke-static {p2, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->getIndicatorBounds(Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance p2, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    invoke-static {p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->getMaxBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p2, p0, p1, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;-><init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$AlphaAnimType;->ALPHA_FADE_IN_ANIM:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$AlphaAnimType;

    invoke-static {p2, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->setupIndicatorAnimation(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$AlphaAnimType;)V

    return-object p2
.end method

.method public static -$$Nest$smfadeBoundsOut(Landroid/view/View;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;Lcom/android/wm/shell/common/DisplayLayout;)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;
    .locals 1

    invoke-static {p2, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->getIndicatorBounds(Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->getMaxBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;-><init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$AlphaAnimType;->ALPHA_FADE_OUT_ANIM:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$AlphaAnimType;

    invoke-static {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->setupIndicatorAnimation(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$AlphaAnimType;)V

    return-object v0
.end method

.method private constructor <init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mView:Landroid/view/View;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mStartBounds:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mEndBounds:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    new-instance p1, Landroid/animation/RectEvaluator;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p1, p2}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mRectEvaluator:Landroid/animation/RectEvaluator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getIndicatorBounds(Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;)Landroid/graphics/Rect;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    sub-int/2addr v1, v0

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    sub-int/2addr p0, v0

    invoke-direct {p1, v2, v0, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid indicator type provided."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    div-int/2addr v2, v1

    sub-int/2addr v2, v0

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    sub-int/2addr p0, v0

    invoke-direct {p1, v0, v0, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    sub-int/2addr v1, v0

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    sub-int/2addr p0, v0

    invoke-direct {p1, v0, v0, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    sget v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    sub-float/2addr p1, v0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    int-to-float v2, v1

    mul-float/2addr v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    int-to-float v4, p0

    mul-float/2addr v4, p1

    div-float/2addr v4, v3

    float-to-int v4, v4

    int-to-float v5, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v3

    sub-float/2addr v5, v1

    float-to-int v1, v5

    int-to-float v5, p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    div-float/2addr p1, v3

    sub-float/2addr v5, p1

    float-to-int p0, v5

    invoke-direct {v0, v2, v4, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static getMaxBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3c75c28f    # 0.015f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v4

    float-to-int v4, v5

    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v3

    add-float/2addr p0, v5

    float-to-int p0, p0

    invoke-direct {v0, v1, v2, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static setupIndicatorAnimation(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$AlphaAnimType;)V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$AlphaAnimType;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static updateIndicatorAlpha(FLandroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const v0, 0x7f0a052f

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p0, v1

    float-to-int v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v0, 0x7f0a052e

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
