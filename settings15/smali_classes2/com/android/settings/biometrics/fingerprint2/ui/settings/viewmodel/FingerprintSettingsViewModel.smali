.class public final Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final _attemptsSoFar:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _authSucceeded:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final _consumerShouldAuthenticate:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _enrolledFingerprints:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _fingerprintSensorType:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$special$$inlined$map$1;

.field public final _isLockedOut:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _isShowingDialog:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _sensorNullOrEmpty:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$special$$inlined$map$1;

.field public final addFingerprintPrefInfo:Lkotlinx/coroutines/flow/SafeFlow;

.field public final authFlow:Lkotlinx/coroutines/flow/Flow;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final enrolledFingerprints:Lkotlinx/coroutines/flow/SafeFlow;

.field public final fingerprintManagerInteractor:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;

.field public final isSfpsPrefVisible:Lkotlinx/coroutines/flow/SafeFlow;

.field public final isShowingDialog:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final navigationViewModel:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;

.field public final userId:I


# direct methods
.method public constructor <init>(ILcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;)V
    .locals 9

    const-string v0, "fingerprintManagerInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundDispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigationViewModel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->userId:I

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->fingerprintManagerInteractor:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p4, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->navigationViewModel:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_enrolledFingerprints:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->filterNotNull(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$filterOnlyWhenSettingsIsShown$1;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iget-object p4, p4, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->nextStep:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string v4, "flow"

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v0, p4}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$1;

    invoke-direct {v5, v0, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function4;)V

    new-instance v0, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v0, v5}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->enrolledFingerprints:Lkotlinx/coroutines/flow/SafeFlow;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$filterOnlyWhenSettingsIsShown$1;

    invoke-direct {v0, v2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v3, p4}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$1;

    invoke-direct {v5, v1, p1, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function4;)V

    new-instance v0, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v0, v5}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$special$$inlined$transform$1;

    invoke-direct {v1, v0, p1, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$special$$inlined$transform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;)V

    new-instance v0, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->addFingerprintPrefInfo:Lkotlinx/coroutines/flow/SafeFlow;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$filterOnlyWhenSettingsIsShown$1;

    invoke-direct {v0, v2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v3, p4}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$1;

    invoke-direct {v2, v1, p1, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function4;)V

    new-instance v0, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v0, v2}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$special$$inlined$transform$2;

    invoke-direct {v1, v0, p1, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$special$$inlined$transform$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;)V

    new-instance v0, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->isSfpsPrefVisible:Lkotlinx/coroutines/flow/SafeFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_isShowingDialog:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$isShowingDialog$1;

    const/4 v8, 0x3

    invoke-direct {v1, v8, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, p4, v1}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->isShowingDialog:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_consumerShouldAuthenticate:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object p2, p2, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->sensorPropertiesInternal:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->filterNotNull(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    move-result-object v1

    new-instance v6, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$special$$inlined$map$1;

    const/4 v4, 0x0

    invoke-direct {v6, v4, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$special$$inlined$map$1;-><init>(ILjava/lang/Object;)V

    new-instance v7, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$special$$inlined$map$1;

    const/4 v1, 0x1

    invoke-direct {v7, v1, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$special$$inlined$map$1;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_isLockedOut:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p2, 0x0

    const/4 v1, 0x7

    invoke-static {p2, p2, p1, v1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_authSucceeded:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_attemptsSoFar:Lkotlinx/coroutines/flow/StateFlowImpl;

    move-object v1, p4

    filled-new-array/range {v0 .. v7}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p4, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$special$$inlined$map$1;

    const/4 v0, 0x2

    invoke-direct {p4, v0, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$special$$inlined$map$1;-><init>(ILjava/lang/Object;)V

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->sample(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$special$$inlined$map$1;)Lkotlinx/coroutines/flow/internal/FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p4, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;

    invoke-direct {p4, p0, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$authFlow$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->authFlow:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p2

    new-instance p3, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$1;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p1, p1, p3, v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public static final access$onAuthSuccess(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintAuthAttemptModel$Success;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onAuthSuccess$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onAuthSuccess$1;

    iget v1, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onAuthSuccess$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onAuthSuccess$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onAuthSuccess$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onAuthSuccess$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onAuthSuccess$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onAuthSuccess$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onAuthSuccess$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_authSucceeded:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-object p0, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onAuthSuccess$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onAuthSuccess$1;->label:I

    invoke-virtual {p2, p1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_attemptsSoFar:Lkotlinx/coroutines/flow/StateFlowImpl;

    :cond_4
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    new-instance p2, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    return-object v1
.end method

.method public static final access$updateEnrolledFingerprints(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$updateEnrolledFingerprints$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$updateEnrolledFingerprints$1;

    iget v1, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$updateEnrolledFingerprints$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$updateEnrolledFingerprints$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$updateEnrolledFingerprints$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$updateEnrolledFingerprints$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$updateEnrolledFingerprints$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$updateEnrolledFingerprints$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$updateEnrolledFingerprints$1;->L$2:Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$updateEnrolledFingerprints$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$updateEnrolledFingerprints$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_enrolledFingerprints:Lkotlinx/coroutines/flow/StateFlowImpl;

    move-object v2, p1

    :goto_1
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->fingerprintManagerInteractor:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;

    iget-object v4, v4, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->enrolledFingerprints:Lkotlinx/coroutines/flow/SafeFlow;

    iput-object p0, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$updateEnrolledFingerprints$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$updateEnrolledFingerprints$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$updateEnrolledFingerprints$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$updateEnrolledFingerprints$1;->label:I

    invoke-static {v4, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v5, v4

    move-object v4, p0

    move-object p0, p1

    move-object p1, v5

    :goto_2
    check-cast p1, Ljava/util/List;

    check-cast v2, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2, p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    return-object v1

    :cond_4
    move-object p0, v4

    goto :goto_1
.end method


# virtual methods
.method public final deleteFingerprint(Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;)V
    .locals 3

    const-string v0, "fp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$deleteFingerprint$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$deleteFingerprint$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x2

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v0, p0, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onDeleteClicked(Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;)V
    .locals 3

    const-string v0, "fingerprintViewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onDeleteClicked$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onDeleteClicked$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onPrefClicked(Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;)V
    .locals 3

    const-string v0, "fingerprintViewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final renameFingerprint(Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Ljava/lang/String;)V
    .locals 3

    const-string v0, "fp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$renameFingerprint$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$renameFingerprint$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_enrolledFingerprints:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "userId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->userId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\nenrolledFingerprints: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
