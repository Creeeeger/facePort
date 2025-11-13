.class final Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;
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
.field final synthetic $event:Lcom/android/systemui/statusbar/events/StatusEvent;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;Lcom/android/systemui/statusbar/events/StatusEvent;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;",
            "Lcom/android/systemui/statusbar/events/StatusEvent;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;->$event:Lcom/android/systemui/statusbar/events/StatusEvent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;->$event:Lcom/android/systemui/statusbar/events/StatusEvent;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;Lcom/android/systemui/statusbar/events/StatusEvent;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x2

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    sget v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v2, p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->statusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    check-cast v2, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;->defaultDisplay:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->isInFullscreenMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-wide/16 v4, 0x1f4

    iget-object v6, p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    if-eqz v2, :cond_6

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->statusBarHidden:Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->listeners:Ljava/util/Set;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    invoke-interface {v9, v2}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onPrepareSystemEventAnimation(Z)Landroidx/core/animation/Animator;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v0

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->hasPersistentDot:Z

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyDisplayedEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    instance-of v2, v2, Lcom/android/systemui/statusbar/events/BatteryEvent;

    if-eqz v2, :cond_5

    :cond_4
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    :cond_5
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/core/animation/AnimatorSet;

    invoke-direct {v0}, Landroidx/core/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v7}, Landroidx/core/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$runChipAppearAnimationUsingAnimator$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$runChipAppearAnimationUsingAnimator$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;)V

    invoke-virtual {v0, v2}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroidx/core/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_6
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->hasPersistentDot:Z

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyDisplayedEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    instance-of v2, v2, Lcom/android/systemui/statusbar/events/BatteryEvent;

    if-eqz v2, :cond_8

    :cond_7
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    :cond_8
    iget-object v2, p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->animationState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->statusBarHidden:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->collectStartAnimations(Z)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->getTotalDuration()J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-gtz v2, :cond_b

    new-instance v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$runChipAppearAnimation$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$runChipAppearAnimation$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->addListener(Landroidx/core/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->start()V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;->$event:Lcom/android/systemui/statusbar/events/StatusEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/events/StatusEvent;->getContentDescription()Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyDisplayedEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    instance-of p1, p1, Lcom/android/systemui/statusbar/events/BatteryEvent;

    if-eqz p1, :cond_9

    const-wide/16 v6, 0xbb8

    goto :goto_2

    :cond_9
    const-wide/16 v6, 0x5dc

    :goto_2
    add-long/2addr v6, v4

    iput v3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;->label:I

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->access$runChipDisappearAnimation(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-string p1, "System animation total length exceeds budget. Expected: 500, actual: "

    invoke-static {p1, v0, v1}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
