.class public final Lcom/android/wm/shell/bubbles/BubbleFlyoutView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field public mArrowPointingLeft:Z

.field public final mBgPaint:Landroid/graphics/Paint;

.field public final mBgRect:Landroid/graphics/RectF;

.field public mBgTranslationX:F

.field public mBgTranslationY:F

.field public final mBubbleElevation:I

.field public mBubbleSize:I

.field public final mCornerRadius:F

.field public mDotCenter:[F

.field public mDotColor:I

.field public final mFloatingBackgroundColor:I

.field public final mFlyoutElevation:I

.field public final mFlyoutPadding:I

.field public final mFlyoutSpaceFromBubble:I

.field public final mFlyoutTextContainer:Landroid/view/ViewGroup;

.field public mFlyoutToDotHeightDelta:F

.field public mFlyoutToDotWidthDelta:F

.field public mFlyoutY:F

.field public final mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

.field public final mMessageText:Landroid/widget/TextView;

.field public mNewDotRadius:F

.field public mNewDotSize:F

.field public mNightModeFlags:I

.field public mOnHide:Ljava/lang/Runnable;

.field public mOriginalDotSize:F

.field public mPercentStillFlyout:F

.field public mPercentTransitionedToDot:F

.field public final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public mRestingTranslationX:F

.field public final mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

.field public final mSenderAvatar:Landroid/widget/ImageView;

.field public final mSenderText:Landroid/widget/TextView;

.field public mTranslationXWhenDot:F

.field public mTranslationYWhenDot:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    new-instance v2, Landroid/graphics/Outline;

    invoke-direct {v2}, Landroid/graphics/Outline;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0073

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a0200

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    const p2, 0x7f0a01fe

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    const p2, 0x7f0a01fd

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    const p2, 0x7f0a01ff

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07016a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutPadding:I

    const p2, 0x7f07016d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    const p2, 0x7f07015f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleElevation:I

    const p2, 0x7f070169

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutElevation:I

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v2, 0x11200ca

    const v3, 0x1010571

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060617

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mCornerRadius:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    int-to-float v1, p2

    invoke-static {v1, v1, v0}, Lcom/android/wm/shell/common/TriangleShape;->createHorizontal(FFZ)Lcom/android/wm/shell/common/TriangleShape;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-static {v1, v1, p2}, Lcom/android/wm/shell/common/TriangleShape;->createHorizontal(FFZ)Lcom/android/wm/shell/common/TriangleShape;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->applyConfigurationColors(Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method public final applyConfigurationColors(Landroid/content/res/Configuration;)V
    .locals 3

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v0, 0x11200b6

    const v1, 0x11200b8

    const v2, 0x11200ca

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public final fade(ZLandroid/graphics/PointF;ZLjava/lang/Runnable;)V
    .locals 7

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleSize:I

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/high16 v2, 0x42200000    # 40.0f

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    if-eqz p1, :cond_1

    add-float/2addr v3, v2

    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget v3, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateFlyoutX(F)V

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    invoke-virtual {p0, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateDot(Landroid/graphics/PointF;Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x96

    const-wide/16 v3, 0xfa

    if-eqz p1, :cond_3

    move-wide v5, v3

    goto :goto_2

    :cond_3
    move-wide v5, v0

    :goto_2
    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_4

    sget-object p3, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_3

    :cond_4
    sget-object p3, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_3
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    sub-float/2addr p0, v2

    :goto_4
    invoke-virtual {p2, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_6

    move-wide v0, v3

    :cond_6
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_7

    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_5

    :cond_7
    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_5
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNightModeFlags:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNightModeFlags:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->applyConfigurationColors(Landroid/content/res/Configuration;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mCornerRadius:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v3, v4, v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v2

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    mul-float/2addr v4, v3

    iput v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    mul-float/2addr v4, v3

    iput v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    int-to-float v4, v4

    iget v5, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    mul-float/2addr v4, v5

    sub-float/2addr v0, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mDotColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final setCollapsePercent(F)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    sub-float v2, v0, p1

    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    neg-int v2, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    mul-float/2addr p1, v2

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    const/high16 v3, 0x3f400000    # 0.75f

    sub-float/2addr v2, v3

    const/high16 v3, 0x3e800000    # 0.25f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutElevation:I

    int-to-float v0, p1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleElevation:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final updateDot(Landroid/graphics/PointF;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNewDotSize:F

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOriginalDotSize:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p2, v0

    :goto_1
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mDotCenter:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    add-float/2addr p2, v2

    sub-float/2addr p2, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x1

    aget v1, v1, v2

    add-float/2addr p1, v1

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    sub-float/2addr v0, p2

    iget p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    sub-float/2addr p2, p1

    neg-float p1, v0

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    neg-float p1, p2

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    return-void
.end method

.method public final updateFlyoutMessage(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;)V
    .locals 5

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v3, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->isGroupChat:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v3, v3, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v4

    iget v0, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mMinimumFlyoutWidthLargeScreen:I

    int-to-float v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3ed70a3d    # 0.42f

    mul-float/2addr v0, v3

    :goto_1
    float-to-int v0, v0

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iget-object v3, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderName:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string/jumbo v4, "sec"

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    const/16 v3, 0x258

    invoke-static {v1, v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    const/16 v0, 0x190

    invoke-static {p1, v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateFontSize()V

    return-void
.end method

.method public final updateFlyoutX(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleSize:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    :goto_0
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    return-void
.end method

.method public final updateFontSize()V
    .locals 4

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
