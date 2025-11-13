.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda13;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda13;->f$1:F

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandLatencyTracking:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    cmpl-float v1, p0, v3

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    const/16 v4, 0x8

    invoke-direct {v1, v0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandLatencyTracking:Z

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelTransitionDistance()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x1

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_1

    sub-float v4, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->setOverExpansionInternal(FZ)V

    :cond_1
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v6

    if-gez v7, :cond_2

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isClosing()Z

    move-result v4

    if-eqz v4, :cond_2

    iput v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    iget v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    iget v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    cmpl-float v9, v1, v3

    if-nez v9, :cond_4

    move v10, v3

    goto :goto_1

    :cond_4
    div-float v10, v7, v1

    :goto_1
    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget-object v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v11, :cond_8

    iget-object v12, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-nez v12, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v8, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-nez v13, :cond_6

    iget v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    invoke-static {v13, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-gtz v13, :cond_7

    :cond_6
    invoke-static {v8, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-lez v13, :cond_8

    iget v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    invoke-static {v13, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v13, "setExpandedHeightInternal: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "h: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", heightAnimatorIsNull: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isTracking(): "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", expandedHeight: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", maxPanelHeight: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", isClosing(): "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isClosing()Z

    move-result v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", expandedFraction: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_8
    :goto_2
    if-nez v9, :cond_9

    move v4, v3

    goto :goto_3

    :cond_9
    iget v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    div-float/2addr v4, v1

    :goto_3
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v4, v4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyShadeExpansion:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    iget v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iput v1, v7, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeExpandedHeight:F

    iput v4, v7, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeExpandedFraction:F

    iput p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpansionDragDownAmountPx:F

    sget p0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    iget-object p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput v10, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    iget p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    cmpg-float v1, p0, v3

    if-gtz v1, :cond_a

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpanded()Z

    move-result v11

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v12

    iget v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpansionDragDownAmountPx:F

    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v9, "onHeightUpdated: fully collapsed."

    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/shade/ShadeLogger;->logExpansionChanged(Ljava/lang/String;FZZF)V

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v10, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpanded()Z

    move-result v11

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v12

    iget v13, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpansionDragDownAmountPx:F

    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v9, "onHeightUpdated: fully expanded."

    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/shade/ShadeLogger;->logExpansionChanged(Ljava/lang/String;FZZF)V

    :cond_b
    :goto_4
    invoke-virtual {v7}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v7}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpandImmediate()Z

    move-result v1

    if-nez v1, :cond_c

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    if-eqz v1, :cond_e

    iget-boolean v1, v7, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpandedWhenExpandingStarted:Z

    if-eqz v1, :cond_e

    :cond_c
    iget v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    const/4 v4, 0x2

    if-le v1, v4, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    :cond_e
    :goto_5
    invoke-virtual {v7}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpandImmediate()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v7}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v7}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isTracking()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v7, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_f
    iget-boolean v1, v7, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionFromOverscroll:Z

    if-nez v1, :cond_12

    :cond_10
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing$2()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p0, v1

    goto :goto_6

    :cond_11
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v4, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    invoke-virtual {v7, v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->calculatePanelHeightExpanded(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v8, p0, v1

    sub-float/2addr v4, v1

    div-float v1, v8, v4

    :goto_6
    iget v4, v7, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    int-to-float v8, v4

    iget v9, v7, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    sub-int/2addr v9, v4

    int-to-float v4, v9

    mul-float/2addr v1, v4

    add-float/2addr v1, v8

    invoke-virtual {v7, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpansionHeight(F)V

    :cond_12
    :goto_7
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    iget-object v8, v4, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mMaxPanelHeightSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v8}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v8

    int-to-float v8, v8

    div-float v8, p0, v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {v8, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_13

    iget-boolean v9, v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelAlphaAnimStarted:Z

    if-nez v9, :cond_13

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelAlphaAnimStarted:Z

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->animateLabelAlpha(Landroid/view/View;Z)V

    goto :goto_8

    :cond_13
    cmpg-float v6, v8, v6

    if-gez v6, :cond_14

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelAlphaAnimStarted:Z

    if-eqz v6, :cond_14

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelAlphaAnimStarted:Z

    invoke-virtual {v1, v4, v2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->animateLabelAlpha(Landroid/view/View;Z)V

    goto :goto_8

    :cond_14
    cmpl-float v3, v8, v3

    if-nez v3, :cond_15

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelAlphaAnimStarted:Z

    :cond_15
    :goto_8
    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeight(F)V

    iget p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-ne p0, v5, :cond_16

    iget-object p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState()V

    :cond_16
    invoke-virtual {v7}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateExpansion()V

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateNotificationTranslucency()V

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updatePanelExpanded()V

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateGestureExclusionRect()V

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpansionAndVisibility()V

    return-void
.end method
