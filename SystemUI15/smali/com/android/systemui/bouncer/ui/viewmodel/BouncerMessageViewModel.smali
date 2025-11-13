.class public final Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final authenticationInteractor:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

.field public final biometricMessageInteractor:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;

.field public final bouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;

.field public final clock:Lcom/android/systemui/util/time/SystemClock;

.field public final deviceEntryInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

.field public final faceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

.field public final fingerprintInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;

.field public final isLockoutMessagePresent:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel$special$$inlined$map$1;

.field public final lockoutMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final message:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final resetToDefault:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final simBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;Lcom/android/systemui/bouncer/shared/flag/ComposeBouncerFlags;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;",
            "Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;",
            "Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;",
            "Lkotlinx/coroutines/flow/Flow;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;",
            "Lcom/android/systemui/bouncer/shared/flag/ComposeBouncerFlags;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel;->clock:Lcom/android/systemui/util/time/SystemClock;

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel$special$$inlined$map$1;

    invoke-direct {p3, p2}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p3, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel;->isLockoutMessagePresent:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel$special$$inlined$map$1;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p2, 0x6

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-static {p3, p4, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel;->resetToDefault:Lkotlinx/coroutines/flow/SharedFlowImpl;

    check-cast p12, Lcom/android/systemui/bouncer/shared/flag/ComposeBouncerFlagsImpl;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
