.class final Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;
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
.field final synthetic $$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $show:Z

.field final synthetic $v:Landroid/view/View;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;ZLkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;",
            "Landroid/view/View;",
            "Z",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;->$v:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;->$show:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;->$v:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;->$show:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;ZLkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x1

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;->label:I

    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;->$v:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;->$show:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2$1$1;->label:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    invoke-direct {v5, p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    move v7, v6

    goto :goto_0

    :cond_2
    move v7, p0

    :goto_0
    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    if-eqz v3, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, p0

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move p0, v6

    :goto_2
    const-string v6, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v7, v8, v9

    aput p0, v8, v0

    invoke-static {v2, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz v3, :cond_5

    const-wide/16 v6, 0x1f4

    goto :goto_3

    :cond_5
    const-wide/16 v6, 0xc8

    :goto_3
    invoke-virtual {p0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateAlpha$2$alphaAnimator$1$1;

    invoke-direct {v0, v5, p1, v2, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateAlpha$2$alphaAnimator$1$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateAlpha$2$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateAlpha$2$1;-><init>(Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v5, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_4

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_4
    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
