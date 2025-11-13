.class public abstract Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBlurAnimator:Landroid/animation/ValueAnimator;

.field public final mBlurView:Landroid/widget/ImageView;

.field public mBoundsAnimator:Landroid/animation/ValueAnimator;

.field public mDirection:I

.field public final mEndBounds:Landroid/graphics/Rect;

.field public mFadeOutEndPosition:I

.field public mFadeOutStartPosition:I

.field public mHasProtectedContent:Z

.field public mIsResizing:Z

.field public final mOriginBounds:Landroid/graphics/Rect;

.field public final mOriginOutlineInsets:Landroid/graphics/Rect;

.field public final mOutlineInsets:Landroid/graphics/Rect;

.field public mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

.field public final mOutlineProvider:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$1;

.field public mScaleDownEndPosition:I

.field public mScaleDownStartPosition:I

.field public mShouldPlayHaptic:Z

.field public mSplitDismissSide:I

.field public final mStageConfigPosition:I

.field public final mStageType:I

.field public mTaskId:I

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mView:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V
    .locals 3

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mEndBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mIsResizing:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mHasProtectedContent:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mShouldPlayHaptic:Z

    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mSplitDismissSide:I

    new-instance v1, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$1;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;)V

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageType:I

    iget-object v2, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageWinConfigPositionByType(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageConfigPosition:I

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-nez p5, :cond_0

    new-instance p5, Landroid/graphics/Rect;

    invoke-direct {p5}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p2, 0x1

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    sget-boolean p2, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz p2, :cond_1

    const p2, 0x7f0a04b8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarView:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p0, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06016b

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f071459

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideViewBarThickness:I

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract calculateBoundsForPosition(ILandroid/graphics/Rect;)V
.end method

.method public abstract getDirection()I
.end method

.method public initDirection()V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageConfigPosition:I

    invoke-static {v0}, Lcom/android/wm/shell/util/StageUtils;->convertStagePositionToDockSide(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    return-void
.end method

.method public initialize()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageType:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getTaskIdByStageType(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->initDirection()V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->isLeftOrTopDirection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    iget v2, v1, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstFadeOutPosition:I

    iput v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    iget v2, v1, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    iput v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    iget v1, v1, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownStartPosition:I

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    iget v2, v1, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastFadeOutPosition:I

    iput v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    iget v2, v1, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    iput v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    iget v1, v1, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownStartPosition:I

    :goto_0
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownEndPosition:I

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRestrictedBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v4, :cond_1

    iget-object v5, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    sub-int/2addr v4, v2

    iput v4, v5, Landroid/graphics/Rect;->left:I

    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v4, :cond_2

    iget-object v5, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    sub-int/2addr v4, v2

    iput v4, v5, Landroid/graphics/Rect;->top:I

    :cond_2
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    if-le v2, v4, :cond_3

    iget-object v5, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    sub-int/2addr v2, v4

    iput v2, v5, Landroid/graphics/Rect;->right:I

    :cond_3
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    :cond_4
    sget-boolean v1, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->access$000(Lcom/android/wm/shell/common/split/DividerResizeLayout;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f081279

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->getDirection()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_8

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    const/4 v1, 0x3

    if-eq p0, v1, :cond_6

    const/4 v1, 0x4

    if-eq p0, v1, :cond_5

    const/4 p0, 0x0

    goto :goto_1

    :cond_5
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_1

    :cond_6
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_1

    :cond_7
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_1

    :cond_8
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_1
    if-eqz p0, :cond_9

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :cond_9
    return-void
.end method

.method public final isLeftOrTopDirection()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->getDirection()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final startBoundsAnimation(Landroid/graphics/Rect;ZJ)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLeft()I

    move-result p2

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "DividerResizeLayout"

    const-string/jumbo p3, "startBoundsAnimation: failed, invalid start bounds"

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->updateViewBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$5;

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$5;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$6;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$6;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->ONE_EASING:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final startOutlineInsetsAnimation(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-gtz v1, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsets:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$3;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$4;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$4;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->ONE_EASING:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x118

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DividerResizeTarget{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageType:I

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageConfigPosition:I

    invoke-static {v1}, Landroid/app/WindowConfiguration;->stagePositionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOriginBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateViewBounds(Landroid/graphics/Rect;)V
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v0, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    const-string v1, "DividerResizeLayout"

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->getDirection()I

    move-result v0

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->isLeftOrTopDirection()Z

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownStartPosition:I

    if-gt v0, v6, :cond_9

    goto :goto_1

    :cond_5
    iget v6, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownStartPosition:I

    if-lt v0, v6, :cond_9

    :goto_1
    iget v6, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownStartPosition:I

    iget v8, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownEndPosition:I

    sub-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-nez v6, :cond_6

    move v9, v7

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->isLeftOrTopDirection()Z

    move-result v8

    const v9, 0x3f666666    # 0.9f

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownEndPosition:I

    if-gt v0, v8, :cond_8

    goto :goto_2

    :cond_7
    iget v8, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownEndPosition:I

    if-lt v0, v8, :cond_8

    goto :goto_2

    :cond_8
    iget v8, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mScaleDownEndPosition:I

    sub-int/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    int-to-float v6, v6

    div-float/2addr v8, v6

    const v6, 0x3dccccd0    # 0.100000024f

    mul-float/2addr v8, v6

    add-float/2addr v9, v8

    :goto_2
    iget-object v6, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v6, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v6, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->isLeftOrTopDirection()Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    if-gt v0, v6, :cond_f

    goto :goto_4

    :cond_a
    iget v6, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    if-lt v0, v6, :cond_f

    :goto_4
    iget-object v6, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    if-nez v6, :cond_b

    goto :goto_5

    :cond_b
    const-string v6, "cancelBlurAnimation"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->end()V

    :goto_5
    iget v6, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    iget v8, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    sub-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-nez v6, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->isLeftOrTopDirection()Z

    move-result v7

    if-eqz v7, :cond_d

    iget v7, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    if-gt v0, v7, :cond_e

    goto :goto_6

    :cond_d
    iget v7, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    if-lt v0, v7, :cond_e

    :goto_6
    const/4 v7, 0x0

    goto :goto_7

    :cond_e
    iget v7, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    sub-int/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v6, v6

    div-float v7, v0, v6

    :goto_7
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_10
    :goto_8
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    sget-boolean v0, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iget-object v6, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarView:Landroid/widget/ImageView;

    if-nez v6, :cond_11

    goto/16 :goto_a

    :cond_11
    iget-object v6, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v7, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v10, v8

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v6, v9

    invoke-virtual {v7, v8, v9, v10, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->getDirection()I

    move-result v6

    const/4 v7, 0x0

    if-eq v6, v5, :cond_15

    if-eq v6, v4, :cond_14

    if-eq v6, v3, :cond_13

    if-eq v6, v2, :cond_12

    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_9

    :cond_12
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    iget v3, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideViewBarThickness:I

    neg-int v3, v3

    invoke-virtual {v2, v7, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideViewBarThickness:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_9

    :cond_13
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    iget v3, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideViewBarThickness:I

    neg-int v3, v3

    invoke-virtual {v2, v3, v7}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideViewBarThickness:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_9

    :cond_14
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideViewBarThickness:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_9

    :cond_15
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3, v7}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideViewBarThickness:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    :goto_9
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v3, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v3, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_16
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateViewBounds: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", this="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
