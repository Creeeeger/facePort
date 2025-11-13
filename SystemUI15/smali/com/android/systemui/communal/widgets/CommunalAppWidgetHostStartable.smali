.class public final Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

.field public final bgScope:Lkotlinx/coroutines/CoroutineScope;

.field public final communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field public final communalWidgetHost:Lcom/android/systemui/communal/widgets/CommunalWidgetHost;

.field public final uiDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;Lcom/android/systemui/communal/widgets/CommunalWidgetHost;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/settings/UserTracker;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    iput-object p2, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable;->communalWidgetHost:Lcom/android/systemui/communal/widgets/CommunalWidgetHost;

    iput-object p3, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iput-object p4, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p5, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable;->bgScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable;->uiDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 5

    sget-object v0, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->INSTANCE:Lcom/android/systemui/util/kotlin/BooleanFlowOperators;

    iget-object v1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v2, v1, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalAvailable:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object v3, v1, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->editModeOpen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    filled-new-array {v2, v3}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->anyOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwise(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable$start$$inlined$filter$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable$start$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable$start$2;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable$start$2;-><init>(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable;Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v4, v2, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable$start$4;->INSTANCE:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable$start$4;

    iget-object v1, v1, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->communalWidgets:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    invoke-static {v4, v1, v0}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable$start$5;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable$start$5;-><init>(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v2, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable;->bgScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    iget-object v1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    iget-object v1, v1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->appWidgetIdToRemove:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance v2, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable$start$6;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable$start$6;-><init>(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostStartable;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p0, v1, v2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method
