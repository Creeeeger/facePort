.class final Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    sget v4, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->$r8$clinit:I

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isNotSupportedAnimation()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    iget-object v1, v1, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_edit_mode_long_press_time"

    const/16 v4, 0x320

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->label:I

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    :goto_0
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    iget-object p1, p1, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {p1, p0, v3}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->startEditActivity(Landroid/content/Context;Z)Z

    goto/16 :goto_4

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    iget-object v1, v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->label:I

    const-wide/16 v1, 0xc8

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p1

    :goto_1
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    sget v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyguardEditModeAnimatorController"

    const-string v1, "animateTouchDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_6
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$animateTouchDown$1$1;

    invoke-direct {v2, v0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$animateTouchDown$1$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$touchDownAnimatorListener$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$touchDownAnimatorListener$1;-><init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->scaleViews:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v12, p1, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v12, v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x3f79999a    # 0.975f

    const-wide/16 v8, 0x258

    const-wide/16 v10, 0x0

    move-object v4, p1

    move-object v5, v1

    invoke-virtual/range {v4 .. v11}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewScaleAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-object v1, p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    const-string p1, "KeyguardTouchAnimator"

    const-string v0, "LOCKUI_EDIT_MODE is started"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$actionDown$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isKeyguardAnimatorStarted:Z

    :cond_a
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
