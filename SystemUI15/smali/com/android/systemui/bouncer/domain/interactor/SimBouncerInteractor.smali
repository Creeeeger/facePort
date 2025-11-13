.class public final Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _bouncerMessageChanged:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final applicationContext:Landroid/content/Context;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final bouncerMessageChanged:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final errorDialogMessage:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final euiccManager:Landroid/telephony/euicc/EuiccManager;

.field public final isAnySimSecure:Lkotlinx/coroutines/flow/Flow;

.field public final isLockedEsim:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final repository:Lcom/android/systemui/bouncer/data/repository/SimBouncerRepository;

.field public final resources:Landroid/content/res/Resources;

.field public final subId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/bouncer/data/repository/SimBouncerRepository;Landroid/telephony/TelephonyManager;Landroid/content/res/Resources;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/telephony/euicc/EuiccManager;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p4, p0, Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/SimBouncerRepository;

    check-cast p4, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl;

    iget-object p1, p4, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl;->subscriptionId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;->subId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {p9}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->isAnySimSecure()Lkotlinx/coroutines/flow/Flow;

    iget-object p1, p4, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl;->isLockedEsim:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;->isLockedEsim:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p4, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl;->errorDialogMessage:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;->errorDialogMessage:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/4 p0, 0x0

    const/4 p1, 0x0

    const/4 p2, 0x7

    invoke-static {p0, p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-void
.end method


# virtual methods
.method public final resetSimPukUserInput()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/SimBouncerRepository;

    const/4 v1, 0x0

    const/4 v2, 0x0

    check-cast v0, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/bouncer/data/model/SimPukInputModel;

    invoke-direct {v3, v2, v2}, Lcom/android/systemui/bouncer/data/model/SimPukInputModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor$resetSimPukUserInput$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor$resetSimPukUserInput$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 v3, 0x2

    invoke-static {v2, p0, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
