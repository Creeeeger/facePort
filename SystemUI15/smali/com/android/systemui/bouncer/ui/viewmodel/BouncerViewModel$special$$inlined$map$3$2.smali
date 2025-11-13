.class public final Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic receiver$inlined:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3$2;->receiver$inlined:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3$2$1;

    iget v1, v0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3$2$1;-><init>(Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, p1

    check-cast v11, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;

    iget-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3$2;->receiver$inlined:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;

    iget-object p2, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->authMethodViewModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bouncer/ui/viewmodel/AuthMethodBouncerViewModel;

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/systemui/bouncer/ui/viewmodel/AuthMethodBouncerViewModel;->getAuthenticationMethod()Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object p2, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->childViewModelScope:Lkotlinx/coroutines/internal/ContextScope;

    if-eqz p2, :cond_5

    invoke-static {p2, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    :cond_5
    iget-object p2, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {p2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object p2

    new-instance v4, Lkotlinx/coroutines/SupervisorJobImpl;

    invoke-direct {v4, p2}, Lkotlinx/coroutines/SupervisorJobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    iget-object p2, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v4, p2}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->childViewModelScope:Lkotlinx/coroutines/internal/ContextScope;

    instance-of p2, v11, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pin;

    iget-object v8, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->isInputEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    if-eqz p2, :cond_6

    iget-object v5, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->applicationContext:Landroid/content/Context;

    new-instance v9, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$getChildViewModel$1;

    invoke-direct {v9, p1}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$getChildViewModel$1;-><init>(Ljava/lang/Object;)V

    new-instance p2, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;

    iget-object v7, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->bouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;

    iget-object v10, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->simBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;

    move-object v4, p2

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;)V

    goto :goto_2

    :cond_6
    instance-of p2, v11, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Sim;

    if-eqz p2, :cond_7

    iget-object v5, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->applicationContext:Landroid/content/Context;

    new-instance v9, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$getChildViewModel$2;

    invoke-direct {v9, p1}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$getChildViewModel$2;-><init>(Ljava/lang/Object;)V

    new-instance p2, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;

    iget-object v7, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->bouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;

    iget-object v10, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->simBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;

    move-object v4, p2

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;)V

    goto :goto_2

    :cond_7
    instance-of p2, v11, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Password;

    if-eqz p2, :cond_9

    new-instance p2, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$getChildViewModel$3;

    invoke-direct {p2, p1}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$getChildViewModel$3;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel;

    iget-object v7, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->bouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;

    iget-object v9, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->inputMethodInteractor:Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor;

    iget-object v10, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object v4, v2

    move-object v5, v6

    move-object v6, v8

    move-object v8, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/StateFlow;Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    :cond_8
    move-object p2, v2

    goto :goto_2

    :cond_9
    instance-of p2, v11, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pattern;

    if-eqz p2, :cond_8

    new-instance p2, Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel;

    iget-object v5, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->applicationContext:Landroid/content/Context;

    new-instance v9, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$getChildViewModel$4;

    invoke-direct {v9, p1}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$getChildViewModel$4;-><init>(Ljava/lang/Object;)V

    iget-object v7, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->bouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function0;)V

    :goto_2
    iput v3, v0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    return-object v1

    :cond_a
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
