.class public final Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationsPlaceholderViewModel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object p5, p4

    check-cast p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p6, p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isShadeTouchable:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    new-instance v6, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;

    const/4 v1, 0x0

    move-object v0, v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel;)V

    invoke-static {p6, v6}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p3

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p6, 0x3

    invoke-static {p4, p6}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p4

    iget-object p2, p2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->isUnlocked:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p5, p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p5}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeMode()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p5

    invoke-interface {p5}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/systemui/shade/shared/model/ShadeMode;

    const/4 p6, 0x0

    invoke-static {p2, p6, p5}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel;->destinationScenes(ZZLcom/android/systemui/shade/shared/model/ShadeMode;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p3, p1, p4, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenSceneViewModel;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public static destinationScenes(ZZLcom/android/systemui/shade/shared/model/ShadeMode;)Ljava/util/Map;
    .locals 17

    move-object/from16 v0, p2

    sget-object v1, Lcom/android/systemui/scene/shared/model/SceneFamilies;->NotifShade:Lcom/android/compose/animation/scene/SceneKey;

    sget-object v2, Lcom/android/systemui/scene/shared/model/TransitionKeys;->INSTANCE:Lcom/android/systemui/scene/shared/model/TransitionKeys;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/scene/shared/model/TransitionKeys;->ToSplitShade:Lcom/android/compose/animation/scene/TransitionKey;

    instance-of v3, v0, Lcom/android/systemui/shade/shared/model/ShadeMode$Split;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    new-instance v6, Lcom/android/compose/animation/scene/UserActionResult;

    invoke-direct {v6, v1, v5}, Lcom/android/compose/animation/scene/UserActionResult;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V

    sget-object v1, Lcom/android/compose/animation/scene/Swipe;->Companion:Lcom/android/compose/animation/scene/Swipe$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/compose/animation/scene/Swipe;->Left:Lcom/android/compose/animation/scene/Swipe;

    new-instance v5, Lcom/android/compose/animation/scene/UserActionResult;

    sget-object v7, Lcom/android/systemui/scene/shared/model/Scenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    const/4 v10, 0x2

    invoke-direct {v5, v7, v4, v10, v4}, Lcom/android/compose/animation/scene/UserActionResult;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/compose/animation/scene/Swipe;->Up:Lcom/android/compose/animation/scene/Swipe;

    if-eqz p0, :cond_2

    sget-object v5, Lcom/android/systemui/scene/shared/model/Scenes;->Gone:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/android/systemui/scene/shared/model/Scenes;->Bouncer:Lcom/android/compose/animation/scene/SceneKey;

    :goto_2
    invoke-interface {v1, v5}, Lcom/android/compose/animation/scene/UserAction;->to(Lcom/android/compose/animation/scene/SceneKey;)Lkotlin/Pair;

    move-result-object v1

    sget-object v9, Lcom/android/compose/animation/scene/SwipeDirection;->Down:Lcom/android/compose/animation/scene/SwipeDirection;

    sget-object v5, Lcom/android/compose/animation/scene/Edge;->Top:Lcom/android/compose/animation/scene/Edge;

    new-instance v8, Lcom/android/compose/animation/scene/Swipe;

    const/4 v13, 0x1

    invoke-direct {v8, v9, v13, v5}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;)V

    instance-of v0, v0, Lcom/android/systemui/shade/shared/model/ShadeMode$Single;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/compose/animation/scene/UserActionResult;

    sget-object v11, Lcom/android/systemui/scene/shared/model/Scenes;->QuickSettings:Lcom/android/compose/animation/scene/SceneKey;

    invoke-direct {v0, v11, v4, v10, v4}, Lcom/android/compose/animation/scene/UserActionResult;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_3
    move-object v0, v6

    :goto_3
    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/compose/animation/scene/Swipe;

    invoke-direct {v0, v9, v10, v5}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;)V

    sget-object v5, Lcom/android/systemui/scene/shared/model/SceneFamilies;->QuickSettings:Lcom/android/compose/animation/scene/SceneKey;

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, v4

    :goto_4
    new-instance v3, Lcom/android/compose/animation/scene/UserActionResult;

    invoke-direct {v3, v5, v2}, Lcom/android/compose/animation/scene/UserActionResult;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/compose/animation/scene/Swipe;

    const/4 v14, 0x0

    const/4 v3, 0x4

    const/16 v16, 0x0

    move-object v11, v0

    move-object v12, v9

    move-object v4, v15

    move v15, v3

    invoke-direct/range {v11 .. v16}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v0, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/compose/animation/scene/Swipe;

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v11, v7

    move-object v12, v1

    move-object v13, v4

    move-object v14, v2

    move-object/from16 v16, v3

    filled-new-array/range {v11 .. v16}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/kotlin/MapUtilsKt;->filterValuesNotNull(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
