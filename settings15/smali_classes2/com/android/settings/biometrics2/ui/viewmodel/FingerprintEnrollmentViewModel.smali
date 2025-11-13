.class public final Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final _setResultFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

.field public isNewFingerprintAdded:Z

.field public final isWaitingActivityResult:Lkotlinx/atomicfu/AtomicBoolean;

.field public final request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    iput-object p2, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    iput-object p3, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    new-instance p1, Lkotlinx/atomicfu/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lkotlinx/atomicfu/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->isWaitingActivityResult:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 p1, 0x0

    const/4 p3, 0x7

    invoke-static {p2, p2, p1, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->_setResultFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-void
.end method


# virtual methods
.method public final checkFinishActivityDuringOnPause(ZZLandroidx/lifecycle/LifecycleCoroutineScopeImpl;)V
    .locals 0

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    iget-boolean p1, p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSuw:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->isWaitingActivityResult:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel$checkFinishActivityDuringOnPause$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel$checkFinishActivityDuringOnPause$1;-><init>(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p3, p2, p2, p1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_1
    :goto_0
    return-void
.end method
