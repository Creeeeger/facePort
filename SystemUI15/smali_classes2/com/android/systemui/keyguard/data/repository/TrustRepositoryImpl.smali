.class public final Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/data/repository/TrustRepository;


# instance fields
.field public final activeUnlockRunningForUser:Ljava/util/Map;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final isCurrentUserActiveUnlockRunning:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

.field public final isCurrentUserTrustUsuallyManaged:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final latestTrustModelForUser:Ljava/util/Map;

.field public final logger:Lcom/android/keyguard/logging/TrustRepositoryLogger;

.field public final trust:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final trustManagedForUser:Ljava/util/Map;

.field public final trustManager:Landroid/app/trust/TrustManager;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/user/data/repository/UserRepository;Landroid/app/trust/TrustManager;Lcom/android/keyguard/logging/TrustRepositoryLogger;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    iput-object p3, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->trustManager:Landroid/app/trust/TrustManager;

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->logger:Lcom/android/keyguard/logging/TrustRepositoryLogger;

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->latestTrustModelForUser:Ljava/util/Map;

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->activeUnlockRunningForUser:Ljava/util/Map;

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->trustManagedForUser:Ljava/util/Map;

    sget-object p3, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p4, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1;-><init>(Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;

    invoke-direct {p4, p0, v0}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;-><init>(Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    const/4 p4, 0x1

    invoke-static {v1, p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->trust:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    check-cast p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    sget-object v1, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$2;->INSTANCE:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$2;

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v3, p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    invoke-direct {v2, p4, v3, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p4, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$1;

    invoke-direct {p4, v2, p0}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;)V

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    new-instance v1, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$4;-><init>(Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v2, p4, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance p4, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5;

    invoke-direct {p4, p0, v0}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserActiveUnlockRunning$5;-><init>(Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v1, p4, v2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->isCurrentUserActiveUnlockRunning:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    new-instance p4, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$flatMapLatest$1;

    invoke-direct {p4, v0, p0}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;)V

    iget-object p2, p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    invoke-static {p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->isCurrentUserTrustUsuallyManaged:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final getTrustAgentRequestingToDismissKeyguard()Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$4;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    sget-object v1, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trustAgentRequestingToDismissKeyguard$2;->INSTANCE:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trustAgentRequestingToDismissKeyguard$2;

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v3, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->trust:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-direct {v2, v3, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$3;

    invoke-direct {v0, v2, p0}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$filter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$4;

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    return-object p0
.end method

.method public final isCurrentUserTrustManaged()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    sget-object v1, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrustManaged$2;->INSTANCE:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrustManaged$2;

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v3, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->trust:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-direct {v2, v3, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$2;

    invoke-direct {v0, v2, p0}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrustManaged$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrustManaged$4;-><init>(Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v3, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrustManaged$5;

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrustManaged$5;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v1, v0, v3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, p0, v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final isCurrentUserTrusted()Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    sget-object v1, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrusted$2;->INSTANCE:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrusted$2;

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v3, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->trust:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-direct {v2, v3, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$5;

    invoke-direct {v0, v2, p0}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrusted$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrusted$4;-><init>(Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrusted$5;

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$isCurrentUserTrusted$5;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v1, v0, p0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    return-object v1
.end method
