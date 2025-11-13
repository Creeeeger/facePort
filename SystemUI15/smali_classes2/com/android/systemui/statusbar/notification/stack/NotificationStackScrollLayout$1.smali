.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 23

    move-object/from16 v0, p0

    const/4 v2, 0x1

    sget v3, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v4, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisplayState:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    const/4 v6, 0x3

    if-eq v4, v6, :cond_0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    :cond_0
    move v0, v2

    goto/16 :goto_42

    :cond_1
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateForcedScroll()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "NSSL#updateChildren"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v6, v8, :cond_5

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v9, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v9

    instance-of v10, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v10, :cond_3

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v8

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    :goto_1
    iget v10, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v8, v10

    iget v10, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v9, v10, :cond_4

    add-int/2addr v10, v8

    invoke-virtual {v3, v10}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :cond_4
    add-int/2addr v6, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    :goto_2
    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-object v8, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    move v8, v9

    goto :goto_3

    :cond_6
    iget-object v8, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v8

    :goto_3
    iput v8, v6, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mCurrentScrollVelocity:F

    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    iget-object v8, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getSpeedBumpIndex$1()I

    move-result v15

    iget-object v10, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    move v11, v7

    :goto_4
    if-ge v11, v10, :cond_7

    iget-object v12, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->resetViewState()V

    add-int/2addr v11, v2

    goto :goto_4

    :cond_7
    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    iget-object v14, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    neg-int v10, v10

    int-to-float v10, v10

    iput v10, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    iput v10, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    iget-object v10, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    iget-object v11, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    iget-object v11, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v11, v7

    move v12, v11

    :goto_5
    if-ge v11, v10, :cond_c

    iget-object v13, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_b

    iget-object v1, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-ne v13, v1, :cond_8

    goto :goto_7

    :cond_8
    instance-of v1, v13, Lcom/android/systemui/statusbar/DndStatusView;

    if-eqz v1, :cond_9

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_9

    iget-object v1, v13, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput v12, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    iget-object v1, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->addFirst(Ljava/lang/Object;)V

    add-int/2addr v12, v2

    goto :goto_7

    :cond_9
    iget-object v1, v13, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput v12, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    iget-object v1, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v12, v2

    instance-of v1, v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_b

    check-cast v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v1

    iget-boolean v13, v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v13, :cond_b

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_a

    iget-object v5, v13, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput v12, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    add-int/2addr v12, v2

    :cond_a
    const/4 v5, 0x4

    goto :goto_6

    :cond_b
    :goto_7
    add-int/2addr v11, v2

    const/4 v5, 0x4

    goto :goto_5

    :cond_c
    iget v1, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v4

    iget-object v5, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mBypassController:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;

    if-eqz v4, :cond_d

    move-object v4, v5

    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    iget v4, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mNotificationScrimPadding:F

    add-float/2addr v1, v4

    :cond_e
    const/4 v4, 0x0

    iput-object v4, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move v10, v7

    :goto_8
    iget-object v11, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v13, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mSectionProvider:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

    if-ge v10, v11, :cond_12

    iget-object v11, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-lez v10, :cond_f

    iget-object v12, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v6, v13, v11, v4}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget v4, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v12

    invoke-virtual {v6, v4, v12}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getGapForLocation(FZ)F

    move-result v4

    add-float/2addr v1, v4

    :cond_10
    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v4, :cond_11

    iget v12, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackEndHeight:F

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v12, v4

    iget v4, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    sub-float/2addr v12, v4

    cmpl-float v4, v1, v12

    if-ltz v4, :cond_11

    instance-of v4, v11, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    if-nez v4, :cond_11

    iget-object v4, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v4, :cond_11

    iput-object v11, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :cond_11
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    iget v4, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    add-float/2addr v1, v4

    add-int/2addr v10, v2

    const/4 v4, 0x0

    goto :goto_8

    :cond_12
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    if-nez v1, :cond_13

    move-object v1, v5

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    iget v1, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    iget v4, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mNotificationScrimPadding:F

    add-float/2addr v1, v4

    iput v1, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    iget v1, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    add-float/2addr v1, v4

    iput v1, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    :cond_14
    iget-object v1, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v9, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGroupExpandInterpolationY:F

    move v4, v7

    :goto_a
    const/high16 v11, 0x3f800000    # 1.0f

    if-ge v4, v1, :cond_2e

    iget-object v10, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v9, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput v7, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    instance-of v12, v10, Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v12, :cond_15

    iget v12, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    iget v7, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGroupExpandInterpolationY:F

    sub-float/2addr v12, v7

    iput v12, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    :cond_15
    if-lez v4, :cond_16

    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v12, v4, -0x1

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_b

    :cond_16
    const/4 v7, 0x0

    :goto_b
    invoke-virtual {v6, v13, v10, v7}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isNeedsToExpandLocksNoti()Z

    move-result v12

    if-eqz v12, :cond_18

    :cond_17
    if-eqz v7, :cond_18

    iget v7, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v12

    invoke-virtual {v6, v7, v12}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getGapForLocation(FZ)F

    move-result v7

    iget v12, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    mul-float v19, v11, v7

    add-float v12, v19, v12

    iput v12, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    iget v12, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    add-float/2addr v12, v7

    iput v12, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    :cond_18
    iget v7, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mMaxGroupExpandedBottomGap:F

    invoke-static {v10}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPreviousGroupExpandFraction(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F

    move-result v12

    const/4 v11, 0x0

    invoke-static {v11, v7, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v7

    iput v7, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGroupExpandInterpolationY:F

    if-lez v4, :cond_19

    iget-object v12, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget v12, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mMaxGroupExpandedBottomGap:F

    invoke-static {v11}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPreviousGroupExpandFraction(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F

    move-result v11

    const/4 v2, 0x0

    invoke-static {v2, v12, v11}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    sub-float/2addr v7, v11

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    :cond_19
    iget v2, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    add-float/2addr v2, v7

    iput v2, v14, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    iget v2, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iget v7, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v7, v7

    add-float/2addr v2, v7

    iget v7, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    add-float/2addr v2, v7

    iget-boolean v12, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v7

    iget v11, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    move/from16 v20, v1

    iget v1, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mNotificationScrimPadding:F

    cmpl-float v1, v11, v1

    if-ltz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_c

    :cond_1a
    const/4 v1, 0x0

    :goto_c
    iget v11, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    move-object v0, v10

    move-object v10, v6

    move-object/from16 v21, v3

    move/from16 v19, v11

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v11, v9

    move-object/from16 v22, v13

    move v13, v7

    move-object v7, v14

    move v14, v1

    move v1, v15

    move v15, v2

    move/from16 v16, v19

    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->maybeUpdateHeadsUpIsVisible(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;ZZZFF)V

    instance-of v2, v0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    if-eqz v2, :cond_21

    sget v2, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    iget-boolean v2, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    const/4 v10, 0x1

    xor-int/2addr v2, v10

    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v11, :cond_1b

    move v11, v10

    goto :goto_d

    :cond_1b
    const/4 v11, 0x0

    :goto_d
    if-eqz v2, :cond_1c

    iput-boolean v10, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    goto/16 :goto_18

    :cond_1c
    iget v2, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v2, v10

    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackEndHeight:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_e

    :cond_1d
    const/4 v2, 0x0

    :goto_e
    move-object v10, v9

    check-cast v10, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$FooterViewState;

    if-nez v11, :cond_20

    if-nez v2, :cond_20

    iget-boolean v2, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mClearAllInProgress:Z

    if-eqz v2, :cond_1f

    const/4 v2, 0x0

    :goto_f
    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_20

    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    instance-of v12, v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v12, :cond_1e

    check-cast v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeCleared()Z

    move-result v11

    if-nez v11, :cond_1e

    goto :goto_10

    :cond_1e
    const/4 v11, 0x1

    add-int/2addr v2, v11

    goto :goto_f

    :cond_1f
    :goto_10
    const/4 v2, 0x0

    goto :goto_11

    :cond_20
    const/4 v2, 0x1

    :goto_11
    iput-boolean v2, v10, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$FooterViewState;->hideContent:Z

    goto/16 :goto_18

    :cond_21
    instance-of v2, v0, Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v2, :cond_22

    iget v2, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMaxHeight:I

    int-to-float v2, v2

    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    sub-float/2addr v2, v10

    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget v11, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    add-float/2addr v10, v11

    sub-float/2addr v2, v10

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v2, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v2, v10

    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    goto/16 :goto_17

    :cond_22
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    if-eq v0, v2, :cond_29

    iget-boolean v2, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    if-nez v2, :cond_23

    iget-boolean v2, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    if-eqz v2, :cond_24

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isNeedsToExpandLocksNoti()Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_23
    const/4 v2, 0x0

    goto :goto_15

    :cond_24
    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v2, :cond_29

    move-object v2, v5

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v2

    if-nez v2, :cond_25

    const/4 v2, 0x1

    goto :goto_12

    :cond_25
    const/4 v2, 0x0

    :goto_12
    iget-boolean v10, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    if-eqz v10, :cond_27

    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    cmpl-float v10, v10, v3

    if-eqz v10, :cond_27

    if-eqz v2, :cond_26

    goto :goto_13

    :cond_26
    iget v2, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    goto :goto_14

    :cond_27
    :goto_13
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight$1()I

    move-result v2

    int-to-float v2, v2

    :goto_14
    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v2, v10

    iget v10, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    sub-float/2addr v2, v10

    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v0, v9, v2, v10}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateViewWithShelf(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;FF)V

    goto :goto_17

    :goto_15
    iput-boolean v2, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v2, :cond_28

    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-lt v4, v2, :cond_28

    const/4 v2, 0x1

    goto :goto_16

    :cond_28
    const/4 v2, 0x0

    :goto_16
    iput-boolean v2, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    :cond_29
    :goto_17
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v2

    iput v2, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsingRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-ne v2, v0, :cond_2a

    goto :goto_18

    :cond_2a
    iget v2, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    :cond_2b
    :goto_18
    iget v2, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    iget v10, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGroupExpandInterpolationY:F

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    add-float/2addr v11, v12

    mul-float/2addr v11, v3

    add-float/2addr v11, v10

    add-float/2addr v11, v2

    iput v11, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    iget v2, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget v10, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    add-float/2addr v3, v10

    add-float/2addr v3, v2

    iput v3, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget v2, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    if-nez v2, :cond_2c

    iget v2, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x7f070c84

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v10

    iget v10, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mOverExpansionAmount:F

    div-float/2addr v10, v3

    const/4 v3, 0x1

    add-int/lit8 v11, v4, 0x1

    mul-int/lit8 v11, v11, 0xc

    int-to-float v3, v11

    mul-float/2addr v10, v3

    add-float/2addr v10, v2

    iput v10, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    :cond_2c
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget v2, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    const/4 v10, 0x4

    iput v10, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2d

    const/4 v2, 0x2

    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    :cond_2d
    iget v0, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iget v2, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    add-float/2addr v0, v2

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    const/4 v0, 0x1

    add-int/2addr v4, v0

    move v2, v0

    move v15, v1

    move-object v14, v7

    move/from16 v1, v20

    move-object/from16 v3, v21

    move-object/from16 v13, v22

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_a

    :cond_2e
    move-object/from16 v21, v3

    move v3, v11

    move-object v7, v14

    move v1, v15

    const/4 v2, 0x2

    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v0, :cond_31

    iget-object v5, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v9, v5, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-eqz v9, :cond_2f

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    move-result v9

    if-nez v9, :cond_30

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result v5

    if-eqz v5, :cond_2f

    goto :goto_1a

    :cond_2f
    const/4 v5, 0x1

    goto :goto_1b

    :cond_30
    :goto_1a
    const/4 v5, 0x1

    goto :goto_1c

    :goto_1b
    add-int/2addr v4, v5

    goto :goto_19

    :cond_31
    const/4 v5, 0x1

    const/4 v4, -0x1

    :goto_1c
    sub-int/2addr v0, v5

    const/4 v5, 0x0

    :goto_1d
    if-ltz v0, :cond_3a

    if-ne v0, v4, :cond_32

    const/4 v9, 0x1

    goto :goto_1e

    :cond_32
    const/4 v9, 0x0

    :goto_1e
    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    const/4 v12, 0x0

    int-to-float v13, v12

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v12

    if-eqz v12, :cond_35

    iget-boolean v12, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v12, :cond_35

    instance-of v12, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v12, :cond_33

    move-object v12, v10

    check-cast v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v14, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    if-eqz v14, :cond_33

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean v14, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsing:Z

    if-eqz v14, :cond_35

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsHeadsUpEntry:Z

    if-eqz v12, :cond_35

    :cond_33
    iget v12, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iget v14, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    int-to-float v14, v14

    iget v15, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    add-float/2addr v14, v15

    cmpg-float v15, v12, v14

    if-gez v15, :cond_35

    const/4 v15, 0x0

    cmpl-float v9, v5, v15

    if-eqz v9, :cond_34

    add-float/2addr v5, v3

    goto :goto_1f

    :cond_34
    sub-float/2addr v14, v12

    iget v9, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v9, v9

    div-float/2addr v14, v9

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v9

    add-float/2addr v5, v9

    :goto_1f
    iget v9, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    add-float/2addr v9, v13

    invoke-virtual {v11, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    goto :goto_21

    :cond_35
    if-eqz v9, :cond_39

    iget-object v9, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-nez v9, :cond_36

    const/4 v9, 0x0

    goto :goto_20

    :cond_36
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    :goto_20
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight$1()I

    move-result v12

    sub-int/2addr v12, v9

    iget v14, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    add-int/2addr v12, v14

    int-to-float v12, v12

    iget v14, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    add-float/2addr v12, v14

    iget v14, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    iget v15, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    add-float/2addr v14, v15

    cmpl-float v15, v12, v14

    if-lez v15, :cond_37

    invoke-virtual {v11, v13}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    goto :goto_21

    :cond_37
    sub-float/2addr v14, v12

    int-to-float v9, v9

    div-float v9, v14, v9

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_38

    move v9, v3

    :cond_38
    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget v12, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    int-to-float v12, v12

    mul-float/2addr v9, v12

    add-float/2addr v9, v13

    invoke-virtual {v11, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    goto :goto_21

    :cond_39
    invoke-virtual {v11, v13}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    :goto_21
    iget v9, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getHeaderVisibleAmount()F

    move-result v10

    sub-float v10, v3, v10

    iget v12, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    int-to-float v12, v12

    mul-float/2addr v10, v12

    add-float/2addr v10, v9

    invoke-virtual {v11, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    const/4 v9, -0x1

    add-int/2addr v0, v9

    goto/16 :goto_1d

    :cond_3a
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v4, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    iget v5, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v5

    if-eqz v5, :cond_3b

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    if-eqz v5, :cond_3b

    iget v9, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    sub-float/2addr v9, v10

    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mAppearFraction:F

    invoke-static {v4, v9, v10}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v9

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    :cond_3b
    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_22
    if-ge v5, v0, :cond_47

    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    instance-of v11, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v11, :cond_46

    move-object v15, v10

    check-cast v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v10, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v10, :cond_3c

    iget-boolean v10, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-nez v10, :cond_3c

    goto/16 :goto_28

    :cond_3c
    iget-object v14, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    if-nez v9, :cond_3d

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result v10

    if-eqz v10, :cond_3d

    iget-boolean v10, v14, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v10, :cond_3d

    const/4 v10, 0x1

    iput v10, v14, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    move-object v9, v15

    :cond_3d
    if-ne v9, v15, :cond_3e

    const/16 v16, 0x1

    goto :goto_23

    :cond_3e
    const/16 v16, 0x0

    :goto_23
    iget v10, v14, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iget v11, v14, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v11, v11

    add-float v17, v10, v11

    iget-boolean v10, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v10, :cond_3f

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result v11

    iget-boolean v12, v14, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v13

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v18

    iget-object v10, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isStickyAndNotDemoted()Z

    move-result v19

    move-object v10, v6

    move-object v2, v14

    move/from16 v14, v18

    move-object v3, v15

    move/from16 v15, v19

    invoke-virtual/range {v10 .. v15}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->shouldHunBeVisibleWhenScrolled(ZZZZZ)Z

    goto :goto_24

    :cond_3f
    move-object v2, v14

    move-object v3, v15

    :goto_24
    iget-boolean v10, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-eqz v10, :cond_43

    iget v10, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual {v2, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v10

    iget v11, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    sget v10, Lcom/android/systemui/statusbar/notification/shared/NotificationHeadsUpCycling;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAvalancheThrottleHun()V

    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez v9, :cond_40

    const/4 v10, 0x0

    goto :goto_25

    :cond_40
    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    :goto_25
    if-eqz v10, :cond_42

    if-nez v16, :cond_42

    iget-boolean v11, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v11, :cond_41

    iget v11, v10, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iget v10, v10, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v10, v10

    add-float/2addr v11, v10

    cmpl-float v10, v17, v11

    if-lez v10, :cond_42

    :cond_41
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v10

    iput v10, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    :cond_42
    iget-boolean v10, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-nez v10, :cond_43

    if-eqz v16, :cond_43

    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    if-lez v10, :cond_43

    iget v11, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    int-to-float v10, v10

    sub-float/2addr v11, v10

    invoke-virtual {v2, v11}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    :cond_43
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-eqz v3, :cond_46

    iget-boolean v3, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-nez v3, :cond_46

    if-eqz v16, :cond_46

    sget v3, Lcom/android/systemui/statusbar/notification/shared/NotificationHeadsUpCycling;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAvalancheThrottleHun()V

    sget v3, Lcom/android/systemui/statusbar/notification/shared/NotificationsImprovedHunAnimation;->$r8$clinit:I

    iget-boolean v3, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    if-nez v3, :cond_45

    iget v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iget v10, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v10, v10

    add-float/2addr v3, v10

    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    cmpl-float v3, v3, v10

    if-ltz v3, :cond_44

    iget v3, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpAppearHeightBottom:I

    int-to-float v3, v3

    iget v10, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpAppearStartAboveScreen:F

    add-float/2addr v3, v10

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    :goto_26
    const/4 v3, 0x0

    goto :goto_27

    :cond_44
    iget v3, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v10, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpAppearStartAboveScreen:F

    sub-float/2addr v3, v10

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    goto :goto_26

    :cond_45
    iget v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    goto :goto_26

    :goto_27
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :cond_46
    :goto_28
    const/4 v2, 0x1

    add-int/2addr v5, v2

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_22

    :cond_47
    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updatePulsingStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    iget-boolean v0, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideSensitive:Z

    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v2, :cond_4a

    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget-boolean v5, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDimmed:Z

    if-eqz v5, :cond_49

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v5

    if-eqz v5, :cond_48

    iget v5, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_49

    :cond_48
    const/4 v5, 0x1

    goto :goto_2a

    :cond_49
    const/4 v5, 0x0

    :goto_2a
    iput-boolean v5, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    const/4 v4, 0x1

    add-int/2addr v3, v4

    goto :goto_29

    :cond_4a
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v0, 0x0

    goto :goto_2b

    :cond_4b
    iget v0, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    iget v2, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    :goto_2b
    iget v2, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mNotificationScrimTop:F

    iget-object v3, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    :goto_2c
    if-ge v2, v3, :cond_58

    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v12

    if-eqz v12, :cond_4c

    iget-boolean v12, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz v12, :cond_4d

    :cond_4c
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_4d
    iget v12, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iget v13, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v13, v13

    add-float/2addr v13, v12

    instance-of v14, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v14, :cond_4e

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v14

    if-eqz v14, :cond_4e

    const/4 v14, 0x1

    goto :goto_2d

    :cond_4e
    const/4 v14, 0x0

    :goto_2d
    iget-boolean v15, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    if-eqz v15, :cond_4f

    if-nez v9, :cond_4f

    if-nez v14, :cond_50

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    move-result v15

    if-eqz v15, :cond_4f

    if-nez v9, :cond_4f

    goto :goto_2e

    :cond_4f
    move/from16 v16, v0

    const/4 v0, 0x0

    goto :goto_30

    :cond_50
    :goto_2e
    cmpl-float v15, v13, v5

    if-lez v15, :cond_4f

    iget-boolean v15, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    if-nez v15, :cond_4f

    sget v15, Lcom/android/systemui/statusbar/notification/shared/NotificationHeadsUpCycling;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAvalancheThrottleHun()V

    sub-float v15, v13, v5

    move/from16 v16, v0

    iget-boolean v0, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mEnableNotificationClipping:Z

    if-eqz v0, :cond_51

    float-to-int v0, v15

    goto :goto_2f

    :cond_51
    const/4 v0, 0x0

    :goto_2f
    iput v0, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    goto :goto_31

    :goto_30
    iput v0, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    :goto_31
    iget-boolean v0, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    iget-boolean v15, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    if-nez v15, :cond_53

    cmpg-float v15, v12, v4

    if-gez v15, :cond_53

    sub-float v15, v4, v12

    float-to-int v15, v15

    iput v15, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    cmpl-float v15, v4, v13

    if-lez v15, :cond_52

    const/4 v15, 0x1

    iput-boolean v15, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    goto :goto_32

    :cond_52
    iput-boolean v0, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    goto :goto_32

    :cond_53
    const/4 v0, 0x0

    iput v0, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    :goto_32
    if-eqz v9, :cond_54

    move v5, v13

    :cond_54
    if-eqz v14, :cond_55

    const/4 v9, 0x0

    :cond_55
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isTransparent()Z

    move-result v0

    if-nez v0, :cond_57

    if-eqz v14, :cond_56

    goto :goto_33

    :cond_56
    move v12, v13

    :goto_33
    invoke-static {v4, v12}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v4, v0

    :cond_57
    const/4 v0, 0x1

    add-int/2addr v2, v0

    move/from16 v0, v16

    goto/16 :goto_2c

    :cond_58
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_34
    if-ge v2, v0, :cond_5a

    iget-object v3, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    if-lt v2, v1, :cond_59

    const/4 v4, 0x1

    goto :goto_35

    :cond_59
    const/4 v4, 0x0

    :goto_35
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_34

    :cond_5a
    iget-object v0, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-nez v0, :cond_5b

    goto :goto_36

    :cond_5b
    invoke-virtual {v0, v7, v8}, Lcom/android/systemui/statusbar/NotificationShelf;->updateState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    :goto_36
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget-boolean v4, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    if-eqz v4, :cond_5c

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v4

    if-ne v2, v4, :cond_5c

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_39

    :cond_5c
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpState()Z

    move-result v5

    if-eqz v5, :cond_5d

    iget v5, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    sub-float v11, v4, v5

    invoke-virtual {v3, v11}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_38

    :cond_5d
    iget v5, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    sub-float v11, v4, v5

    invoke-virtual {v3, v11}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    iget v5, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5e

    const/4 v1, 0x1

    :cond_5e
    :goto_38
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isNeedsToExpandLocksNoti()Z

    move-result v5

    if-eqz v5, :cond_62

    iget v5, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    invoke-static {v5}, Lcom/android/systemui/animation/ShadeInterpolation;->getNotifContentAlpha(F)F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_39

    :cond_5f
    iget-boolean v5, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    if-eqz v5, :cond_62

    iget v5, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v6

    if-nez v6, :cond_62

    iget-object v6, v7, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    iget-boolean v6, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsCollapsingHeadsup:Z

    if-eqz v6, :cond_60

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_39

    :cond_60
    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-static {v5}, Lcom/android/systemui/animation/ShadeInterpolation;->getNotifContentAlpha(F)F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto :goto_39

    :cond_61
    invoke-static {v5}, Lcom/android/systemui/animation/ShadeInterpolation;->getContentAlpha(F)F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    :cond_62
    :goto_39
    instance-of v2, v2, Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v2, :cond_63

    iget v5, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_63

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    :cond_63
    if-eqz v2, :cond_64

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_64

    iget v2, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    invoke-static {v2}, Lcom/android/systemui/animation/ShadeInterpolation;->getContentAlpha(F)F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    :cond_64
    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v2, :cond_67

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget-boolean v5, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz v5, :cond_65

    goto :goto_3b

    :cond_65
    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iget v5, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    iget-boolean v6, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    if-eqz v6, :cond_66

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v6

    if-eqz v6, :cond_66

    const/4 v6, 0x1

    goto :goto_3a

    :cond_66
    const/4 v6, 0x0

    :goto_3a
    cmpl-float v2, v5, v2

    if-gez v2, :cond_68

    if-eqz v6, :cond_67

    goto :goto_3c

    :cond_67
    :goto_3b
    const/4 v2, 0x0

    goto/16 :goto_37

    :cond_68
    :goto_3c
    if-eqz v1, :cond_69

    goto :goto_3b

    :cond_69
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    goto/16 :goto_37

    :cond_6a
    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getNotificationChildrenStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v0, :cond_6e

    move-object/from16 v1, v21

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_6c

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v4, :cond_6d

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_3e
    if-ge v5, v4, :cond_6c

    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v7

    if-eqz v7, :cond_6b

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hasGradient:Z

    if-nez v7, :cond_6b

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    iget v8, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    const/4 v9, 0x2

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v8

    iget-object v9, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->applyGradientBackground(IIZ)V

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hasGradient:Z

    goto :goto_3f

    :cond_6b
    const/4 v7, 0x1

    :goto_3f
    add-int/2addr v5, v7

    goto :goto_3e

    :cond_6c
    const/4 v4, 0x1

    const/4 v6, 0x2

    goto :goto_40

    :cond_6d
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v4

    if-eqz v4, :cond_6c

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hasGradient:Z

    if-nez v4, :cond_6c

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v5, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    const/4 v6, 0x2

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v5

    iget-object v7, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v7

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->applyGradientBackground(IIZ)V

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hasGradient:Z

    :goto_40
    add-int/2addr v2, v4

    move-object/from16 v21, v1

    goto/16 :goto_3d

    :cond_6e
    move-object/from16 v1, v21

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6f

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-nez v0, :cond_6f

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_41

    :cond_6f
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->startAnimationToState$1()V

    :goto_41
    invoke-static {}, Landroid/os/Trace;->endSection()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    :goto_42
    return v0
.end method
