.class Lcom/android/wm/shell/freeform/FreeformContainerView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/freeform/FreeformContainerCallback;


# static fields
.field public static final TAIL_ICON_ALPHA_ARRAY:[F

.field public static final TAIL_ICON_SCALE_ARRAY:[F


# instance fields
.field public final mActivatedXSpringList:Ljava/util/ArrayList;

.field public final mActivatedYSpringList:Ljava/util/ArrayList;

.field public mAnimElevation:I

.field public mBackgroundDimView:Landroid/widget/FrameLayout;

.field public final mContext:Landroid/content/Context;

.field public mDefaultGapTop:I

.field public mFirstDownX:F

.field public mFirstDownY:F

.field public mFirstPointerX:F

.field public mFirstPointerY:F

.field public mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

.field public mIconItemTopMarginInFolder:I

.field public mIconLeftMarginInFolder:I

.field public final mIconViewList:Ljava/util/ArrayList;

.field public final mInsetsComputer:Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda1;

.field public mIsAppIconMoving:Z

.field public mLastIconPosition:I

.field public mLastPositionX:F

.field public mLastPositionY:F

.field public mMaximumFlingVelocity:I

.field public mMinimumFlingVelocity:I

.field public mNeedInitPosition:Z

.field public mPointerGroupView:Landroid/view/ViewGroup;

.field public final mPointerPosition:Landroid/graphics/PointF;

.field public mPointerSettleDownEffectRequested:Z

.field public mPointerSettleDownGap:I

.field public mPointerView:Landroid/widget/ImageButton;

.field public mPointerViewSize:I

.field public mSpringChainX:Lcom/facebook/rebound/SpringChain;

.field public mSpringChainY:Lcom/facebook/rebound/SpringChain;

.field public final mSystemGestureExcludeUpdater:Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda2;

.field public final mSystemGestureExclusionRects:Ljava/util/List;

.field public mThresholdToMove:I

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mTouchableRegion:Landroid/graphics/Region;

.field public final mVelocity:Landroid/graphics/PointF;

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;


# direct methods
.method public static -$$Nest$msettleDownPointerEffect(Lcom/android/wm/shell/freeform/FreeformContainerView;)V
    .locals 15

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iput-boolean v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    move v5, v1

    :goto_0
    if-ltz v4, :cond_2

    iget-object v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/freeform/FreeformContainerView;->isTailIconViewOrder(I)Z

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v7, :cond_1

    add-int/2addr v5, v2

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getX()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setX(F)V

    iget-object v7, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getY()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setY(F)V

    iget-object v7, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getY()F

    move-result v7

    iget-object v9, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getY()F

    move-result v9

    iget v10, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownGap:I

    mul-int/2addr v10, v5

    int-to-float v10, v10

    add-float/2addr v9, v10

    new-instance v10, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0, v6, v1}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Ljava/lang/Object;I)V

    new-instance v11, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda4;

    invoke-direct {v11, p0, v6, v2}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Ljava/lang/Object;I)V

    new-instance v12, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda4;

    invoke-direct {v12, p0, v6, v0}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Ljava/lang/Object;I)V

    sget-object v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->TAIL_ICON_ALPHA_ARRAY:[F

    sub-int v13, v3, v4

    sub-int/2addr v13, v2

    aget v6, v6, v13

    sget-object v14, Lcom/android/wm/shell/freeform/FreeformContainerView;->TAIL_ICON_SCALE_ARRAY:[F

    aget v13, v14, v13

    new-array v14, v0, [F

    aput v8, v14, v1

    aput v6, v14, v2

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v10, v0, [F

    aput v8, v10, v1

    aput v13, v10, v2

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v10, v0, [F

    aput v7, v10, v1

    aput v9, v10, v2

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v7, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getY()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setY(F)V

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/wm/shell/freeform/FreeformContainerView;->TAIL_ICON_ALPHA_ARRAY:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->TAIL_ICON_SCALE_ARRAY:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f4f5c29    # 0.81f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSystemGestureExclusionRects:Ljava/util/List;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    new-instance p2, Landroid/graphics/Region;

    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpRegion:Landroid/graphics/Region;

    new-instance p2, Landroid/graphics/Region;

    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTouchableRegion:Landroid/graphics/Region;

    new-instance p2, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mInsetsComputer:Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda1;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocity:Landroid/graphics/PointF;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSystemGestureExcludeUpdater:Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda2;

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mNeedInitPosition:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastIconPosition:I

    invoke-static {}, Lcom/facebook/rebound/SpringChain;->create()Lcom/facebook/rebound/SpringChain;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-static {}, Lcom/facebook/rebound/SpringChain;->create()Lcom/facebook/rebound/SpringChain;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    const-string p2, "FreeformContainer"

    const-string v0, "[ContainerView] Create FreeformContainerView"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static rotateBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    sub-int/2addr p1, p0

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x4

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p3, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->right:I

    iget p1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->right:I

    iget p1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->top:I

    iget p1, p3, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->right:I

    iget p1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public final addMovementToVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float p0, v0

    neg-float v0, v1

    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method public final animateBackgroundDim(Z)V
    .locals 3

    const/16 v0, 0xff

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_0
    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    const-wide/16 v1, 0x11b

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x14d

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/wm/shell/freeform/FreeformContainerView$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerView$1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/android/wm/shell/freeform/FreeformContainerView$2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerView$2;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    :goto_2
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda4;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final buildSpringChainsOfAllAppIcons()V
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/facebook/rebound/SpringChain;->create()Lcom/facebook/rebound/SpringChain;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-static {}, Lcom/facebook/rebound/SpringChain;->create()Lcom/facebook/rebound/SpringChain;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->isTailIconViewOrder(I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    add-int/lit8 v5, v0, -0x3

    if-ge v1, v5, :cond_2

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v5, Lcom/android/wm/shell/freeform/FreeformContainerView;->TAIL_ICON_ALPHA_ARRAY:[F

    sub-int v6, v0, v1

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    new-instance v7, Lcom/android/wm/shell/freeform/FreeformContainerView$8;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/wm/shell/freeform/FreeformContainerView$8;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Landroid/widget/ImageView;F)V

    iget-object v5, v6, Lcom/facebook/rebound/SpringChain;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v5}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)V

    const-string/jumbo v8, "springConfig is required"

    iget-object v9, v6, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    if-eqz v9, :cond_4

    iput-object v9, v5, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-object v9, v6, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v6, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    new-instance v6, Lcom/android/wm/shell/freeform/FreeformContainerView$9;

    invoke-direct {v6, p0, v4, v3}, Lcom/android/wm/shell/freeform/FreeformContainerView$9;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Landroid/widget/ImageView;I)V

    iget-object v4, v5, Lcom/facebook/rebound/SpringChain;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v4}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)V

    iget-object v7, v5, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    if-eqz v7, :cond_3

    iput-object v7, v4, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-object v7, v5, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v5, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateAllSpringsCurrentValue()V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->setControlSpringIndex()V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p0}, Lcom/facebook/rebound/SpringChain;->setControlSpringIndex()V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "FreeformContainer"

    const-string v1, "[ContainerView] dispatchKeyEvent(DOWN)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    iget v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const-string v6, "[ViewController] onKeyDown("

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), close folder"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v4, v5, v5}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    goto :goto_2

    :cond_1
    const-string v3, "), "

    invoke-static {v2, v6, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_4

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    const-string v3, "UNKNOWN"

    goto :goto_1

    :cond_2
    const-string v3, "CONTAINER_STATE_FOLDER"

    goto :goto_1

    :cond_3
    const-string v3, "CONTAINER_STATE_POINTER"

    goto :goto_1

    :cond_4
    const-string v3, "CONTAINER_STATE_UNDEFINED"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", should not be focused! lp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->setFocusable(Z)V

    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateTouchableRegion()V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isPointerView()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTouchableRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v1, p0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    :cond_1
    :goto_0
    return v0
.end method

.method public final getIconViewListCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getPointerViewBounds(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getY()F

    move-result v1

    float-to-int v1, v1

    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    add-int v2, v0, p0

    add-int/2addr p0, v1

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final isTailIconViewOrder(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result p0

    add-int/lit8 v0, p0, -0x2

    add-int/lit8 p0, p0, -0x3

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-lt v0, p1, :cond_1

    if-lt p1, p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    iget v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotation:I

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateDisplayFrame(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewImmediately()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    return-void
.end method

.method public final onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCloseSystemDialogs(Ljava/lang/String;)V

    const-string p1, "FreeformContainer"

    const-string v0, "[ContainerView] onCloseSystemDialogs"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    return-void
.end method

.method public final onItemAdded(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->setIconView(Landroid/widget/ImageView;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz v1, :cond_1

    instance-of v1, p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->getItemByName(Ljava/lang/String;)Lcom/android/wm/shell/freeform/FreeformContainerItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->asMultiInstanceItem()Lcom/android/wm/shell/freeform/MultiInstanceItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->asMultiInstanceItem()Lcom/android/wm/shell/freeform/MultiInstanceItem;

    move-result-object p1

    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->removeIconView(Landroid/widget/ImageView;)V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/freeform/MultiInstanceItem;->setIconView(Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mChildItemList:Ljava/util/List;

    new-instance v2, Lcom/android/wm/shell/freeform/MultiInstanceItem$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/wm/shell/freeform/MultiInstanceItem$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateIconsPosition()V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isPointerView()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewVisibility(I)V

    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result p1

    if-le p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    new-instance v2, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->buildSpringChainsOfAllAppIcons()V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result p1

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "FreeformContainer"

    const-string v3, "[ViewController] Show Window"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    iget-object v3, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mHideContainerViewRunnable:Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerView;->mBackgroundDimView:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p1, v0, v1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewDescription()V

    iput-boolean v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    return-void
.end method

.method public final onItemRemoved(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->asMultiInstanceItem()Lcom/android/wm/shell/freeform/MultiInstanceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->asMultiInstanceItem()Lcom/android/wm/shell/freeform/MultiInstanceItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mParentItem:Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mChildItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->removeIconView(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->removeIconView(Landroid/widget/ImageView;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->hideWindow()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewDescription()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    return-void
.end method

.method public final onRotationChanged(IILandroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isPointerView()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, v0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->rotateBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->setPointerPosition(FFZ)V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewImmediately()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v3, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v4, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getTrayBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mTmpBounds:Landroid/graphics/Rect;

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v4, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    if-eqz v4, :cond_0

    const-string v0, "outside_touch_folder"

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->dismissMultiInstancePreviewPopup(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ViewController] onTouchEvent("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), close folder"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FreeformContainer"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onViewDestroyed()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mNeedInitPosition:Z

    const-string v1, "FreeformContainer"

    if-eqz v0, :cond_0

    const-string v0, "[ContainerView] savePositionToSharedPreferences, skip saving. Need to init position first"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    const-string v2, "freeform_container_pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const-string/jumbo v3, "position_x"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const-string/jumbo v3, "position_y"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const-string/jumbo v3, "rotation"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    const-string v0, "[ContainerView] removeAllSpringsListeners"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    iget-object v0, v0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/Spring;

    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->removeAllListeners()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    iget-object v0, v0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/Spring;

    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->removeAllListeners()V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/facebook/rebound/SpringChain;->create()Lcom/facebook/rebound/SpringChain;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-static {}, Lcom/facebook/rebound/SpringChain;->create()Lcom/facebook/rebound/SpringChain;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->hideWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mInsetsComputer:Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSystemGestureExcludeUpdater:Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda2;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public final removeIconView(Landroid/widget/ImageView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isPointerView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    const v1, 0x7f0101ad

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerView$3;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->buildSpringChainsOfAllAppIcons()V

    return-void
.end method

.method public final setPointerPosition(FFZ)V
    .locals 3

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    int-to-float v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    int-to-float v2, p3

    div-float/2addr v2, v1

    sub-float/2addr p2, v2

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    add-int v1, p1, p3

    add-int/2addr p3, p2

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    add-int v1, p1, v0

    add-int/2addr v0, p2

    invoke-virtual {p3, p1, p2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->adjustPositionInDisplay(IILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setX(F)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setY(F)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mNeedInitPosition:Z

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->reportFreeformContainerPoint(Landroid/graphics/PointF;)V

    :cond_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SA_LOGGING:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Landroid/graphics/Point;

    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-direct {p2, p3, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance p3, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-direct {p3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p3, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->x:I

    div-int/2addr p2, p3

    add-int/2addr p2, v0

    iget p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastIconPosition:I

    if-eq p3, p2, :cond_3

    if-eqz p1, :cond_2

    sget-object p1, Lcom/samsung/android/core/CoreSaConstant;->FREEFORM_DETAIL_MOVE_ICON:[Ljava/lang/String;

    aget-object p1, p1, p2

    const-string p3, "2203"

    invoke-static {p3, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mLastIconPosition:I

    :cond_3
    return-void
.end method

.method public final updateAllSpringsCurrentValue()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    iget-object v0, v0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/Spring;

    iput-wide v4, v1, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    iput-wide v4, v1, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getX()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setVelocity(D)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    iget-object v0, v0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/Spring;

    iput-wide v4, v1, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    iput-wide v4, v1, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    iget-object v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getY()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v1, v6, v7}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setVelocity(D)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final updateIconsPosition()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setX(F)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setY(F)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updatePointerViewDescription()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f1306fb

    const-string v3, " "

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mDescription:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1306f8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f1306fe

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1306f9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v1, ""

    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/wm/shell/freeform/FreeformContainerView$4;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/wm/shell/freeform/FreeformContainerView$4;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public final updatePointerViewImmediately()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateIconsPosition()V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateAllSpringsCurrentValue()V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->isTailIconViewOrder(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownGap:I

    mul-int/2addr v4, v1

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public final updatePointerViewVisibility(I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final updateSpringChainEndValue()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    iget-object v0, v0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    iget-object v1, v0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v0, v0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    iget-object v1, v0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v0, v0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    iget-object v0, v0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    iget-object v1, v0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v0, v0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    iget-object v1, v0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v0, v0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getY()F

    move-result p0

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)V

    :cond_1
    return-void
.end method

.method public final updateSpringConfig(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    iget-object v0, v0, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    const/16 v1, 0x96

    int-to-double v1, v1

    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/facebook/rebound/SpringConfig;->tension:D

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    iget-object v0, v0, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    int-to-double v3, p1

    invoke-static {v3, v4}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/facebook/rebound/SpringConfig;->friction:D

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    iget-object p1, p1, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/rebound/SpringConfig;->tension:D

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    iget-object p1, p1, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-static {v3, v4}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/rebound/SpringConfig;->friction:D

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    iget-object p1, p1, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    invoke-static {v0, v1}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v2

    iput-wide v2, p1, Lcom/facebook/rebound/SpringConfig;->tension:D

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    iget-object p1, p1, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    invoke-static {v2, v3}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v4

    iput-wide v4, p1, Lcom/facebook/rebound/SpringConfig;->friction:D

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    iget-object p1, p1, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-static {v0, v1}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/rebound/SpringConfig;->tension:D

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    iget-object p0, p0, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-static {v2, v3}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rebound/SpringConfig;->friction:D

    return-void
.end method

.method public final updateTouchableRegion()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isPointerView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownGap:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTouchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->forceLayout()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_2
    return-void
.end method
