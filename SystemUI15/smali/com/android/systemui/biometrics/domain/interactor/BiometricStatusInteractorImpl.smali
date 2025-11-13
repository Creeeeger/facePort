.class public final Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractor;


# instance fields
.field public final activityTaskManager:Landroid/app/ActivityTaskManager;

.field public final fingerprintAcquiredStatus:Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$map$2;

.field public final sfpsAuthenticationReason:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityTaskManager;Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepository;Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepository;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;->activityTaskManager:Landroid/app/ActivityTaskManager;

    check-cast p2, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl;

    iget-object p1, p2, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl;->fingerprintAuthenticationReason:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    check-cast p3, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;

    iget-object p3, p3, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->sensorType:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$sfpsAuthenticationReason$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$sfpsAuthenticationReason$1;-><init>(Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v2, p1, p3, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$sfpsAuthenticationReason$2;

    invoke-direct {p3, v1}, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$sfpsAuthenticationReason$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v0, p1, p3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;->sfpsAuthenticationReason:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    iget-object p1, p2, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl;->fingerprintAcquiredStatus:Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$map$2;

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;->fingerprintAcquiredStatus:Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$map$2;

    return-void
.end method
