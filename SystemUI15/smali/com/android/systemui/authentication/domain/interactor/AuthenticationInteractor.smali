.class public final Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _onAuthenticationResult:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final authenticationMethod:Lkotlinx/coroutines/flow/Flow;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final hintedPinLength:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isAutoConfirmEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isPatternVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isPinEnhancedPrivacyEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final onAuthenticationResult:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final repository:Lcom/android/systemui/authentication/data/repository/AuthenticationRepository;

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final upcomingWipe:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/authentication/data/repository/AuthenticationRepository;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->repository:Lcom/android/systemui/authentication/data/repository/AuthenticationRepository;

    iput-object p4, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    check-cast p3, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;

    iget-object p2, p3, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->authenticationMethod:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->authenticationMethod:Lkotlinx/coroutines/flow/Flow;

    iget-object p2, p3, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->isAutoConfirmFeatureEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p4, p3, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->hasLockoutOccurred:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$isAutoConfirmEnabled$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$isAutoConfirmEnabled$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v2, p2, p4, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p4, 0x3

    invoke-static {p2, p4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, p1, v0, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->isAutoConfirmEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1;

    invoke-direct {v2, v0, p0}, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;)V

    invoke-static {p2, p4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    invoke-static {v2, p1, p2, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->hintedPinLength:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p3, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->isPatternVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->isPatternVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/4 p1, 0x7

    const/4 p2, 0x0

    invoke-static {p2, p2, v1, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->onAuthenticationResult:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object p1, p3, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->isPinEnhancedPrivacyEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->isPinEnhancedPrivacyEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p3, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->failedAuthenticationAttempts:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;)V

    return-void
.end method

.method public static final access$getWipeTarget(Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$getWipeTarget$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$getWipeTarget$1;

    iget v1, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$getWipeTarget$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$getWipeTarget$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$getWipeTarget$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$getWipeTarget$1;-><init>(Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$getWipeTarget$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$getWipeTarget$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$getWipeTarget$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$getWipeTarget$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor$getWipeTarget$1;->label:I

    iget-object p1, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->repository:Lcom/android/systemui/authentication/data/repository/AuthenticationRepository;

    check-cast p1, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->getProfileWithMinFailedUnlockAttemptsForWipe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v0, Landroid/app/admin/flags/Flags;->FEATURE_FLAGS:Landroid/app/admin/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->mainUserId:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p0

    if-ne p1, p0, :cond_5

    if-ne p1, v0, :cond_4

    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationWipeModel$WipeTarget$WholeDevice;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationWipeModel$WipeTarget$WholeDevice;

    :goto_2
    move-object v1, p0

    goto :goto_3

    :cond_4
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationWipeModel$WipeTarget$User;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationWipeModel$WipeTarget$User;

    goto :goto_2

    :cond_5
    const/16 p0, -0x2710

    if-ne p1, p0, :cond_6

    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationWipeModel$WipeTarget$WholeDevice;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationWipeModel$WipeTarget$WholeDevice;

    goto :goto_2

    :cond_6
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationWipeModel$WipeTarget$ManagedProfile;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationWipeModel$WipeTarget$ManagedProfile;

    goto :goto_2

    :goto_3
    return-object v1
.end method


# virtual methods
.method public final getAuthenticationMethod(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->repository:Lcom/android/systemui/authentication/data/repository/AuthenticationRepository;

    check-cast p0, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;

    invoke-virtual {p0}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->getSelectedUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->getAuthenticationMethod(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
