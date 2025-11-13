.class public Lcom/android/wm/shell/naturalswitching/NonDragTarget;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BLUR_PRESET:[F

.field public static final DARK_BLUR_PRESET:[F

.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;


# instance fields
.field public mAnimatingExit:Z

.field public mAnimator:Landroid/animation/ValueAnimator;

.field public mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mBaseBounds:Landroid/graphics/Rect;

.field public mBlurAnimator:Landroid/animation/ValueAnimator;

.field public mBlurView:Landroid/widget/ImageView;

.field public final mCurrentOutlineInsets:Landroid/graphics/Rect;

.field public final mDownScale:Landroid/graphics/PointF;

.field public mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

.field public final mEndBounds:Landroid/graphics/Rect;

.field public mHasProtectedContent:Z

.field public final mInitialOutlineInsets:Landroid/graphics/Rect;

.field public mInsetsInitialized:Z

.field public mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

.field public mNsWindowingMode:I

.field public final mOriginBounds:Landroid/graphics/Rect;

.field public mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

.field public final mOutlineProvider:Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;

.field public final mPolygon:Ljava/util/ArrayList;

.field public mStagePosition:I

.field public final mTargetOutlineInsets:Landroid/graphics/Rect;

.field public mTaskId:I

.field public final mTmpInsetsRect:Landroid/graphics/Rect;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mTransitAnimator:Landroid/animation/ValueAnimator;

.field public mView:Landroid/widget/ImageView;


# direct methods
.method public static -$$Nest$mupdateImageMatrix(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/widget/ImageView;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mInitialOutlineInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v6, v4

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v2, v5

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v3, p0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_0
    const/4 p0, 0x0

    int-to-float v1, v1

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    const/4 v0, 0x7

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->BLUR_PRESET:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->DARK_BLUR_PRESET:[F

    return-void

    :array_0
    .array-data 4
        0x437a0000    # 250.0f
        0x0
        0x41000000    # 8.0f
        0x41eb3333    # 29.4f
        0x437f0000    # 255.0f
        0x0
        0x43658000    # 229.5f
    .end array-data

    :array_1
    .array-data 4
        0x437a0000    # 250.0f
        0x0
        0x41000000    # 8.0f
        0x41eb3333    # 29.4f
        0x437f0000    # 255.0f
        0x0
        0x4358cccd    # 216.8f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mStagePosition:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    new-instance p2, Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDownScale:Landroid/graphics/PointF;

    iput-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mInsetsInitialized:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mHasProtectedContent:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mInitialOutlineInsets:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTargetOutlineInsets:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    new-instance p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineProvider:Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;

    return-void
.end method

.method public static getBlurredBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/SemGfxImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->DARK_BLUR_PRESET:[F

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->BLUR_PRESET:[F

    :goto_0
    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    const/4 v1, 0x1

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setProportionalSaturation(F)V

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveLevel(F)V

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinX(F)V

    const/4 v1, 0x4

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxX(F)V

    const/4 v1, 0x5

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinY(F)V

    const/4 v1, 0x6

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxY(F)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->applyToBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final animate(Landroid/graphics/Rect;)V
    .locals 6

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->getCurrentLayoutBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;

    invoke-direct {v5, p0, v1, v2, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget$3;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$3;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mHasProtectedContent:Z

    if-eqz p1, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_4

    move p1, v2

    goto :goto_0

    :cond_4
    move p1, v1

    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    if-ne p1, v1, :cond_7

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_1

    :cond_8
    new-array p1, v0, [F

    fill-array-data p1, :array_2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$4;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$4;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$5;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$5;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-nez v1, :cond_9

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_9
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->startOutlineInsetsAnimationIfNeeded()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final getCurrentLayoutBounds(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;IILandroid/graphics/Rect;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTaskId:I

    iput p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDownScale:Landroid/graphics/PointF;

    iget-object p4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget p4, p4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mScaleDeltaSize:I

    sub-int v0, p1, p4

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p3, Landroid/graphics/PointF;->x:F

    sub-int p1, p2, p4

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p3, Landroid/graphics/PointF;->y:F

    :cond_0
    iput p5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mStagePosition:I

    return-void
.end method

.method public final initForTaskOnly(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;Landroid/graphics/Rect;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iput p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070bc9

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070bc8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    add-int/2addr p3, p1

    add-int/2addr v0, p2

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget p2, v1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p2, v1, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setDropTargetView()V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a07ea

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    const v0, 0x7f0a07eb

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    return-void
.end method

.method public final setDropTargetView()V
    .locals 5

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetView;

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mUiHandler:Landroid/os/Handler;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mUiHandler:Landroid/os/Handler;

    :cond_0
    iput-object v2, v0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    const v3, 0x7f13056d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setX(F)V

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setY(F)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->getBackgroundResourceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->showBlurEffect()V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineProvider:Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final setThumbnail()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineProvider:Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineProvider:Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->hasProtectedContent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mHasProtectedContent:Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mHasProtectedContent:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060578

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080d20

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->getSnapshotBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->getSnapshotBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->getBlurredBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    move-object v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final startOutlineInsetsAnimationIfNeeded()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mInsetsInitialized:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget-object v2, v2, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget-object v2, v2, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v2

    xor-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget-object v4, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    if-ge v5, v6, :cond_1

    iget-object v7, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    sub-int/2addr v6, v5

    iput v6, v7, Landroid/graphics/Rect;->left:I

    :cond_1
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_2

    if-eqz v2, :cond_2

    iget-object v7, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    sub-int/2addr v6, v5

    iput v6, v7, Landroid/graphics/Rect;->top:I

    :cond_2
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_3

    iget-object v7, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    sub-int/2addr v5, v6

    iput v5, v7, Landroid/graphics/Rect;->right:I

    :cond_3
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_4

    iget-object v5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    sub-int/2addr v3, v4

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mInitialOutlineInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_4

    sub-int/2addr v3, v2

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    :cond_4
    iget-boolean v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mInsetsInitialized:Z

    if-nez v2, :cond_5

    iput-boolean v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mInsetsInitialized:Z

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mInitialOutlineInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTargetOutlineInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTargetOutlineInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_6
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTargetOutlineInsets:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget$7;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$7;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NonDragTarget{Mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBaseBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasDropTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
