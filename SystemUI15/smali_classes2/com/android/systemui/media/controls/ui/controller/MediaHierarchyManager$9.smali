.class final Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;
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
.field final synthetic $communalTransitionViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;

.field final synthetic $shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;",
            "Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;->$communalTransitionViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;->$shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;->$communalTransitionViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;->$shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;->$communalTransitionViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;

    iget-object p1, p1, Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;->isUmoOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isDreaming:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;->$shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v3, v3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v3}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9$3;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9$3;

    invoke-static {p1, v1, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9$4;

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    invoke-direct {v1, v3, v5}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9$4;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
