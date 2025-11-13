.class public final Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$2$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$2$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$2$2$1;

    iget v1, v0, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$2$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$2$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$2$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$2$2$1;-><init>(Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$2$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$2$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/util/kotlin/WithPrev;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/WithPrev;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/compose/animation/scene/ObservableTransitionState;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/WithPrev;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/compose/animation/scene/ObservableTransitionState;

    invoke-static {p1}, Lcom/android/systemui/communal/log/CommunalLoggerStartableKt;->access$isOnCommunal(Lcom/android/compose/animation/scene/ObservableTransitionState;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2}, Lcom/android/systemui/communal/log/CommunalLoggerStartableKt;->access$isSwipingToCommunal(Lcom/android/compose/animation/scene/ObservableTransitionState;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object p1, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_SWIPE_TO_ENTER_FINISH:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/android/systemui/communal/log/CommunalLoggerStartableKt;->access$isOnCommunal(Lcom/android/compose/animation/scene/ObservableTransitionState;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p2}, Lcom/android/systemui/communal/log/CommunalLoggerStartableKt;->access$isSwipingFromCommunal(Lcom/android/compose/animation/scene/ObservableTransitionState;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object p1, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_SWIPE_TO_EXIT_CANCEL:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/android/systemui/communal/log/CommunalLoggerStartableKt;->access$isNotOnCommunal(Lcom/android/compose/animation/scene/ObservableTransitionState;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p2}, Lcom/android/systemui/communal/log/CommunalLoggerStartableKt;->access$isSwipingFromCommunal(Lcom/android/compose/animation/scene/ObservableTransitionState;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object p1, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_SWIPE_TO_EXIT_FINISH:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/android/systemui/communal/log/CommunalLoggerStartableKt;->access$isNotOnCommunal(Lcom/android/compose/animation/scene/ObservableTransitionState;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p2}, Lcom/android/systemui/communal/log/CommunalLoggerStartableKt;->access$isSwipingToCommunal(Lcom/android/compose/animation/scene/ObservableTransitionState;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object p1, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_SWIPE_TO_ENTER_CANCEL:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lcom/android/systemui/communal/log/CommunalLoggerStartableKt;->access$isSwipingToCommunal(Lcom/android/compose/animation/scene/ObservableTransitionState;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p2}, Lcom/android/systemui/communal/log/CommunalLoggerStartableKt;->access$isNotOnCommunal(Lcom/android/compose/animation/scene/ObservableTransitionState;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object p1, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_SWIPE_TO_ENTER_START:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    goto :goto_1

    :cond_7
    invoke-static {p1}, Lcom/android/systemui/communal/log/CommunalLoggerStartableKt;->access$isSwipingFromCommunal(Lcom/android/compose/animation/scene/ObservableTransitionState;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {p2}, Lcom/android/systemui/communal/log/CommunalLoggerStartableKt;->access$isOnCommunal(Lcom/android/compose/animation/scene/ObservableTransitionState;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_SWIPE_TO_EXIT_START:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    iput v3, v0, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$2$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    return-object v1

    :cond_9
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
