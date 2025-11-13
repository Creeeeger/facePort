.class public final Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final brightnessMirrorViewModel:Lcom/android/systemui/settings/brightness/ui/viewModel/BrightnessMirrorViewModel;

.field public final destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final footerActionsController:Lcom/android/systemui/qs/FooterActionsController;

.field public final footerActionsControllerInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final footerActionsViewModelFactory:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$Factory;

.field public final isClickable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isMediaVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final notifications:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationsPlaceholderViewModel;

.field public final qsSceneAdapter:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter;

.field public final sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

.field public final shadeHeaderViewModel:Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;

.field public final shadeMode:Lkotlinx/coroutines/flow/StateFlow;

.field public final unfoldTransitionInteractor:Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;

.field public final upDestinationSceneKey:Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel$special$$inlined$map$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter;Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationsPlaceholderViewModel;Lcom/android/systemui/settings/brightness/ui/viewModel/BrightnessMirrorViewModel;Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$Factory;Lcom/android/systemui/qs/FooterActionsController;Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p10, p0, Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    check-cast p7, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p3, p7, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p3}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeMode()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p4

    check-cast p2, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object p5, p2, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->isCustomizerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p7, Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel$destinationScenes$1;

    const/4 p8, 0x0

    invoke-direct {p7, p0, p8}, Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel$destinationScenes$1;-><init>(Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance p9, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p9, p4, p5, p7}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p5, 0x3

    invoke-static {p4, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p7

    invoke-interface {p3}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeMode()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p10

    invoke-interface {p10}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Lcom/android/systemui/shade/shared/model/ShadeMode;

    iget-object p2, p2, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->isCustomizerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p10, p2}, Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel;->destinationScenes(Lcom/android/systemui/shade/shared/model/ShadeMode;Z)Lkotlin/collections/builders/MapBuilder;

    move-result-object p2

    invoke-static {p9, p1, p7, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p7, Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel$special$$inlined$map$1;

    invoke-direct {p7, p2}, Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel$isClickable$1;

    invoke-direct {p2, p0, p8}, Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel$isClickable$1;-><init>(Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p7, p2}, Lcom/android/systemui/utils/coroutines/flow/LatestConflatedKt;->flatMapLatestConflated(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel$special$$inlined$map$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p4, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p0

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p1, p0, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {p3}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeMode()Lkotlinx/coroutines/flow/StateFlow;

    iget-object p0, p6, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->hasActiveMediaOrRecommendation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-void
.end method

.method public static destinationScenes(Lcom/android/systemui/shade/shared/model/ShadeMode;Z)Lkotlin/collections/builders/MapBuilder;
    .locals 8

    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v0}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/compose/animation/scene/Swipe;

    sget-object v3, Lcom/android/compose/animation/scene/SwipeDirection;->Up:Lcom/android/compose/animation/scene/SwipeDirection;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v2, Lcom/android/systemui/scene/shared/model/SceneFamilies;->Home:Lcom/android/compose/animation/scene/SceneKey;

    sget-object v3, Lcom/android/systemui/scene/shared/model/TransitionKeys;->INSTANCE:Lcom/android/systemui/scene/shared/model/TransitionKeys;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/scene/shared/model/TransitionKeys;->ToSplitShade:Lcom/android/compose/animation/scene/TransitionKey;

    instance-of v4, p0, Lcom/android/systemui/shade/shared/model/ShadeMode$Split;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    new-instance v4, Lcom/android/compose/animation/scene/UserActionResult;

    invoke-direct {v4, v2, v3}, Lcom/android/compose/animation/scene/UserActionResult;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V

    invoke-virtual {v0, p1, v4}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of p0, p0, Lcom/android/systemui/shade/shared/model/ShadeMode$Single;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/android/compose/animation/scene/Swipe;

    sget-object v3, Lcom/android/compose/animation/scene/SwipeDirection;->Down:Lcom/android/compose/animation/scene/SwipeDirection;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lcom/android/compose/animation/scene/UserActionResult;

    sget-object v2, Lcom/android/systemui/scene/shared/model/Scenes;->QuickSettings:Lcom/android/compose/animation/scene/SceneKey;

    const/4 v3, 0x2

    invoke-direct {p1, v2, v1, v3, v1}, Lcom/android/compose/animation/scene/UserActionResult;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, p1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    move-result-object p0

    return-object p0
.end method
