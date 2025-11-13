.class public Lcom/android/wm/shell/naturalswitching/DragTargetView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;


# instance fields
.field public mAnimatingExit:Z

.field public mBoundsAnimator:Landroid/animation/ValueAnimator;

.field public mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public mCornerRadius:I

.field public final mCurrentDragTargetRect:Landroid/graphics/Rect;

.field public final mCurrentOutlineInsets:Landroid/graphics/Rect;

.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public mDividerSize:I

.field public final mDownScale:Landroid/graphics/PointF;

.field public mDragTarget:Landroid/widget/FrameLayout;

.field public mDragTargetBounds:Landroid/graphics/Rect;

.field public mDragTargetImage:Landroid/widget/ImageView;

.field public mDragTargetWindowingMode:I

.field public final mEndBounds:Landroid/graphics/Rect;

.field public final mHandlerPosition:Landroid/graphics/Point;

.field public mHasProtectedContent:Z

.field public mIsDragEndCalled:Z

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

.field public mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

.field public final mOutlineProvider:Lcom/android/wm/shell/naturalswitching/DragTargetView$1;

.field public mScaleDownAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mScaleDownAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mScaleUpAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mScaleUpAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final mStableRect:Landroid/graphics/Rect;

.field public final mTargetOutlineInsets:Landroid/graphics/Rect;

.field public mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

.field public final mTmpFloats:[F

.field public final mUpScale:Landroid/graphics/PointF;

.field public mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHasProtectedContent:Z

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mStableRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDownScale:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mUpScale:Landroid/graphics/PointF;

    iput-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mAnimatingExit:Z

    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTmpFloats:[F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mEndBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHandlerPosition:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTargetOutlineInsets:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    new-instance p1, Lcom/android/wm/shell/naturalswitching/DragTargetView$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView$1;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;)V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineProvider:Lcom/android/wm/shell/naturalswitching/DragTargetView$1;

    return-void
.end method


# virtual methods
.method public final adjustDragTargetViewBoundsIfNeeded()V
    .locals 9

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isPipNaturalSwitching()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mIsDragEndCalled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->getMinimumDragTargetViewBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v4, Landroid/graphics/Rect;->right:I

    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_2

    iget v1, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHasProtectedContent:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, v1, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    :goto_1
    move v7, v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    iget-boolean v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mIsDragEndCalled:Z

    if-eqz v1, :cond_5

    const-wide/16 v0, 0x96

    :goto_3
    move-wide v5, v0

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    const-wide/16 v0, 0x15e

    goto :goto_3

    :cond_6
    const-wide/16 v0, 0xaf

    goto :goto_3

    :goto_4
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;JF)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public final getCurrentDragTargetRect()Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getDropSide()I
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mStableRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x78

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget-boolean v3, v2, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mSupportOnlyTwoUpMode:Z

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eqz v3, :cond_4

    iget-object v2, v2, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_0

    return v7

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_3

    return v4

    :cond_1
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_2

    return v8

    :cond_2
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_3

    return v5

    :cond_3
    return v6

    :cond_4
    invoke-virtual {v2}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isFloatingDragTarget()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_5

    return v8

    :cond_5
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_8

    return v5

    :cond_6
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_7

    return v7

    :cond_7
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_8

    return v4

    :cond_8
    return v6

    :cond_9
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v9

    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget v10, v2, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->getMinimumDragTargetViewBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/2addr v11, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v12

    if-le v2, v11, :cond_a

    goto :goto_0

    :cond_a
    move v11, v2

    :goto_0
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v13, v2, Landroid/graphics/Rect;->left:I

    iget v14, v1, Landroid/graphics/Rect;->left:I

    if-gt v13, v14, :cond_e

    iget v10, v2, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gt v10, v1, :cond_b

    if-lt v3, v9, :cond_10

    goto :goto_1

    :cond_b
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v12, :cond_d

    if-lt v3, v11, :cond_c

    goto :goto_1

    :cond_c
    move v1, v4

    goto :goto_3

    :cond_d
    :goto_1
    move v1, v8

    goto :goto_3

    :cond_e
    iget v15, v2, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-gt v15, v5, :cond_11

    if-gt v13, v14, :cond_f

    if-lt v3, v9, :cond_10

    goto :goto_1

    :cond_f
    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v2, v1, :cond_10

    if-lt v10, v9, :cond_10

    goto :goto_2

    :cond_10
    move v1, v7

    goto :goto_3

    :cond_11
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v4, v1, :cond_14

    if-gt v15, v5, :cond_12

    if-lt v10, v9, :cond_10

    goto :goto_2

    :cond_12
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v12, :cond_13

    if-lt v10, v11, :cond_16

    :cond_13
    :goto_2
    const/16 v1, 0x8

    goto :goto_3

    :cond_14
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v12, :cond_17

    if-gt v13, v14, :cond_15

    if-lt v3, v11, :cond_16

    goto :goto_1

    :cond_15
    if-ne v4, v1, :cond_16

    if-lt v10, v11, :cond_16

    goto :goto_2

    :cond_16
    const/16 v1, 0x10

    goto :goto_3

    :cond_17
    move v1, v6

    :goto_3
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v2}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    move-result v2

    const/16 v3, 0x20

    if-eqz v2, :cond_1d

    if-ne v1, v6, :cond_1d

    iget v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetWindowingMode:I

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isQuarter(I)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget v4, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetWindowingMode:I

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitCreateMode()I

    move-result v4

    if-eq v4, v8, :cond_1b

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1a

    if-eq v4, v7, :cond_19

    const/4 v5, 0x5

    if-eq v4, v5, :cond_18

    const-string v0, "DragTargetView"

    const-string v2, "invalid create mode"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_18
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v2, :cond_1c

    :goto_4
    move v1, v3

    goto :goto_5

    :cond_19
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v0, v2, :cond_1c

    goto :goto_4

    :cond_1a
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDividerSize:I

    sub-int/2addr v2, v0

    if-ge v4, v2, :cond_1c

    goto :goto_4

    :cond_1b
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDividerSize:I

    sub-int/2addr v2, v0

    if-ge v4, v2, :cond_1c

    goto :goto_4

    :cond_1c
    :goto_5
    return v1

    :cond_1d
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v2}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    move-result v2

    if-eqz v2, :cond_23

    iget v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetWindowingMode:I

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isQuarter(I)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1e
    :goto_6
    move v6, v1

    goto/16 :goto_7

    :cond_1f
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellStageWindowConfigPosition()I

    move-result v2

    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    invoke-virtual {v0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isNonTargetsHorizontal()Z

    move-result v0

    if-eqz v0, :cond_21

    if-ne v1, v7, :cond_20

    and-int/lit8 v0, v2, 0x10

    if-nez v0, :cond_26

    :cond_20
    const/16 v0, 0x10

    if-ne v1, v0, :cond_1e

    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_1e

    goto :goto_7

    :cond_21
    if-ne v1, v8, :cond_22

    and-int/lit8 v0, v2, 0x8

    if-nez v0, :cond_26

    :cond_22
    const/16 v0, 0x8

    if-ne v1, v0, :cond_1e

    and-int/lit8 v0, v2, 0x20

    if-eqz v0, :cond_1e

    goto :goto_7

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isFloatingDragTarget()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v2}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    invoke-virtual {v0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isNonTargetsHorizontal()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eq v1, v8, :cond_1e

    const/16 v0, 0x8

    if-ne v1, v0, :cond_26

    goto :goto_6

    :cond_24
    if-eq v1, v7, :cond_1e

    const/16 v0, 0x10

    if-ne v1, v0, :cond_26

    goto :goto_6

    :cond_25
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v2}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isFloatingDragTarget()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v0, v6}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    goto :goto_6

    :cond_26
    :goto_7
    return v6
.end method

.method public final getMinimumDragTargetViewBounds()Landroid/graphics/Rect;
    .locals 6

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isPipNaturalSwitching()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mStableRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget-boolean v4, v4, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mSupportOnlyTwoUpMode:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_2

    if-le v2, v3, :cond_1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const v4, 0x3f59999a    # 0.85f

    mul-float/2addr v2, v4

    add-float/2addr v2, v5

    float-to-int v2, v2

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->scale(F)V

    :goto_0
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDividerSize:I

    sub-int/2addr v2, p0

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p0

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    return-object v0
.end method

.method public final isFloatingDragTarget()Z
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetWindowingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isPipNaturalSwitching()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isPipNaturalSwitching()Z
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetWindowingMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isQuarter(I)Z
    .locals 3

    invoke-static {p1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->isFloating(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xc

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellHostStageType()I

    move-result p0

    if-ne p0, v2, :cond_4

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method public final onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public final startSpringAnimation(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isFloatingDragTarget()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v4, :cond_1

    sub-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v4, :cond_2

    if-eqz v0, :cond_2

    sub-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->right:I

    iget v2, v3, Landroid/graphics/Rect;->right:I

    if-le v0, v2, :cond_3

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_3
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_4

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTargetOutlineInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTargetOutlineInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTargetOutlineInsets:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/wm/shell/naturalswitching/DragTargetView$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/wm/shell/naturalswitching/DragTargetView$3;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/wm/shell/naturalswitching/DragTargetView$4;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView$4;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleDownAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDownScale:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleDownAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDownScale:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    new-instance p1, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleDownAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleDownAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
