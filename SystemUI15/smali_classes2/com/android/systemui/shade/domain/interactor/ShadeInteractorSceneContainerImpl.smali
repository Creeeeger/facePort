.class public final Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;


# instance fields
.field public final anyExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isAnyExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isQsBypassingShade:Lkotlinx/coroutines/flow/Flow;

.field public final isQsExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isQsFullscreen:Lkotlinx/coroutines/flow/Flow;

.field public final isUserInteractingWithQs:Lkotlinx/coroutines/flow/Flow;

.field public final isUserInteractingWithShade:Lkotlinx/coroutines/flow/Flow;

.field public final qsExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shadeMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/systemui/statusbar/notification/stack/domain/interactor/SharedNotificationContainerInteractor;Lcom/android/systemui/shade/data/repository/ShadeRepository;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object p4, p4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->shadeMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p4, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->shadeMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p4, Lcom/android/systemui/scene/shared/model/SceneFamilies;->NotifShade:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {p2, p4}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->resolveSceneFamily(Lcom/android/compose/animation/scene/SceneKey;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$sceneBasedExpansion$1;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$sceneBasedExpansion$1;-><init>(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lcom/android/systemui/utils/coroutines/flow/LatestConflatedKt;->flatMapLatestConflated(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v0, p1, v3, v5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->shadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v5, Lcom/android/systemui/scene/shared/model/SceneFamilies;->QuickSettings:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {p2, v5}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->resolveSceneFamily(Lcom/android/compose/animation/scene/SceneKey;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$sceneBasedExpansion$1;

    invoke-direct {v7, p2, v2}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$sceneBasedExpansion$1;-><init>(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v7}, Lcom/android/systemui/utils/coroutines/flow/LatestConflatedKt;->flatMapLatestConflated(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$qsExpansion$1;

    invoke-direct {v7, v2}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$qsExpansion$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/SharedNotificationContainerInteractor;->isSplitShadeEnabled:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p3, v0, v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {p3, p1, v3, v6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->qsExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v6, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$special$$inlined$map$1;

    invoke-direct {v6, p3}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, p1, v3, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->isQsExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p2, v5}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->resolveSceneFamily(Lcom/android/compose/animation/scene/SceneKey;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object v6

    invoke-virtual {p2, p4}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->resolveSceneFamily(Lcom/android/compose/animation/scene/SceneKey;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$isQsBypassingShade$2;->INSTANCE:Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$isQsBypassingShade$2;

    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v10, v6, v8, v9}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance v6, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$isQsBypassingShade$3;

    invoke-direct {v6, p2, v2}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$isQsBypassingShade$3;-><init>(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v10, v6}, Lcom/android/systemui/utils/coroutines/flow/LatestConflatedKt;->flatMapLatestConflated(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->isQsBypassingShade:Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p2, v5}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->resolveSceneFamily(Lcom/android/compose/animation/scene/SceneKey;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object v6

    new-instance v8, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$isQsFullscreen$1;

    invoke-direct {v8, p2, v2}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$isQsFullscreen$1;-><init>(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v8}, Lcom/android/systemui/utils/coroutines/flow/LatestConflatedKt;->flatMapLatestConflated(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    new-instance v6, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorKt$createAnyExpansionFlow$1;

    invoke-direct {v6, v2}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorKt$createAnyExpansionFlow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v8, v0, p3, v6}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {v8, p1, v3, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->anyExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$special$$inlined$map$2;

    invoke-direct {v0, p3}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    invoke-static {p3, p1, v3, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->isAnyExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$sceneBasedInteracting$1;

    invoke-direct {p1, p2, p4, v2}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$sceneBasedInteracting$1;-><init>(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/compose/animation/scene/SceneKey;Lkotlin/coroutines/Continuation;)V

    iget-object p3, p2, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p3, p1}, Lcom/android/systemui/utils/coroutines/flow/LatestConflatedKt;->flatMapLatestConflated(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->isUserInteractingWithShade:Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$sceneBasedInteracting$1;

    invoke-direct {p1, p2, v5, v2}, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl$sceneBasedInteracting$1;-><init>(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/compose/animation/scene/SceneKey;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, p1}, Lcom/android/systemui/utils/coroutines/flow/LatestConflatedKt;->flatMapLatestConflated(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->isUserInteractingWithQs:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final getAnyExpansion()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->anyExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getQsExpansion()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->qsExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getShadeExpansion()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->shadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getShadeMode()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->shadeMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->isAnyExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final isQsBypassingShade()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->isQsBypassingShade:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final isQsExpanded()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->isQsExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final isUserInteractingWithQs()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->isUserInteractingWithQs:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final isUserInteractingWithShade()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorSceneContainerImpl;->isUserInteractingWithShade:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method
