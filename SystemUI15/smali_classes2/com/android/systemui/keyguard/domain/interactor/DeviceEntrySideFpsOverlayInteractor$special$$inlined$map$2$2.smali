.class public final Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of p1, p2, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2$2$1;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2$2$1;

    iget v0, p1, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2$2$1;->label:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2$2$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2$2$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, p1, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p1, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget p2, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor;->$r8$clinit:I

    iget-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v1, p2, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor;->primaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v1}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isBouncerShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isAnimatingAway()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p2, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050047

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p2, p2, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput v2, p1, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/DeviceEntrySideFpsOverlayInteractor$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p2, p1}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
