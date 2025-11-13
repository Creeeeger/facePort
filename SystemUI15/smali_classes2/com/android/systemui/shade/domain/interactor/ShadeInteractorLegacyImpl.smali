.class public final Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;


# instance fields
.field public final anyExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isAnyExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isQsBypassingShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isQsExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isQsFullscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isUserInteractingWithQs:Lkotlinx/coroutines/flow/SafeFlow;

.field public final isUserInteractingWithShade:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final qsExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shadeMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/statusbar/notification/stack/domain/interactor/SharedNotificationContainerInteractor;Lcom/android/systemui/shade/data/repository/ShadeRepository;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v0, p4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->lockscreenShadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    check-cast p2, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    new-instance v5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$shadeExpansion$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v1, p2, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->statusBarState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, p3, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/SharedNotificationContainerInteractor;->isSplitShadeEnabled:Lkotlinx/coroutines/flow/Flow;

    iget-object p2, p4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyShadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p3, p4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->qsExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0, p1, v2, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->shadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p3, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->qsExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, p4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyIsQsExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v4, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->isQsExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, p4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyExpandImmediate:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v4, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->isQsBypassingShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, p4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyQsFullscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v4, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorKt$createAnyExpansionFlow$1;

    invoke-direct {v4, v6}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorKt$createAnyExpansionFlow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v5, v0, p3, v4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v5, p1, v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->anyExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyExpandedOrAwaitingInputTransfer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v1, p1, v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->isAnyExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;

    iget-object v0, p4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyShadeTracking:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p1, v0, p2, v6}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$isUserInteractingWithShade$1;

    invoke-direct {p1, v6}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$isUserInteractingWithShade$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v1, p4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyLockscreenShadeTracking:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-direct {v0, p2, v1, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->isUserInteractingWithShade:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;

    iget-object p2, p4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyQsTracking:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p1, p2, p3, v6}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl$userInteractingFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object p2, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->isUserInteractingWithQs:Lkotlinx/coroutines/flow/SafeFlow;

    iget-object p1, p4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->shadeMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->shadeMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final getAnyExpansion()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->anyExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getQsExpansion()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->qsExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getShadeExpansion()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->shadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getShadeMode()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->shadeMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->isAnyExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final isQsBypassingShade()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->isQsBypassingShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final isQsExpanded()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->isQsExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final isUserInteractingWithQs()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->isUserInteractingWithQs:Lkotlinx/coroutines/flow/SafeFlow;

    return-object p0
.end method

.method public final isUserInteractingWithShade()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorLegacyImpl;->isUserInteractingWithShade:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    return-object p0
.end method
