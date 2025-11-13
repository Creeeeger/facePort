.class public final Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/authentication/data/repository/AuthenticationRepository;


# instance fields
.field public final _failedAuthenticationAttempts:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _hasLockoutOccurred:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final authenticationMethod:Lkotlinx/coroutines/flow/Flow;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final clock:Lcom/android/systemui/util/time/SystemClock;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final failedAuthenticationAttempts:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final getSecurityMode:Ljava/util/function/Function;

.field public final hasLockoutOccurred:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final hintedPinLength:I

.field public final isAutoConfirmFeatureEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isPatternVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isPinEnhancedPrivacyEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final minPasswordLength:I

.field public final minPatternLength:I

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/util/time/SystemClock;Ljava/util/function/Function;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            ">;",
            "Lcom/android/systemui/user/data/repository/UserRepository;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p3, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->clock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p4, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->getSecurityMode:Ljava/util/function/Function;

    iput-object p5, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    iput-object p6, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p7, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 p1, 0x6

    iput p1, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->hintedPinLength:I

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p2, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$isPatternVisible$1;

    invoke-direct {p2, p6}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$isPatternVisible$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->refreshingFlow(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->isPatternVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p3, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$isAutoConfirmFeatureEnabled$1;

    invoke-direct {p3, p6}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$isAutoConfirmFeatureEnabled$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->refreshingFlow(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->isAutoConfirmFeatureEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    check-cast p5, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-interface {p9}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->isAnySimSecure()Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$authenticationMethod$1;

    const/4 p6, 0x0

    invoke-direct {p4, p6}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$authenticationMethod$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p7, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p5, p5, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    invoke-direct {p7, p5, p3, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p3, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$special$$inlined$flatMapLatest$1;

    invoke-direct {p3, p6, p8}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    invoke-static {p7, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$special$$inlined$map$1;

    invoke-direct {p4, p3, p0}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;)V

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->authenticationMethod:Lkotlinx/coroutines/flow/Flow;

    new-instance p3, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$isPinEnhancedPrivacyEnabled$1;

    invoke-direct {p3, p0, p6}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$isPinEnhancedPrivacyEnabled$1;-><init>(Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->refreshingFlow(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->isPinEnhancedPrivacyEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->failedAuthenticationAttempts:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->hasLockoutOccurred:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    return-void
.end method


# virtual methods
.method public final getAuthenticationMethod(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getAuthenticationMethod$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getAuthenticationMethod$3;-><init>(Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;ILkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getMaxFailedUnlockAttemptsForWipe(Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2$2$1;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getMaxFailedUnlockAttemptsForWipe$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getMaxFailedUnlockAttemptsForWipe$2;-><init>(Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getPinLength(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getPinLength$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getPinLength$2;-><init>(Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getProfileWithMinFailedUnlockAttemptsForWipe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getProfileWithMinFailedUnlockAttemptsForWipe$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$getProfileWithMinFailedUnlockAttemptsForWipe$2;-><init>(Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getSelectedUserId()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {p0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    return p0
.end method

.method public final refreshingFlow(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;
    .locals 2

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$refreshingFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl$refreshingFlow$1;-><init>(Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 p2, 0x3

    iget-object p0, p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p0

    return-object p0
.end method
