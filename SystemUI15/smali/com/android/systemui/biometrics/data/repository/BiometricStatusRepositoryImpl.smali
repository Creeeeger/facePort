.class public final Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepository;


# instance fields
.field public final authenticationState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final biometricManager:Landroid/hardware/biometrics/BiometricManager;

.field public final fingerprintAcquiredStatus:Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$map$2;

.field public final fingerprintAuthenticationReason:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

.field public final fingerprintAuthenticationState:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

.field public final fingerprintRunningState:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/hardware/biometrics/BiometricManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl;->biometricManager:Landroid/hardware/biometrics/BiometricManager;

    new-instance p2, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$authenticationState$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$authenticationState$1;-><init>(Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    const/4 v2, 0x1

    invoke-static {p2, p1, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$filter$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$fingerprintAuthenticationState$2;

    invoke-direct {p1, v0}, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$fingerprintAuthenticationState$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v1, p2, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance p1, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$filter$2;

    invoke-direct {p1, v1}, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$fingerprintRunningState$2;

    invoke-direct {p2, v0}, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$fingerprintRunningState$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v2, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance p1, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$map$1;

    invoke-direct {p1, v2}, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$fingerprintAuthenticationReason$2;

    invoke-direct {p2, v0}, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$fingerprintAuthenticationReason$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl;->fingerprintAuthenticationReason:Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    new-instance p1, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$filterIsInstance$1;

    invoke-direct {p1, v1}, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$filterIsInstance$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$map$2;

    invoke-direct {p2, p1}, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl;->fingerprintAcquiredStatus:Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$special$$inlined$map$2;

    return-void
.end method
