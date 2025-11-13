.class public final Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;
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
.field final synthetic $promptSelectorInteractor$inlined:Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;

.field final synthetic $promptViewModel$inlined:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->$promptSelectorInteractor$inlined:Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->$promptViewModel$inlined:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->$promptSelectorInteractor$inlined:Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->$promptViewModel$inlined:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    invoke-direct {v0, p3, v1, v2, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;

    sget-object v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-object v3, v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->displayStateInteractor:Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;

    check-cast v3, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;

    iget-object v4, v3, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->currentRotation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v5, v3, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->isFolded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v3, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->isInRearDisplayMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->$promptSelectorInteractor$inlined:Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;

    check-cast v3, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;

    iget-object v7, v3, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->sensorType:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->$promptViewModel$inlined:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v8, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isAuthenticated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v9, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isAuthenticating:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v10, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isPendingConfirmation:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$2;

    iget-object v11, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->showingError:Lkotlinx/coroutines/flow/Flow;

    filled-new-array/range {v4 .. v11}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$2;

    invoke-direct {v4, v3, v1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$2;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->$promptViewModel$inlined:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v1, v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isAuthenticated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->$promptViewModel$inlined:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v3, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isAuthenticating:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->$promptViewModel$inlined:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v4, v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isPendingConfirmation:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$special$$inlined$map$2;

    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->$promptViewModel$inlined:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v5, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->showingError:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$1$2;

    iget-object v7, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$1$2;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v4, v5, v6}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-object v3, v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->displayStateInteractor:Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;

    check-cast v3, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;

    iget-object v4, v3, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->currentRotation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v5, v3, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->isFolded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v3, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->isInRearDisplayMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->$promptSelectorInteractor$inlined:Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;

    check-cast v3, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;

    iget-object v7, v3, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->sensorType:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->$promptViewModel$inlined:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v8, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isAuthenticated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v9, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isAuthenticating:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v10, v3, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->showingError:Lkotlinx/coroutines/flow/Flow;

    filled-new-array/range {v4 .. v10}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$1;

    invoke-direct {v4, v3, v1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$iconAsset$lambda$2$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;)V

    :goto_0
    iput v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$special$$inlined$flatMapLatest$1;->label:I

    invoke-static {p0, v4, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
