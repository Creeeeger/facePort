.class public final Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final _actionFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final enrollableStatusFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

.field public final hasScrolledToBottomFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final pageStatusFlow:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;->FINGERPRINT_ENROLLABLE_OK:Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;

    return-void
.end method

.method public constructor <init>(ILandroid/app/Application;Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;)V
    .locals 1

    invoke-direct {p0, p2}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    iput-object p3, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    iput-object p4, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    iput p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->userId:I

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x7

    invoke-static {p1, p1, p2, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->_actionFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->hasScrolledToBottomFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->getEnrollableStatus()Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->enrollableStatusFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p4, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$pageStatusFlow$1;

    const/4 v0, 0x3

    invoke-direct {p4, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->pageStatusFlow:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    return-void
.end method


# virtual methods
.method public final getEnrollableStatus()Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    iget v1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->getNumOfEnrolledFingerprintsSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    iget-boolean v3, v2, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSuw:Z

    if-eqz v3, :cond_0

    iget-boolean v2, v2, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isAfterSuwOrSuwSuggestedAction:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b00ed

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->getFirstFingerprintSensorPropertiesInternal()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-lt v1, p0, :cond_2

    sget-object p0, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;->FINGERPRINT_ENROLLABLE_ERROR_REACH_MAX:Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;->FINGERPRINT_ENROLLABLE_OK:Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;

    :goto_1
    return-object p0
.end method

.method public final onNextButtonClick(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;)V
    .locals 2

    new-instance v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$onNextButtonClick$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$onNextButtonClick$1;-><init>(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onSkipOrCancelButtonClick(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;)V
    .locals 2

    new-instance v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$onSkipOrCancelButtonClick$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$onSkipOrCancelButtonClick$1;-><init>(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final setHasScrolledToBottom(ZLandroidx/lifecycle/LifecycleCoroutineScopeImpl;)V
    .locals 2

    new-instance v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$setHasScrolledToBottom$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$setHasScrolledToBottom$1;-><init>(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p2, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final updateEnrollableStatus(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;)V
    .locals 2

    new-instance v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$updateEnrollableStatus$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel$updateEnrollableStatus$1;-><init>(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
