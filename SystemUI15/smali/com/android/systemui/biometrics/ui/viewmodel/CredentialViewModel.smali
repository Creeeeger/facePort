.class public final Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _animateContents:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _remainingAttempts:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _validatedAttestation:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final animateContents:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final applicationContext:Landroid/content/Context;

.field public final credentialInteractor:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

.field public final errorMessage:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final header:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final inputFlags:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$special$$inlined$map$1;

.field public final remainingAttempts:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final stealthMode:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$special$$inlined$map$2;

.field public final validatedAttestation:Lkotlinx/coroutines/flow/ReadonlySharedFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->credentialInteractor:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    new-instance p1, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$special$$inlined$filterIsInstance$1;

    iget-object v0, p2, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->prompt:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {p1, v0}, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$special$$inlined$filterIsInstance$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v1, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$header$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$header$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v4, p2, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->showTitleOnly:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$special$$inlined$map$1;

    invoke-direct {v3, p1, v4, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->header:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance p1, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$special$$inlined$map$1;

    invoke-direct {p1, v0}, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->inputFlags:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$special$$inlined$map$1;

    new-instance p1, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$special$$inlined$map$2;

    invoke-direct {p1, v0}, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->stealthMode:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$special$$inlined$map$2;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->_animateContents:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->animateContents:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$errorMessage$1;

    invoke-direct {p1, p0, v2}, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$errorMessage$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p2, p2, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->verificationError:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v1, p2, v0, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->errorMessage:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    const/4 p1, 0x7

    const/4 p2, 0x0

    invoke-static {p2, p2, v2, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->_validatedAttestation:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->validatedAttestation:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance p1, Lcom/android/systemui/biometrics/ui/viewmodel/RemainingAttempts;

    const/4 p2, 0x3

    invoke-direct {p1, v2, v2, p2, v2}, Lcom/android/systemui/biometrics/ui/viewmodel/RemainingAttempts;-><init>(Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->_remainingAttempts:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->remainingAttempts:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final checkCredential(Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;

    iget v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus;

    iget-object p0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    instance-of p2, p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Success$Verified;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->_validatedAttestation:Lkotlinx/coroutines/flow/SharedFlowImpl;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Success$Verified;

    iget-object p1, p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Success$Verified;->hat:[B

    iput-object p0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;->label:I

    invoke-virtual {v2, p1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->_remainingAttempts:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p1, Lcom/android/systemui/biometrics/ui/viewmodel/RemainingAttempts;

    invoke-direct {p1, v6, v6, v5, v6}, Lcom/android/systemui/biometrics/ui/viewmodel/RemainingAttempts;-><init>(Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v6, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    instance-of p2, p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;

    if-eqz p2, :cond_9

    iput-object p0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;->label:I

    invoke-virtual {v2, v6, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->_remainingAttempts:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p2, Lcom/android/systemui/biometrics/ui/viewmodel/RemainingAttempts;

    check-cast p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;

    iget-object v0, p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;->remainingAttempts:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;->urgentMessage:Ljava/lang/String;

    if-nez p1, :cond_8

    const-string p1, ""

    :cond_8
    invoke-direct {p2, v0, p1}, Lcom/android/systemui/biometrics/ui/viewmodel/RemainingAttempts;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {p0, v6, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    instance-of p1, p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Throttled;

    if-eqz p1, :cond_b

    iput-object p0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$3;->label:I

    invoke-virtual {v2, v6, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->_remainingAttempts:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p1, Lcom/android/systemui/biometrics/ui/viewmodel/RemainingAttempts;

    invoke-direct {p1, v6, v6, v5, v6}, Lcom/android/systemui/biometrics/ui/viewmodel/RemainingAttempts;-><init>(Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v6, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_b
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final checkCredential(Ljava/lang/CharSequence;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialHeaderViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p3, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$1;

    iget v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$1;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$1;->result:Ljava/lang/Object;

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$1;->label:I

    const/4 v8, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v8, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;

    iget-object p2, p2, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    iput-object p0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$1;->label:I

    const/4 v4, 0x0

    const/4 v6, 0x4

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->credentialInteractor:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    move-object v2, p2

    move-object v3, p1

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->checkCredential$default(Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;Ljava/lang/CharSequence;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v7, :cond_4

    return-object v7

    :cond_4
    :goto_1
    check-cast p3, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$1;->L$0:Ljava/lang/Object;

    iput v8, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$1;->label:I

    invoke-virtual {p0, p3, v0}, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->checkCredential(Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v7, :cond_5

    return-object v7

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final checkCredential(Ljava/util/List;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialHeaderViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p3, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$2;

    iget v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$2;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$2;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$2;->result:Ljava/lang/Object;

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$2;->label:I

    const/4 v8, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v8, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;

    iget-object p2, p2, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    iput-object p0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$2;->L$0:Ljava/lang/Object;

    iput v2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$2;->label:I

    const/4 v3, 0x0

    const/4 v6, 0x2

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->credentialInteractor:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    move-object v2, p2

    move-object v4, p1

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->checkCredential$default(Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;Ljava/lang/CharSequence;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v7, :cond_4

    return-object v7

    :cond_4
    :goto_1
    check-cast p3, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$2;->L$0:Ljava/lang/Object;

    iput v8, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$checkCredential$2;->label:I

    invoke-virtual {p0, p3, v0}, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->checkCredential(Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v7, :cond_5

    return-object v7

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
