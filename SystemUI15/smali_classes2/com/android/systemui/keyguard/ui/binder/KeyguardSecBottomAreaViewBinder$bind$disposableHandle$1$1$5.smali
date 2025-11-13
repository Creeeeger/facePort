.class final Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;
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
.field final synthetic $ambientIndicationArea:Landroid/view/View;

.field final synthetic $configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation
.end field

.field final synthetic $indicationArea:Landroid/view/View;

.field final synthetic $viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

.field label:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Landroid/view/View;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/MutableStateFlow;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;->$configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;->$indicationArea:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;->$ambientIndicationArea:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;->$configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;->$indicationArea:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;->$ambientIndicationArea:Landroid/view/View;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Landroid/view/View;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;->$configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5$invokeSuspend$$inlined$map$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5$invokeSuspend$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    new-instance v3, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5$invokeSuspend$$inlined$flatMapLatest$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5$invokeSuspend$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;)V

    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5$3;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;->$indicationArea:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;->$ambientIndicationArea:Landroid/view/View;

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5$3;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$5;->label:I

    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
