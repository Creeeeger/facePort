.class public final Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final _nextStep:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public challenge:Ljava/lang/Long;

.field public final fingerprintManagerInteractor:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;

.field public final nextStep:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public token:[B

.field public final userId:I


# direct methods
.method public constructor <init>(ILcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;Lkotlinx/coroutines/CoroutineDispatcher;[BLjava/lang/Long;)V
    .locals 1

    const-string v0, "fingerprintManagerInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundDispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->userId:I

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->fingerprintManagerInteractor:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p4, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->token:[B

    iput-object p5, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->challenge:Ljava/lang/Long;

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->_nextStep:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->nextStep:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    if-eqz p5, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p2

    new-instance p3, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel$2;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel$2;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p2, p1, p1, p3, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/NextStepViewModel;

    new-instance p3, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/LaunchConfirmDeviceCredential;

    iget p4, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->userId:I

    invoke-direct {p3, p4}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/LaunchConfirmDeviceCredential;-><init>(I)V

    invoke-virtual {p2, p1, p3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_1
    return-void
.end method


# virtual methods
.method public final launchFinishSettings(Ljava/lang/String;)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->_nextStep:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/NextStepViewModel;

    new-instance v2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FinishSettings;

    invoke-direct {v2, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FinishSettings;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final setStepToLaunched()V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->_nextStep:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/NextStepViewModel;

    sget-object v2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/LaunchedActivity;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/LaunchedActivity;

    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final showSettingsHelper()V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->_nextStep:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/NextStepViewModel;

    sget-object v2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/ShowSettings;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/ShowSettings;

    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
