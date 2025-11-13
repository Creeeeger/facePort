.class public final Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final alternateBouncerSupported:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final bouncerRepository:Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;

.field public final canShowAlternateBouncer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final deviceEntryFingerprintAuthInteractor:Ldagger/Lazy;

.field public final isDozingOrAod:Lkotlinx/coroutines/flow/Flow;

.field public final isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardInteractor:Ldagger/Lazy;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepository;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;Lcom/android/systemui/util/time/SystemClock;Lcom/android/keyguard/KeyguardUpdateMonitor;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;",
            "Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepository;",
            "Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->bouncerRepository:Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;

    iput-object p6, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p8, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->deviceEntryFingerprintAuthInteractor:Ldagger/Lazy;

    iput-object p9, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->keyguardInteractor:Ldagger/Lazy;

    check-cast p3, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;

    iget-object p1, p3, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->alternateBouncerVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    check-cast p4, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;

    iget-object p1, p4, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->sensorType:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$special$$inlined$map$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p12, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->alternateBouncerSupported:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p3, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->INSTANCE:Lcom/android/systemui/util/kotlin/BooleanFlowOperators;

    invoke-interface {p10}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    sget-object p6, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DOZING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p5, p6}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionValue(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p5

    new-instance p6, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$special$$inlined$map$2;

    invoke-direct {p6, p5}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-interface {p10}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    sget-object p7, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p5, p7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionValue(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p5

    new-instance p7, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$special$$inlined$map$3;

    invoke-direct {p7, p5}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    filled-new-array {p6, p7}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p5

    invoke-virtual {p3, p5}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->anyOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isDozingOrAod:Lkotlinx/coroutines/flow/Flow;

    new-instance p3, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$special$$inlined$flatMapLatest$1;

    const/4 p5, 0x0

    invoke-direct {p3, p5, p10, p11, p0}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;)V

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    const/4 p3, 0x3

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    invoke-static {p2, p12, p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->canShowAlternateBouncer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public static setAlternateBouncerUIAvailable()V
    .locals 2

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget-object v0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Legacy code path not supported when com.android.systemui.device_entry_udfps_refactor is enabled."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final hide()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->bouncerRepository:Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;

    check-cast v1, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;

    const/4 v2, 0x0

    iget-object v1, v1, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_alternateBouncerVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final isVisibleState()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->bouncerRepository:Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;

    check-cast p0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->alternateBouncerVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
