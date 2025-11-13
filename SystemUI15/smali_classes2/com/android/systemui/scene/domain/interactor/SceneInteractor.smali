.class public final Lcom/android/systemui/scene/domain/interactor/SceneInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final currentScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final deviceUnlockedInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;

.field public final isTransitionUserInputOngoing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final logger:Lcom/android/systemui/scene/shared/logger/SceneLogger;

.field public final onSceneAboutToChangeListener:Ljava/util/Set;

.field public final repository:Lcom/android/systemui/scene/data/repository/SceneContainerRepository;

.field public final sceneFamilyResolvers:Ldagger/Lazy;

.field public final transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final transitioningTo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/scene/data/repository/SceneContainerRepository;Lcom/android/systemui/scene/shared/logger/SceneLogger;Ldagger/Lazy;Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/scene/data/repository/SceneContainerRepository;",
            "Lcom/android/systemui/scene/shared/logger/SceneLogger;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->repository:Lcom/android/systemui/scene/data/repository/SceneContainerRepository;

    iput-object p3, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->logger:Lcom/android/systemui/scene/shared/logger/SceneLogger;

    iput-object p4, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->sceneFamilyResolvers:Ldagger/Lazy;

    iput-object p5, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->deviceUnlockedInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;

    new-instance p3, Ljava/util/LinkedHashSet;

    invoke-direct {p3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->onSceneAboutToChangeListener:Ljava/util/Set;

    iget-object p3, p2, Lcom/android/systemui/scene/data/repository/SceneContainerRepository;->currentScene:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p4

    new-instance p5, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$currentScene$1;

    const/4 v0, 0x0

    invoke-direct {p5, p0, v0}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$currentScene$1;-><init>(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, p4, p5}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwiseBy(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    sget-object p5, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v1, 0x3

    invoke-static {p5, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v2

    invoke-interface {p3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p4, p1, v2, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->currentScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p3, p2, Lcom/android/systemui/scene/data/repository/SceneContainerRepository;->transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p3, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p4, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$special$$inlined$map$1;

    invoke-direct {p4, p3}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p5, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v2

    invoke-static {p4, p1, v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p4, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$special$$inlined$flatMapLatest$1;

    invoke-direct {p4, v0}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p3

    invoke-static {p5, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p4

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p3, p1, p4, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->isTransitionUserInputOngoing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$isVisible$1;

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$isVisible$1;-><init>(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v0, p2, Lcom/android/systemui/scene/data/repository/SceneContainerRepository;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lcom/android/systemui/scene/data/repository/SceneContainerRepository;->isRemoteUserInteractionOngoing:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-direct {p4, v0, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p5, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    iget-object p5, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p5}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    invoke-virtual {p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p5, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p4, p1, p3, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public static changeScene$default(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/compose/animation/scene/SceneKey;Ljava/lang/String;Lcom/android/compose/animation/scene/TransitionKey;I)V
    .locals 2

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    iget-object p4, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->currentScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p4, p4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/compose/animation/scene/SceneKey;

    iget-object v0, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->sceneFamilyResolvers:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/scene/domain/resolver/SceneResolver;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/scene/domain/resolver/SceneResolver;->getResolvedScene()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/animation/scene/SceneKey;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :cond_2
    :goto_0
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->validateSceneChange(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->logger:Lcom/android/systemui/scene/shared/logger/SceneLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, p1, p2, v1}, Lcom/android/systemui/scene/shared/logger/SceneLogger;->logSceneChangeRequested(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->onSceneAboutToChangeListener:Ljava/util/Set;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p4, Lcom/android/systemui/scene/shared/model/Scenes;->Lockscreen:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {p1, p4}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->repository:Lcom/android/systemui/scene/data/repository/SceneContainerRepository;

    iget-object p0, p0, Lcom/android/systemui/scene/data/repository/SceneContainerRepository;->dataSource:Lcom/android/systemui/scene/shared/model/SceneDataSource;

    invoke-interface {p0, p1, p3}, Lcom/android/systemui/scene/shared/model/SceneDataSource;->changeScene(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final isSceneInFamily(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->sceneFamilyResolvers:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/scene/domain/resolver/SceneResolver;

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/scene/domain/resolver/SceneResolver;->includesScene(Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move p2, p1

    :cond_0
    return p2
.end method

.method public final resolveSceneFamily(Lcom/android/compose/animation/scene/SceneKey;)Lkotlinx/coroutines/flow/SafeFlow;
    .locals 2

    new-instance v0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor$resolveSceneFamily$1;-><init>(Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/compose/animation/scene/SceneKey;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object p0
.end method

.method public final validateSceneChange(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->repository:Lcom/android/systemui/scene/data/repository/SceneContainerRepository;

    iget-object v0, v0, Lcom/android/systemui/scene/data/repository/SceneContainerRepository;->config:Lcom/android/systemui/scene/shared/model/SceneContainerConfig;

    iget-object v0, v0, Lcom/android/systemui/scene/shared/model/SceneContainerConfig;->sceneKeys:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/android/compose/animation/scene/ObservableTransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    :cond_2
    sget-object v1, Lcom/android/systemui/scene/shared/model/Scenes;->Gone:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->deviceUnlockedInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceUnlockedInteractor;->deviceUnlockStatus:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockStatus;

    iget-boolean p0, p0, Lcom/android/systemui/deviceentry/shared/model/DeviceUnlockStatus;->isUnlocked:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot change to the Gone scene while the device is locked and not currently transitioning from Gone. Current transition state is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Logging reason for scene change was: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
