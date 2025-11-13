.class public Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.super Lcom/android/systemui/statusbar/notification/stack/ViewState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public belowSpeedBump:Z

.field public clipBottomAmount:I

.field public clipTopAmount:I

.field public dimmed:Z

.field public hasGradient:Z

.field public headsUpIsVisible:Z

.field public height:I

.field public hideSensitive:Z

.field public inShelf:Z

.field public location:I

.field public notGoneIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-super/range {p0 .. p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    instance-of v3, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v4

    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    iget v6, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    const v7, 0x7f0a04eb

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v5, v6, :cond_7

    const v5, 0x7f0a04ea

    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const v10, 0x7f0a04e9

    invoke-virtual {v3, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    iget v12, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v12, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/animation/ValueAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    if-nez v14, :cond_3

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v11, v12, v11

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v11

    aget-object v7, v7, v9

    filled-new-array {v6, v12}, [I

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v10, v5}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v5

    invoke-virtual {v13, v5, v6}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v12, v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    goto :goto_0

    :cond_3
    iget v6, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    filled-new-array {v6, v12}, [I

    move-result-object v6

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$1;

    invoke-direct {v11, v0, v3}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v6, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v11, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v14, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v14, v15, v13}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-wide v14, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-lez v11, :cond_5

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v11

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-nez v11, :cond_5

    :cond_4
    iget-wide v13, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v6, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_5
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v6, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    new-instance v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;

    invoke-direct {v13, v0, v3}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v6, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v6, v11}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v3, v7, v6}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    iget v6, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v10, v5}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeightAnimating(Z)V

    goto :goto_0

    :cond_7
    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    :goto_0
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    iget v6, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    if-eq v5, v6, :cond_8

    invoke-virtual {v0, v3, v2, v8}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->startClipAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    goto :goto_1

    :cond_8
    const v5, 0x7f0a0d60

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    :goto_1
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    iget v6, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    if-eq v5, v6, :cond_9

    invoke-virtual {v0, v3, v2, v9}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->startClipAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    goto :goto_2

    :cond_9
    const v5, 0x7f0a01aa

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    :goto_2
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setDimmed(Z)V

    sget v5, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBelowSpeedBump(Z)V

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHideSensitive(ZZ)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez v1, :cond_a

    iget-wide v4, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    iget-wide v1, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->performAddAnimation(JJ)V

    :cond_a
    iget-boolean v1, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    if-nez v1, :cond_b

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    if-eqz v1, :cond_b

    iput-boolean v8, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransformingInShelf:Z

    :cond_b
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    iput-boolean v1, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz v0, :cond_c

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHeadsUpIsVisible()V

    :cond_c
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setDimmed(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHideSensitive(ZZ)V

    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBelowSpeedBump(Z)V

    iget v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    int-to-float v3, v1

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipTopAmount(I)V

    :cond_1
    iget v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    int-to-float v3, v1

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    :cond_2
    iput-boolean v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransformingInShelf:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHeadsUpIsVisible()V

    :cond_3
    return-void
.end method

.method public final cancelAnimations(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    const p0, 0x7f0a04eb

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const p0, 0x7f0a0d60

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hasGradient:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hasGradient:Z

    :cond_0
    return-void
.end method

.method public final startClipAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    if-eqz v3, :cond_0

    const v6, 0x7f0a0d5f

    goto :goto_0

    :cond_0
    const v6, 0x7f0a01a9

    :goto_0
    invoke-virtual {v1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const v7, 0x7f0a01a8

    const v8, 0x7f0a0d5e

    if-eqz v3, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    invoke-virtual {v1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    const v10, 0x7f0a04a9

    invoke-virtual {v1, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    iget v11, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    goto :goto_2

    :cond_2
    iget v11, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    :goto_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v11, :cond_3

    return-void

    :cond_3
    const v12, 0x7f0a01aa

    const v13, 0x7f0a0d60

    if-eqz v3, :cond_4

    move v14, v13

    goto :goto_3

    :cond_4
    move v14, v12

    :goto_3
    invoke-virtual {v1, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/animation/ValueAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v15

    if-eqz v3, :cond_5

    iget-boolean v15, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    if-eqz v15, :cond_6

    :cond_5
    if-nez v3, :cond_b

    :cond_6
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, v11, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v2

    const/4 v2, 0x0

    aget-object v0, v0, v2

    filled-new-array {v6, v11}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    if-eqz v3, :cond_7

    const v4, 0x7f0a0d5f

    goto :goto_4

    :cond_7
    const v4, 0x7f0a01a9

    :goto_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    if-eqz v3, :cond_8

    move v7, v8

    :cond_8
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipTopAmount(I)V

    goto :goto_5

    :cond_a
    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    :goto_5
    return-void

    :cond_b
    if-eqz v3, :cond_c

    iget v6, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    goto :goto_6

    :cond_c
    iget v6, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    :goto_6
    filled-new-array {v6, v11}, [I

    move-result-object v6

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v9, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v4, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v4, v5, v14}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    :cond_d
    invoke-virtual {v6, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-wide v4, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v4, v4, v16

    if-lez v4, :cond_f

    if-eqz v14, :cond_e

    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_f

    :cond_e
    iget-wide v4, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v6, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_f
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_10
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$3;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$3;-><init>(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    invoke-virtual {v6, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v6, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    if-eqz v3, :cond_11

    move v12, v13

    :cond_11
    invoke-virtual {v1, v12, v6}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    if-eqz v3, :cond_12

    const v4, 0x7f0a0d5f

    goto :goto_7

    :cond_12
    const v4, 0x7f0a01a9

    :goto_7
    if-eqz v3, :cond_13

    iget v0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    goto :goto_8

    :cond_13
    iget v0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    if-eqz v3, :cond_14

    move v7, v8

    :cond_14
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    return-void
.end method
