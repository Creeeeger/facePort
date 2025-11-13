.class public final Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;


# instance fields
.field public final headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final isLaunching:Z

.field public final jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final notificationKey:Ljava/lang/String;

.field public final notificationLaunchAnimationInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;

.field public final notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field public final onFinishAnimationCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/internal/jank/InteractionJankMonitor;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notificationLaunchAnimationInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->onFinishAnimationCallback:Ljava/lang/Runnable;

    iget-object p1, p4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notificationKey:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->isLaunching:Z

    return-void
.end method


# virtual methods
.method public final applyParams(Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;)V
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez p1, :cond_1

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipTopAmount(I)V

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->visible:Z

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_2
    sget-object v3, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    sget-object v4, Lcom/android/systemui/animation/TransitionAnimator;->Companion:Lcom/android/systemui/animation/TransitionAnimator$Companion;

    sget-object v11, Lcom/android/systemui/animation/ActivityTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget v6, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->linearProgress:F

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x32

    move-object v5, v11

    invoke-static/range {v5 .. v10}, Lcom/android/systemui/animation/TransitionAnimator$Companion;->getProgress(Lcom/android/systemui/animation/TransitionAnimator$Timings;FJJ)F

    move-result v5

    check-cast v3, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v5}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v5

    iget v6, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startTranslationZ:F

    iget v7, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationLaunchHeight:I

    int-to-float v7, v7

    invoke-static {v6, v7, v5}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v12

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    invoke-virtual {p1}, Lcom/android/systemui/animation/TransitionAnimator$State;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v13, v5

    iput v13, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    iget v5, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startRoundedTopClipping:I

    if-lez v5, :cond_3

    iget v6, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->linearProgress:F

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x64

    move-object v5, v11

    invoke-static/range {v5 .. v10}, Lcom/android/systemui/animation/TransitionAnimator$Companion;->getProgress(Lcom/android/systemui/animation/TransitionAnimator$Timings;FJJ)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v3

    iget v4, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startNotificationTop:I

    iget v5, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    invoke-static {v4, v5, v3}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v3

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :cond_3
    iget v3, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    :goto_0
    iget v4, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setActualHeight(IZ)V

    iget v5, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->notificationParentTop:I

    sub-int/2addr v3, v5

    iget v6, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startClipTopAmount:I

    iget v7, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->progress:F

    invoke-static {v6, v1, v7}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v6

    int-to-float v3, v3

    sub-float/2addr v3, v6

    float-to-int v3, v3

    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v8, v12}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    iget v8, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->parentStartClipTopAmount:I

    add-int/2addr v7, v3

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipTopAmount(I)V

    iget-object v7, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput v13, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->invalidate()V

    iget v7, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    sub-int/2addr v7, v5

    int-to-float v7, v7

    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget v9, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v9, v9

    add-float/2addr v9, v6

    iget v8, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    int-to-float v8, v8

    sub-float/2addr v9, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v8, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    sub-int/2addr v8, v5

    int-to-float v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v7, v5

    float-to-int v5, v7

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput v5, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping$1()V

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipTopAmount(I)V

    :cond_5
    :goto_1
    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v3

    aget v3, v3, v1

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v3

    sub-float/2addr v5, v3

    iget v3, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/android/systemui/animation/TransitionAnimator$State;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    add-float/2addr v7, v3

    sub-float/2addr v7, v5

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    iget v3, v3, Lcom/android/systemui/statusbar/notification/RoundableState;->maxRadius:F

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidateOutline()V

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p1}, Lcom/android/systemui/animation/TransitionAnimator$State;->getWidth()I

    move-result v3

    iput v4, v2, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationHeight:I

    iput v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationWidth:I

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchAnimationParams:Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;

    if-eqz p1, :cond_7

    move v2, v0

    goto :goto_3

    :cond_7
    move v2, v1

    :goto_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchingNotification:Z

    if-ne v2, v3, :cond_8

    goto :goto_5

    :cond_8
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchingNotification:Z

    if-eqz p1, :cond_9

    iget v3, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startRoundedTopClipping:I

    if-gtz v3, :cond_a

    iget p1, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->parentStartRoundedTopClipping:I

    if-lez p1, :cond_9

    goto :goto_4

    :cond_9
    move v0, v1

    :cond_a
    :goto_4
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchingNotificationNeedsToBeClipped:Z

    if-eqz v0, :cond_b

    if-nez v2, :cond_c

    :cond_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLaunchedNotificationClipPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateLaunchedNotificationClipPath()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public final createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    iget v3, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v4

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v6, Lcom/android/systemui/shade/ShadeHeaderController;

    invoke-virtual {v5, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v5, v5, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const/4 v6, 0x1

    aget v7, v4, v6

    sub-int v8, v5, v7

    if-gez v8, :cond_1

    move v8, v3

    :cond_1
    add-int v10, v7, v8

    const/4 v7, 0x0

    if-lez v8, :cond_2

    move v14, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getTopCornerRadius()F

    move-result v9

    move v14, v9

    :goto_1
    new-instance v15, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;

    aget v9, v4, v6

    add-int v11, v9, v2

    aget v12, v4, v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    add-int v13, v2, v12

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBottomCornerRadius()F

    move-result v2

    move-object v9, v15

    move-object v3, v15

    move v15, v2

    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;-><init>(IIIIFF)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v2

    iput v2, v3, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startTranslationZ:F

    aget v2, v4, v6

    iput v2, v3, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startNotificationTop:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v0

    aget v0, v0, v6

    iput v0, v3, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->notificationParentTop:I

    iput v8, v3, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startRoundedTopClipping:I

    iget v0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    iput v0, v3, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startClipTopAmount:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v0

    aget v0, v0, v6

    sub-int/2addr v5, v0

    if-gez v5, :cond_3

    const/4 v5, 0x0

    :cond_3
    iput v5, v3, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->parentStartRoundedTopClipping:I

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    iput v0, v3, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->parentStartClipTopAmount:I

    if-eqz v0, :cond_4

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v1, v0, v7

    if-lez v1, :cond_4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v3, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->startClipTopAmount:I

    :cond_4
    return-object v3
.end method

.method public final getTransitionContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final isLaunching()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->isLaunching:Z

    return p0
.end method

.method public final onIntentStarted(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->DEBUG_TRANSITION_ANIMATION:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onIntentStarted(willAnimate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationLaunchAnimatorController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notificationLaunchAnimationInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;->setIsLaunchAnimationRunning(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mExpandAnimationRunning:Z

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->removeHun(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->onFinishAnimationCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public final onTransitionAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 1

    sget-boolean p1, Lcom/android/systemui/animation/ActivityTransitionAnimator;->DEBUG_TRANSITION_ANIMATION:Z

    if-eqz p1, :cond_0

    const-string p1, "NotificationLaunchAnimatorController"

    const-string v0, "onLaunchAnimationCancelled()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notificationLaunchAnimationInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;->setIsLaunchAnimationRunning(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mExpandAnimationRunning:Z

    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->removeHun(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->onFinishAnimationCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public final onTransitionAnimationEnd(Z)V
    .locals 2

    sget-boolean p1, Lcom/android/systemui/animation/ActivityTransitionAnimator;->DEBUG_TRANSITION_ANIMATION:Z

    if-eqz p1, :cond_0

    const-string p1, "NotificationLaunchAnimatorController"

    const-string v0, "onLaunchAnimationEnd()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setExpandAnimationRunning(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notificationLaunchAnimationInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;->setIsLaunchAnimationRunning(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mExpandAnimationRunning:Z

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->setExpandingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->applyParams(Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->removeHun(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->onFinishAnimationCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public final onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;

    iput p2, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->progress:F

    iput p3, p1, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;->linearProgress:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->applyParams(Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;)V

    return-void
.end method

.method public final onTransitionAnimationStart(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setExpandAnimationRunning(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->setExpandingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    return-void
.end method

.method public final removeHun(Z)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notificationKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->isHeadsUpEntry(Ljava/lang/String;)Z

    move-result v4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_1

    move-object v0, p0

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->isHeadsUpEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpUtil;->setNeedsHeadsUpDisappearAnimationAfterClick(Landroid/view/View;Z)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    check-cast v2, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {v2, p0, v0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->removeNotification$1(Ljava/lang/String;Z)Z

    goto :goto_2

    :cond_5
    iget-object p1, v2, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mAnimationStateHandler:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda13;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    invoke-virtual {v2, p0, v0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->removeNotification$1(Ljava/lang/String;Z)Z

    iget-object p0, v2, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mAnimationStateHandler:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda13;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    :goto_2
    return-void
.end method

.method public final setTransitionContainer(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
