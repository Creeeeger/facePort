.class public final Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final actionButton:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final applicationContext:Landroid/content/Context;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final authMethodViewModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final authenticationInteractor:Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;

.field public final bouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;

.field public childViewModelScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final dialogViewModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final inputMethodInteractor:Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor;

.field public final isFoldSplitRequired:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isInputEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isSideBySideSupported:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final lockoutDialogMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final message:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel;

.field public final selectedUserImage:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final simBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;

.field public final userSwitcherDropdown:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final wipeDialogMessage:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor;Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel;Lcom/android/systemui/bouncer/shared/flag/ComposeBouncerFlags;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;",
            "Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor;",
            "Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;",
            "Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel;",
            "Lcom/android/systemui/bouncer/shared/flag/ComposeBouncerFlags;",
            "Lkotlinx/coroutines/flow/Flow;",
            "Lkotlinx/coroutines/flow/Flow;",
            "Lkotlinx/coroutines/flow/Flow;",
            "Lkotlinx/coroutines/flow/Flow;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p4, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->bouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;

    iput-object p5, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->inputMethodInteractor:Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor;

    iput-object p6, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->simBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;

    iput-object p8, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    new-instance p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$1;

    invoke-direct {p1, p12}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p5, 0x3

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p6

    const/4 p8, 0x0

    invoke-static {p1, p2, p6, p8}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p4, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->dismissDestination:Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor$special$$inlined$map$2;

    new-instance p6, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$2;

    invoke-direct {p6, p1, p0}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;)V

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    sget-object p9, Lcom/android/systemui/scene/shared/model/Scenes;->Lockscreen:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p9}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->destinationSceneMap(Lcom/android/compose/animation/scene/SceneKey;)Ljava/util/Map;

    move-result-object p9

    invoke-static {p6, p2, p1, p9}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p10, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->message:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel;

    new-instance p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$userSwitcherDropdown$1;

    invoke-direct {p1, p8}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$userSwitcherDropdown$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p6, p13, p14, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    sget-object p9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p6, p2, p1, p9}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3;

    iget-object p6, p7, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->authenticationMethod:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {p1, p6, p0}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;)V

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p6

    invoke-static {p1, p2, p6, p8}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->authMethodViewModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p6

    iput-object p6, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->lockoutDialogMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p8}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p9

    iput-object p9, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->wipeDialogMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p12, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$dialogViewModel$1;

    invoke-direct {p12, p0, p8}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$dialogViewModel$1;-><init>(Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance p13, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p13, p9, p6, p12}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p6

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->createDialogViewModel()Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$DialogViewModel;

    move-result-object p9

    invoke-static {p13, p2, p6, p9}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p6

    invoke-static {p15, p2, p6, p8}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p6, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$4;

    invoke-direct {p6, p1, p0}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;)V

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p9

    iget-object p12, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p12}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p13

    check-cast p13, Lcom/android/systemui/bouncer/ui/viewmodel/AuthMethodBouncerViewModel;

    iget-object p4, p4, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/BouncerRepository;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p14, Lcom/android/systemui/flags/Flags;->FULL_SCREEN_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

    iget-object p4, p4, Lcom/android/systemui/bouncer/data/repository/BouncerRepository;->flags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    check-cast p4, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {p4, p14}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    move-result p4

    const/4 p14, 0x1

    const/4 p15, 0x0

    if-nez p4, :cond_1

    instance-of p4, p13, Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel;

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    move p4, p15

    goto :goto_1

    :cond_1
    :goto_0
    move p4, p14

    :goto_1
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p6, p2, p9, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p4, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$5;

    invoke-direct {p4, p1, p0}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;)V

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    invoke-interface {p12}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/systemui/bouncer/ui/viewmodel/AuthMethodBouncerViewModel;

    instance-of p6, p6, Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel;

    xor-int/2addr p6, p14

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-static {p4, p2, p1, p6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p10, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel;->isLockoutMessagePresent:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel$special$$inlined$map$1;

    new-instance p4, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$6;

    invoke-direct {p4, p1}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$special$$inlined$map$6;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    iget-object p3, p7, Lcom/android/systemui/authentication/domain/interactor/AuthenticationInteractor;->repository:Lcom/android/systemui/authentication/data/repository/AuthenticationRepository;

    check-cast p3, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;

    iget-object p5, p3, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3}, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->getSelectedUserId()I

    move-result p6

    invoke-virtual {p5, p6}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    iget-object p3, p3, Lcom/android/systemui/authentication/data/repository/AuthenticationRepositoryImpl;->clock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p3}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide p9

    cmp-long p3, p9, p5

    if-gez p3, :cond_2

    move-object p8, p7

    :cond_2
    if-nez p8, :cond_3

    goto :goto_2

    :cond_3
    move p14, p15

    :goto_2
    invoke-static {p14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p4, p2, p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->isInputEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    check-cast p11, Lcom/android/systemui/bouncer/shared/flag/ComposeBouncerFlagsImpl;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static final access$onIntentionalUserInput(Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->message:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel;

    iget-object v0, v0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerMessageViewModel;->resetToDefault:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->bouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;

    iget-object v0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->deviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    invoke-interface {v0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->onPrimaryBouncerUserInput()V

    iget-object v0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    invoke-static {v0}, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->onUserTouch$default(Lcom/android/systemui/power/domain/interactor/PowerInteractor;)V

    const-wide v0, 0x3fe3333333333333L    # 0.6

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->falsingInteractor:Lcom/android/systemui/classifier/domain/interactor/FalsingInteractor;

    iget-object p0, p0, Lcom/android/systemui/classifier/domain/interactor/FalsingInteractor;->collector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {p0, v0}, Lcom/android/systemui/classifier/FalsingCollector;->updateFalseConfidence(Lcom/android/systemui/classifier/FalsingClassifier$Result;)V

    return-void
.end method

.method public static destinationSceneMap(Lcom/android/compose/animation/scene/SceneKey;)Ljava/util/Map;
    .locals 11

    sget-object v0, Lcom/android/compose/animation/scene/Back;->INSTANCE:Lcom/android/compose/animation/scene/Back;

    new-instance v1, Lcom/android/compose/animation/scene/UserActionResult;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3, v2}, Lcom/android/compose/animation/scene/UserActionResult;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/compose/animation/scene/Swipe;

    sget-object v6, Lcom/android/compose/animation/scene/SwipeDirection;->Down:Lcom/android/compose/animation/scene/SwipeDirection;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/android/compose/animation/scene/UserActionResult;

    invoke-direct {v1, p0, v2, v3, v2}, Lcom/android/compose/animation/scene/UserActionResult;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createDialogViewModel()Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$DialogViewModel;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->wipeDialogMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->lockoutDialogMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$DialogViewModel;

    new-instance v2, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$createDialogViewModel$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$createDialogViewModel$1;-><init>(Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;)V

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$DialogViewModel;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$DialogViewModel;

    new-instance v2, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$createDialogViewModel$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$createDialogViewModel$2;-><init>(Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$DialogViewModel;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
