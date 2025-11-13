.class public final Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final canEnrollFingerprints:Lkotlinx/coroutines/flow/SafeFlow;

.field public final enrolledFingerprints:Lkotlinx/coroutines/flow/SafeFlow;

.field public final fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final gatekeeperPasswordProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

.field public final maxEnrollableFingerprints:Lkotlinx/coroutines/flow/SafeFlow;

.field public final maxFingerprints:I

.field public final sensorPropertiesInternal:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/hardware/fingerprint/FingerprintManager;Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl;Lcom/android/settings/biometrics/GatekeeperPasswordProvider;Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintEnrollInteractor;)V
    .locals 1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fingerprintSensorRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gatekeeperPasswordProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fingerprintEnrollStateRepository"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p5, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->gatekeeperPasswordProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e00b3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->maxFingerprints:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->applicationContext:Landroid/content/Context;

    new-instance p2, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$enrolledFingerprints$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$enrolledFingerprints$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    new-instance p5, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p5, p2}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object p5, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->enrolledFingerprints:Lkotlinx/coroutines/flow/SafeFlow;

    new-instance p2, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$canEnrollFingerprints$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$canEnrollFingerprints$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p1, p2}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->canEnrollFingerprints:Lkotlinx/coroutines/flow/SafeFlow;

    iget-object p1, p4, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl;->fingerprintSensor:Lkotlinx/coroutines/flow/SafeFlow;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->sensorPropertiesInternal:Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$maxEnrollableFingerprints$1;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$maxEnrollableFingerprints$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->maxEnrollableFingerprints:Lkotlinx/coroutines/flow/SafeFlow;

    return-void
.end method


# virtual methods
.method public final authenticate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v5, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$authenticate$2$authenticationCallback$1;

    invoke-direct {v5, v0}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$authenticate$2$authenticationCallback$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    new-instance v4, Landroid/os/CancellationSignal;

    invoke-direct {v4}, Landroid/os/CancellationSignal;-><init>()V

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$authenticate$2$1;

    invoke-direct {p1, v4}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$authenticate$2$1;-><init>(Landroid/os/CancellationSignal;)V

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v7

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public final renameFingerprint(Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl$renameFingerprint$2;-><init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
