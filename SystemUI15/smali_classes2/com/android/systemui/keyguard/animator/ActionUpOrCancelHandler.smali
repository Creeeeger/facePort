.class public final Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler;
.super Lcom/android/systemui/keyguard/animator/ActionHandlerType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/ActionHandlerType;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    return-void
.end method


# virtual methods
.method public final handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/keyguard/animator/ActionHandlerType;->parent:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onTouchEvent event="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " distance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardTouchAnimator"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenViewController:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    iget-object v4, v2, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object v4

    iget-object v5, v2, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->longPressCallback:Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;

    invoke-virtual {v4, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v4, v2, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullscreenModeEnabled:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v2, v5}, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->setFullScreenMode$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Z)V

    :cond_0
    iget-object v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->editModeAnimatorController:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isLongPressed$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result v4

    const-class v14, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    const-string v15, "onNPVClicked "

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v4, "KeyguardEditModeAnimatorController"

    const-string v6, "actionUpOrCancel"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardClickController:Lcom/android/systemui/keyguard/KeyguardClickController;

    check-cast v7, Lcom/android/systemui/keyguard/KeyguardClickControllerImpl;

    iget-object v7, v7, Lcom/android/systemui/keyguard/KeyguardClickControllerImpl;->tag:Ljava/lang/String;

    invoke-static {v7, v15}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v7, v14}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-object v7, v7, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz v7, :cond_2

    invoke-interface {v7, v4, v6}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onClockClicked(II)V

    :cond_2
    iget-object v4, v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v6, v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->scaleViews:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    iget-object v12, v2, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v12, v9}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v12, v6}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x1f4

    const-wide/16 v17, 0x0

    move-object v6, v2

    move-object v7, v4

    move-object/from16 v19, v12

    move-wide/from16 v12, v17

    invoke-virtual/range {v6 .. v13}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewScaleAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    move-object/from16 v12, v19

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->cancel$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v6, 0x1

    if-gt v4, v6, :cond_7

    iput-boolean v5, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    :cond_7
    iget-object v4, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    iget-boolean v7, v4, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    if-eqz v7, :cond_8

    iget-object v7, v4, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_3
    const/4 v9, 0x3

    if-ne v0, v9, :cond_9

    iget-boolean v10, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isDraggingDownStarted:Z

    if-eqz v10, :cond_9

    const-string v0, "cancel swipe by onExpansionStarted"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    iput-boolean v5, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->hasDozeAmount:Z

    invoke-virtual {v1, v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setDraggingDownStarted(Z)V

    return v6

    :cond_9
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isAnimationRunning$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result v10

    if-nez v10, :cond_a

    iget-boolean v10, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    if-nez v10, :cond_a

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-nez v10, :cond_a

    iget-boolean v10, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    if-nez v10, :cond_b

    if-eqz v7, :cond_b

    sget-object v10, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    if-eq v7, v10, :cond_b

    sget-object v10, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->TAP:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    if-ne v7, v10, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v5, 0x0

    goto/16 :goto_b

    :cond_b
    :goto_5
    iget v10, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    iget v12, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    int-to-float v12, v12

    cmpg-float v12, v10, v12

    if-gez v12, :cond_16

    invoke-virtual {v1, v11}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->resetChildViewVI$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V

    if-ne v0, v6, :cond_c

    iget-object v9, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardClickController:Lcom/android/systemui/keyguard/KeyguardClickController;

    check-cast v9, Lcom/android/systemui/keyguard/KeyguardClickControllerImpl;

    iget-object v10, v9, Lcom/android/systemui/keyguard/KeyguardClickControllerImpl;->isClickContainerArea:Lkotlin/jvm/functions/Function2;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    iget-object v9, v9, Lcom/android/systemui/keyguard/KeyguardClickControllerImpl;->tag:Ljava/lang/String;

    invoke-static {v9, v15}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v9, v14}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-object v9, v9, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz v9, :cond_a

    invoke-interface {v9, v10, v11}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onClockClicked(II)V

    goto :goto_4

    :cond_c
    iget-object v9, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapAffordanceViewController:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v10, "showTapAffordanceAnimation"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v9, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->tapAffordanceViews:Ljava/util/List;

    check-cast v10, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    iget-object v13, v9, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    if-eqz v12, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    new-instance v10, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v11, v12}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-virtual {v13, v12}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_10
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v5

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v14, v11, 0x1

    if-ltz v11, :cond_13

    check-cast v12, Landroid/view/View;

    if-nez v11, :cond_12

    iput-boolean v6, v9, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->isTapAnimationRunning:Z

    invoke-virtual {v13}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object v11

    iget-object v15, v9, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->restoreSpringAnimRunnable:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController$restoreSpringAnimRunnable$1;

    const-wide/16 v5, 0x96

    invoke-virtual {v11, v15, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v5, v12, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/high16 v6, 0x43fa0000    # 500.0f

    const v11, 0x3f47ae14    # 0.78f

    invoke-static {v6, v11}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v15

    iput-object v15, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const v15, 0x3f8ccccd    # 1.1f

    invoke-virtual {v5, v15}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v8, v9, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->tapSpringAnimationList:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v8, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    invoke-direct {v5, v12, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-static {v6, v11}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    iput-object v6, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v5, v15}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v6, v9, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->tapSpringAnimationList:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v11, v14

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_9

    :cond_13
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v5, 0x0

    throw v5

    :cond_14
    const/4 v5, 0x0

    iget-object v6, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v8, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v8, :cond_15

    iget-object v8, v6, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v8, :cond_15

    iget-object v8, v6, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v6, v6, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager;->semShowUdfpsIcon()V

    :cond_15
    :goto_a
    const/4 v6, 0x1

    goto :goto_b

    :cond_16
    const/4 v5, 0x0

    iget v6, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    int-to-float v6, v6

    cmpg-float v6, v10, v6

    if-lez v6, :cond_17

    const/4 v6, 0x6

    if-eq v0, v6, :cond_17

    if-ne v0, v9, :cond_15

    :cond_17
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isLongPressed$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result v6

    if-eqz v6, :cond_18

    const-string/jumbo v6, "skip because of EM"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_18
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreChildViewVI$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    goto :goto_a

    :goto_b
    if-ne v0, v6, :cond_22

    iget v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    iget v6, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    iget v8, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    iget v9, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "onTouchEvent T="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", D="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", R="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", W="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", M="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->loggingInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    if-eqz v0, :cond_19

    goto :goto_c

    :cond_19
    move-object v0, v5

    :goto_c
    invoke-interface {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->callUserActivity()V

    if-eqz v7, :cond_1a

    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    if-ne v7, v0, :cond_20

    :cond_1a
    iget v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    iget v6, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_1c

    iget-object v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    if-eqz v0, :cond_1b

    move-object v8, v0

    goto :goto_d

    :cond_1b
    move-object v8, v5

    :goto_d
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_e

    :cond_1c
    iget v5, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    int-to-float v5, v5

    cmpg-float v0, v5, v0

    if-gez v0, :cond_1f

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isLongPressed$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "skip swipe because of edit mode"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_1d
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getCanBeUnlock()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SWIPE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    new-instance v0, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$handleMotionEvent$1$3;

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$handleMotionEvent$1$3;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    const-string v2, "KeyguardTouchBase"

    const-string/jumbo v3, "unlockExecute()"

    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$handleMotionEvent$1$3;->run()V

    goto :goto_e

    :cond_1e
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreChildViewVI$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    goto :goto_e

    :cond_1f
    iget-object v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->lastMovePos:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    const-string v7, "no operation: ("

    const-string v8, ","

    const-string v9, ") - ("

    invoke-static {v7, v2, v8, v0, v9}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_21

    const/4 v6, 0x1

    goto :goto_f

    :cond_21
    const/4 v6, 0x0

    :goto_f
    iput-boolean v6, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    :cond_22
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    iput-boolean v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->hasDozeAmount:Z

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setDraggingDownStarted(Z)V

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->resetDynamicLock()V

    const/4 v0, 0x1

    return v0
.end method
