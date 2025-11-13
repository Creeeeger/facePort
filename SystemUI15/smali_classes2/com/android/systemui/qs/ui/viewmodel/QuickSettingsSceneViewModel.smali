.class public final Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final brightnessMirrorViewModel:Lcom/android/systemui/settings/brightness/ui/viewModel/BrightnessMirrorViewModel;

.field public final destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final footerActionsController:Lcom/android/systemui/qs/FooterActionsController;

.field public final footerActionsControllerInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final footerActionsViewModelFactory:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$Factory;

.field public final isMediaVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final notifications:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationsPlaceholderViewModel;

.field public final qsSceneAdapter:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter;

.field public final shadeHeaderViewModel:Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/settings/brightness/ui/viewModel/BrightnessMirrorViewModel;Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter;Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationsPlaceholderViewModel;Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$Factory;Lcom/android/systemui/qs/FooterActionsController;Lcom/android/systemui/scene/domain/interactor/SceneBackInteractor;Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p8, Lcom/android/systemui/scene/domain/interactor/SceneBackInteractor;->backScene:Lcom/android/systemui/scene/domain/interactor/SceneBackInteractor$special$$inlined$map$1;

    new-instance p3, Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel$special$$inlined$filter$1;

    invoke-direct {p3, p2}, Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel$special$$inlined$map$1;

    invoke-direct {p2, p3}, Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p5, 0x3

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p6

    sget-object p7, Lcom/android/systemui/scene/shared/model/Scenes;->Shade:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p2, p1, p6, p7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    check-cast p4, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object p6, p4, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->isCustomizerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p7, Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel$destinationScenes$1;

    invoke-direct {p7, p0}, Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel$destinationScenes$1;-><init>(Ljava/lang/Object;)V

    new-instance p8, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p8, p6, p2, p7}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    iget-object p4, p4, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->isCustomizerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p4, p4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {p2, p4}, Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel;->destinationScenes(Lcom/android/compose/animation/scene/SceneKey;Z)Lkotlin/collections/builders/MapBuilder;

    move-result-object p2

    invoke-static {p8, p1, p3, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p9, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->hasAnyMediaOrRecommendation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-void
.end method

.method public static destinationScenes(Lcom/android/compose/animation/scene/SceneKey;Z)Lkotlin/collections/builders/MapBuilder;
    .locals 11

    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v0}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    if-nez p1, :cond_2

    sget-object p1, Lcom/android/compose/animation/scene/Back;->INSTANCE:Lcom/android/compose/animation/scene/Back;

    new-instance v1, Lcom/android/compose/animation/scene/UserActionResult;

    if-nez p0, :cond_0

    sget-object v2, Lcom/android/systemui/scene/shared/model/Scenes;->Shade:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/android/compose/animation/scene/UserActionResult;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/compose/animation/scene/Swipe;

    sget-object v1, Lcom/android/compose/animation/scene/SwipeDirection;->Up:Lcom/android/compose/animation/scene/SwipeDirection;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, p1

    move-object v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/android/compose/animation/scene/UserActionResult;

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/scene/shared/model/Scenes;->Shade:Lcom/android/compose/animation/scene/SceneKey;

    :cond_1
    invoke-direct {v2, p0, v3, v4, v3}, Lcom/android/compose/animation/scene/UserActionResult;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/compose/animation/scene/Edge;->Bottom:Lcom/android/compose/animation/scene/Edge;

    new-instance p0, Lcom/android/compose/animation/scene/Swipe;

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x2

    move-object v5, p0

    move-object v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lcom/android/compose/animation/scene/UserActionResult;

    sget-object v1, Lcom/android/systemui/scene/shared/model/SceneFamilies;->Home:Lcom/android/compose/animation/scene/SceneKey;

    invoke-direct {p1, v1, v3, v4, v3}, Lcom/android/compose/animation/scene/UserActionResult;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, p1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    move-result-object p0

    return-object p0
.end method
