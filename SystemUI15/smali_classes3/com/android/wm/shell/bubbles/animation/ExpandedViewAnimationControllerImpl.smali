.class public final Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final COLLAPSE_HEIGHT_PROPERTY:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$1;


# instance fields
.field public mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mBottomClipAnim:Landroid/animation/ObjectAnimator;

.field public mCollapseAnimation:Landroid/animation/AnimatorSet;

.field public mCollapsedAmount:F

.field public mDraggedAmount:I

.field public mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

.field public final mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mMinFlingVelocity:I

.field public mNotifiedAboutThreshold:Z

.field public final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public mSwipeDownVelocity:F

.field public mSwipeUpVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$1;

    const-string v1, "CollapseSpring"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->COLLAPSE_HEIGHT_PROPERTY:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;F)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mMinFlingVelocity:I

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    return-void
.end method


# virtual methods
.method public final animateBackToExpanded()V
    .locals 7

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v2, 0x17dc1f6917f33d48L    # 9.631186089362965E-194

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsAnimating:Z

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->COLLAPSE_HEIGHT_PROPERTY:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$1;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    iput-object v2, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$2;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$2;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public final animateForImeVisibilityChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBottomClipAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-boolean v2, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_1
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_2
    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeVisible:Z

    if-eqz v2, :cond_4

    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_3

    iget v2, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeHeight:I

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    sub-int/2addr v3, v2

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    sub-int/2addr p1, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    sget-object v1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->BOTTOM_CLIP_PROPERTY:Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBottomClipAnim:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$3;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBottomClipAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_6
    return-void
.end method

.method public final reset()V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, 0x5a97f934d2c23e95L    # 2.59650360535353E128

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setAnimating(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentAlpha(F)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setBackgroundAlpha(F)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->setCollapsedAmount(F)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iput v1, v2, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBottomClip:I

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->onContainerClipUpdate()V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->movePointerBy(F)V

    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    iput v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mDraggedAmount:I

    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeDownVelocity:F

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mNotifiedAboutThreshold:Z

    return-void
.end method

.method public final setCollapsedAmount(F)V
    .locals 5

    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_6

    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setSurfaceZOrderedOnTop(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iput-boolean v0, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsAnimating:Z

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    float-to-int v0, v0

    iput v0, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTopClip:I

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->onContainerClipUpdate()V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    neg-float v0, v0

    iget-object v2, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    cmpg-float v2, v0, v1

    const/4 v3, 0x0

    if-gtz v2, :cond_5

    iget-object v2, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCurrentPointer:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mLeftPointer:Landroid/graphics/drawable/ShapeDrawable;

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mRightPointer:Landroid/graphics/drawable/ShapeDrawable;

    if-ne v2, v4, :cond_5

    :goto_0
    iget-object v2, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    iget v4, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBottomClip:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCornerRadius:F

    sub-float/2addr v2, v4

    add-float/2addr v2, v0

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v4, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    cmpl-float v4, v0, v2

    if-lez v4, :cond_2

    sub-float/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iget-object v2, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCurrentPointer:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mLeftPointer:Landroid/graphics/drawable/ShapeDrawable;

    if-ne v2, v4, :cond_3

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->movePointerBy(F)V

    goto :goto_2

    :cond_3
    neg-float v2, v0

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->movePointerBy(F)V

    :goto_2
    iget-object v2, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    iget p1, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_4

    const/4 p1, 0x4

    goto :goto_3

    :cond_4
    move p1, v3

    :goto_3
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    neg-float v0, v0

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTranslationY(F)V

    iget p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p1, v3}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setSurfaceZOrderedOnTop(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setAnimating(Z)V

    :cond_6
    return-void
.end method
