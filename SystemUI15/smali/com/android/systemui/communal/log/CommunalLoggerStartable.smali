.class public final Lcom/android/systemui/communal/log/CommunalLoggerStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final backgroundScope:Lkotlinx/coroutines/CoroutineScope;

.field public final communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/log/CommunalLoggerStartable;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/communal/log/CommunalLoggerStartable;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iput-object p3, p0, Lcom/android/systemui/communal/log/CommunalLoggerStartable;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/communal/log/CommunalLoggerStartable;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v1, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->transitionState:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v2, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v1, v2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->drop(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$2;-><init>(Lcom/android/systemui/communal/log/CommunalLoggerStartable;Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v4, v1, v2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, p0, Lcom/android/systemui/communal/log/CommunalLoggerStartable;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v4, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    iget-object v0, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->transitionState:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwise(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$2;

    invoke-direct {v2, v0}, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v0, v2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$4;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/communal/log/CommunalLoggerStartable$start$4;-><init>(Lcom/android/systemui/communal/log/CommunalLoggerStartable;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p0, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {p0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method
