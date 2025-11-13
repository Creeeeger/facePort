.class public final Lcom/android/systemui/keyguard/animator/ActionDownHandler;
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
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ActionHandlerType;->parent:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isKeyguardAnimatorStarted:Z

    const-string v3, "ActionDownHandler isKeyguardAnimatorStarted = "

    const-string v4, "KeyguardTouchAnimator"

    invoke-static {v3, v4, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isKeyguardAnimatorStarted:Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setDraggingDownStarted(Z)V

    iget v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dozeAmount:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    xor-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->hasDozeAmount:Z

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenViewController:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    iput-boolean v2, v1, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullScreenModeShown:Z

    iput v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    iput v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapAffordanceViewController:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;

    iget-object v2, v2, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->restoreSpringAnimationList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->pivotViewController:Lcom/android/systemui/keyguard/animator/PivotViewController;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/PivotViewController;->setChildViewPivot$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->hasDozeAmount:Z

    if-eqz v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {v3, v2}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->canBeEditMode(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->editModeAnimatorController:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->canLongPressArea(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v3, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "actionDown editMode("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardEditModeAnimatorController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, v3, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/Job;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p0

    if-ne p0, v0, :cond_2

    iget-object p0, v3, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;

    invoke-direct {v1, v3, p1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {p0, p1, p1, v1, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    iput-object p0, v3, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/Job;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->canLongPressArea(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-boolean p0, v1, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullscreenModeEnabled:Z

    if-nez p0, :cond_4

    iget-object p0, v1, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isLongPressed$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, v1, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object p0

    iget-object p1, v1, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->longPressCallback:Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return v0
.end method
