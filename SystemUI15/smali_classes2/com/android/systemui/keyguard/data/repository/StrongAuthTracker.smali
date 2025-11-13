.class public final Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _authFlags:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _nonStrongBiometricAllowed:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final currentUserAuthFlags:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final isNonStrongBiometricAllowed:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isStrongBiometricAllowed:Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$map$2;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/data/repository/UserRepository;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$map$1;

    iget-object p2, p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    invoke-direct {v0, p2}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {v1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {v2}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;-><init>(II)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->_authFlags:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v0, Lkotlin/Pair;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {v1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {p1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->_nonStrongBiometricAllowed:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p1, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$flatMapLatest$1;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;)V

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->currentUserAuthFlags:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance v1, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$map$2;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->isStrongBiometricAllowed:Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$map$2;

    new-instance p1, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$flatMapLatest$2;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;)V

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryKt;->access$and(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->isNonStrongBiometricAllowed:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    return-void
.end method


# virtual methods
.method public final onIsNonStrongBiometricAllowedChanged(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->_nonStrongBiometricAllowed:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v1, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "onIsNonStrongBiometricAllowedChanged for userId: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricsRepositoryImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStrongAuthRequiredChanged(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker;->_authFlags:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "onStrongAuthRequiredChanged for userId: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", flag value: "

    const-string v2, "BiometricsRepositoryImpl"

    invoke-static {p0, p1, v1, v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method
