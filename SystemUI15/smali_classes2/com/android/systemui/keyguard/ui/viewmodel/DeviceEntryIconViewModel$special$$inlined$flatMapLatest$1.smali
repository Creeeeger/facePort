.class public final Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $shadeInteractor$inlined:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field final synthetic $transitionInteractor$inlined:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;->$transitionInteractor$inlined:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;->$shadeInteractor$inlined:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;->$transitionInteractor$inlined:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;->$shadeInteractor$inlined:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    invoke-direct {v0, p3, v1, v2, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;->$transitionInteractor$inlined:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$2;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;->$shadeInteractor$inlined:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v3, v3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isAnyFullyExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v4, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$2;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$2;

    invoke-static {v1, v3, v4}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    iget-object v4, v3, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->animatedBurnInOffsets:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance v5, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$burnInOffsets$1$3;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v3, v3, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->nonAnimatedBurnInOffsets:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    invoke-static {v1, v4, v3, v5}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v3}, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInOffsets;-><init>(IIF)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    move-object v1, v3

    :goto_0
    iput v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;->label:I

    invoke-static {p0, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
