.class public final Lcom/android/systemui/keyguard/animator/ActionMoveHandler;
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
    .locals 14

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ActionHandlerType;->parent:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isTouching:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->hasDozeAmount:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    new-instance v0, Lcom/android/systemui/keyguard/animator/ActionMoveHandler$handleMotionEvent$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/ActionMoveHandler$handleMotionEvent$1$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->userActivityForMove(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenViewController:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    iget-boolean v3, v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullscreenModeEnabled:Z

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistance(Landroid/view/MotionEvent;Z)V

    iget-boolean v3, v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullScreenModeShown:Z

    const-string v4, "KeyguardTouchAnimator"

    if-eqz v3, :cond_2

    const-string p1, "FullScreenView is started"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isKeyguardAnimatorStarted:Z

    return v2

    :cond_2
    iget v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    iget-object v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->editModeAnimatorController:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "actionMove "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KeyguardEditModeAnimatorController"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_e

    :cond_3
    invoke-virtual {v5}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isNotSupportedAnimation()Z

    move-result v6

    const/4 v8, 0x0

    const-string v9, ", distance="

    const-string v10, "cancel edit mode touchSlop="

    iget-object v11, v5, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    if-eqz v6, :cond_4

    iget v6, v11, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->lockEditorTouchSlop:I

    int-to-float v11, v6

    cmpg-float v11, v11, v3

    if-gez v11, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v5, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/Job;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v3

    if-ne v3, v2, :cond_5

    const-string v3, "longPressJob?.cancel"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v5, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/Job;

    if-eqz v3, :cond_5

    invoke-interface {v3, v8}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_4
    iget v6, v11, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->lockEditorTouchSlop:I

    int-to-float v6, v6

    cmpg-float v6, v6, v3

    if-gez v6, :cond_20

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isLongPressed$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result v6

    if-nez v6, :cond_20

    iget v6, v11, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->lockEditorTouchSlop:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->cancel$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    :cond_5
    :goto_0
    iget v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    int-to-float v3, v3

    iget v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_7

    sget-object v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->Companion:Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->DEBUG:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    iget v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "removeCallback touchSlop="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " distance="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v3, v0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object v3

    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->longPressCallback:Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;

    invoke-virtual {v3, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    iget-boolean v3, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    iget-object v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v6, v5, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->updateDirection(IFFLandroid/view/MotionEvent;)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isAnimationRunning$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result p1

    if-nez p1, :cond_20

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    if-nez p1, :cond_20

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_20

    iget p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    iget v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_9

    goto/16 :goto_e

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getVIRunning()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string/jumbo p0, "updateChildViewVI skip : edit vi running"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_a
    iget p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    int-to-float p1, p1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, v3

    mul-float/2addr p1, v3

    iget v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    sub-float v5, p1, v5

    div-float/2addr v5, p1

    mul-float/2addr v5, v0

    const/4 p1, 0x0

    add-float/2addr v5, p1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dragViewController:Lcom/android/systemui/keyguard/animator/DragViewController;

    iget-object v7, v6, Lcom/android/systemui/keyguard/animator/DragViewController;->dragViews:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    iget-object v11, v6, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    if-eqz v10, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_c
    new-instance v7, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_e

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_f
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    :cond_10
    iget-object v7, v6, Lcom/android/systemui/keyguard/animator/DragViewController;->keyguardStatusViewAlphaChangeControllerWrapper:Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;

    invoke-virtual {v7, v5}, Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;->updateAlpha(F)V

    iget v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    int-to-float v5, v5

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v7

    iget v7, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    sub-float v7, v5, v7

    div-float/2addr v7, v5

    mul-float/2addr v7, v0

    add-float/2addr v7, p1

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v7, v6, Lcom/android/systemui/keyguard/animator/DragViewController;->onlyAlphaDragViews:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_12
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_13
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_14
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_14

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_8

    :cond_16
    invoke-virtual {v11, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v11, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v8

    :cond_17
    iget-object v5, v6, Lcom/android/systemui/keyguard/animator/DragViewController;->unlockViewHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_19

    if-eqz v8, :cond_19

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpg-float v5, v5, p1

    if-nez v5, :cond_18

    goto :goto_9

    :cond_18
    invoke-static {v6, v1}, Lcom/android/systemui/keyguard/animator/DragViewController;->createAnimatorSet$default(Lcom/android/systemui/keyguard/animator/DragViewController;I)Landroid/animation/AnimatorSet;

    move-result-object v1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v6, v1, v8, v5, p1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_19
    :goto_9
    iget p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    int-to-float p1, p1

    mul-float/2addr p1, v3

    iget v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    div-float/2addr v1, p1

    const p1, 0x3d8f5c30    # 0.07000005f

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    const p1, 0x3f88f5c3    # 1.07f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scale is NaN, distance = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", swipeUnlockRadius "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_1a
    iput p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->notiScale:F

    iget-object p0, v6, Lcom/android/systemui/keyguard/animator/DragViewController;->dragViews:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1c
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v0, v10}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1e
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1f
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_d

    :cond_20
    :goto_e
    return v2
.end method
