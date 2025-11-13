.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final biometricSettingsRepository:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;

.field public final repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

.field public final showKeyguardWhenReenabled:Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor$special$$inlined$map$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor;->biometricSettingsRepository:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p4, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lcom/android/systemui/util/kotlin/Utils;->Companion:Lcom/android/systemui/util/kotlin/Utils$Companion;

    check-cast p2, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object p1, p2, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor$special$$inlined$filter$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object p1, p4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->currentTransitionInfoInternal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    check-cast p3, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

    iget-object p3, p3, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isCurrentUserInLockdown:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$map$1;

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/systemui/util/kotlin/Utils$Companion;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor$special$$inlined$map$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    return-void
.end method
