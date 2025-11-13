.class public final Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;
.implements Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;


# instance fields
.field public final baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

.field public final isAnyFullyExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isExpandToQsEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

.field public final isQsEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isShadeEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isShadeFullyCollapsed:Lkotlinx/coroutines/flow/Flow;

.field public final isShadeFullyExpanded:Lkotlinx/coroutines/flow/Flow;

.field public final isShadeTouchable:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

.field public final isUserInteracting:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/policy/domain/interactor/DeviceProvisioningInteractor;Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepository;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepository;Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    move-object v3, p3

    check-cast v3, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;

    new-instance v4, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$special$$inlined$map$1;

    iget-object v5, v3, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;->disableFlags:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v4, v5}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, p1, v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isShadeEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v8, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$special$$inlined$map$2;

    invoke-direct {v8, v5}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v8, p1, v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isQsEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface/range {p10 .. p10}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getAnyExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    new-instance v8, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$special$$inlined$map$3;

    invoke-direct {v8, v5}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v8}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    invoke-static {v5, p1, v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isAnyFullyExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface/range {p10 .. p10}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    new-instance v8, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$special$$inlined$map$4;

    invoke-direct {v8, v5}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v8}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isShadeFullyExpanded:Lkotlinx/coroutines/flow/Flow;

    invoke-interface/range {p10 .. p10}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    new-instance v8, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$special$$inlined$map$5;

    invoke-direct {v8, v5}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v8}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isShadeFullyCollapsed:Lkotlinx/coroutines/flow/Flow;

    invoke-interface/range {p10 .. p10}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isUserInteractingWithShade()Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    invoke-interface/range {p10 .. p10}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isUserInteractingWithQs()Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v8, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$isUserInteracting$1;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$isUserInteracting$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v10, v5, v2, v8}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v10}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    invoke-static {v2, p1, v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isUserInteracting:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 v1, p7

    iget-object v1, v1, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->isAsleep:Lcom/android/systemui/power/domain/interactor/PowerInteractor$special$$inlined$map$2;

    sget-object v2, Lcom/android/systemui/keyguard/shared/model/Edge;->Companion:Lcom/android/systemui/keyguard/shared/model/Edge$Companion;

    sget-object v5, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const/4 v6, 0x1

    invoke-static {v2, v9, v5, v6}, Lcom/android/systemui/keyguard/shared/model/Edge$Companion;->create$default(Lcom/android/systemui/keyguard/shared/model/Edge$Companion;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;I)Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    move-result-object v2

    sget-object v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->TAG:Ljava/lang/String;

    move-object/from16 v5, p6

    invoke-virtual {v5, v2, v9}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->isInTransition(Lcom/android/systemui/keyguard/shared/model/Edge;Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    move-object/from16 v5, p5

    check-cast v5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    new-instance v6, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$special$$inlined$map$6;

    iget-object v7, v5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->dozeTransitionModel:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v6, v7}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$special$$inlined$map$6;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v7, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$isShadeTouchable$2;

    move-object v8, p4

    invoke-direct {v7, p4, v9}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$isShadeTouchable$2;-><init>(Lcom/android/systemui/statusbar/phone/DozeParameters;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v2, v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isShadeTouchable:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-object/from16 v1, p8

    check-cast v1, Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepositoryImpl;

    new-instance v2, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$isExpandToQsEnabled$1;

    move-object/from16 v6, p9

    invoke-direct {v2, v6, v9}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl$isExpandToQsEnabled$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/data/repository/UserSetupRepositoryImpl;->isUserSetUp:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object v6, p2

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/domain/interactor/DeviceProvisioningInteractor;->isDeviceProvisioned:Lkotlinx/coroutines/flow/Flow;

    iget-object v3, v3, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;->disableFlags:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v5, v5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isDozing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object p1, v3

    move-object p2, v4

    move-object p3, v5

    move-object p4, v1

    move-object/from16 p5, v6

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isExpandToQsEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    return-void
.end method


# virtual methods
.method public final getAnyExpansion()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getAnyExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final getQsExpansion()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getQsExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final getShadeExpansion()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final getShadeMode()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeMode()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final isQsBypassingShade()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isQsBypassingShade()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final isQsExpanded()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isQsExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final isUserInteractingWithQs()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isUserInteractingWithQs()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final isUserInteractingWithShade()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isUserInteractingWithShade()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
