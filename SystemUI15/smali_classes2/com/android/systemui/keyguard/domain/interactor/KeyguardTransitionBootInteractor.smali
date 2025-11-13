.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final deviceEntryInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

.field public final keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final repository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final showLockscreenOnBoot:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lcom/android/systemui/statusbar/policy/domain/interactor/DeviceProvisioningInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;->deviceEntryInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;

    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iput-object p5, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1;

    iget-object p2, p3, Lcom/android/systemui/statusbar/policy/domain/interactor/DeviceProvisioningInteractor;->isDeviceProvisioned:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;->showLockscreenOnBoot:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$special$$inlined$map$1;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 3

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$start$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor$start$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionBootInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
