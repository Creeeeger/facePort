.class public final Lcom/android/systemui/scene/ui/viewmodel/GoneSceneViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p2, p2, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p2}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeMode()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/scene/ui/viewmodel/GoneSceneViewModel$special$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/scene/ui/viewmodel/GoneSceneViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/scene/ui/viewmodel/GoneSceneViewModel;)V

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeMode()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shade/shared/model/ShadeMode;

    invoke-static {p2}, Lcom/android/systemui/scene/ui/viewmodel/GoneSceneViewModel;->destinationScenes(Lcom/android/systemui/shade/shared/model/ShadeMode;)Lkotlin/collections/builders/MapBuilder;

    move-result-object p2

    invoke-static {v1, p1, v0, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/scene/ui/viewmodel/GoneSceneViewModel;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public static destinationScenes(Lcom/android/systemui/shade/shared/model/ShadeMode;)Lkotlin/collections/builders/MapBuilder;
    .locals 12

    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v0}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    instance-of v1, p0, Lcom/android/systemui/shade/shared/model/ShadeMode$Single;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/android/systemui/shade/shared/model/ShadeMode$Dual;

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/compose/animation/scene/Edge;->Top:Lcom/android/compose/animation/scene/Edge;

    sget-object v3, Lcom/android/compose/animation/scene/SwipeDirection;->Down:Lcom/android/compose/animation/scene/SwipeDirection;

    new-instance v4, Lcom/android/compose/animation/scene/Swipe;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5, v1}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;)V

    new-instance v1, Lcom/android/compose/animation/scene/UserActionResult;

    sget-object v3, Lcom/android/systemui/scene/shared/model/SceneFamilies;->QuickSettings:Lcom/android/compose/animation/scene/SceneKey;

    invoke-direct {v1, v3, v2, v5, v2}, Lcom/android/compose/animation/scene/UserActionResult;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v4, v1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Lcom/android/compose/animation/scene/Swipe;

    sget-object v7, Lcom/android/compose/animation/scene/SwipeDirection;->Down:Lcom/android/compose/animation/scene/SwipeDirection;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v3, Lcom/android/systemui/scene/shared/model/SceneFamilies;->NotifShade:Lcom/android/compose/animation/scene/SceneKey;

    sget-object v4, Lcom/android/systemui/scene/shared/model/TransitionKeys;->INSTANCE:Lcom/android/systemui/scene/shared/model/TransitionKeys;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/scene/shared/model/TransitionKeys;->ToSplitShade:Lcom/android/compose/animation/scene/TransitionKey;

    instance-of p0, p0, Lcom/android/systemui/shade/shared/model/ShadeMode$Split;

    if-eqz p0, :cond_2

    move-object v2, v4

    :cond_2
    new-instance p0, Lcom/android/compose/animation/scene/UserActionResult;

    invoke-direct {p0, v3, v2}, Lcom/android/compose/animation/scene/UserActionResult;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V

    invoke-virtual {v0, v1, p0}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    move-result-object p0

    return-object p0
.end method
