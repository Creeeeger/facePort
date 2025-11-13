.class public final Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsShadeSceneViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final brightnessSliderViewModel:Lcom/android/systemui/brightness/ui/viewmodel/BrightnessSliderViewModel;

.field public final destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final editModeViewModel:Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;

.field public final overlayShadeViewModel:Lcom/android/systemui/shade/ui/viewmodel/OverlayShadeViewModel;

.field public final tileGridViewModel:Lcom/android/systemui/qs/panels/ui/viewmodel/TileGridViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ui/viewmodel/OverlayShadeViewModel;Lcom/android/systemui/brightness/ui/viewmodel/BrightnessSliderViewModel;Lcom/android/systemui/qs/panels/ui/viewmodel/TileGridViewModel;Lcom/android/systemui/qs/panels/ui/viewmodel/EditModeViewModel;Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/android/compose/animation/scene/Swipe;->Companion:Lcom/android/compose/animation/scene/Swipe$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/compose/animation/scene/Swipe;->Up:Lcom/android/compose/animation/scene/Swipe;

    sget-object p2, Lcom/android/systemui/scene/shared/model/SceneFamilies;->Home:Lcom/android/compose/animation/scene/SceneKey;

    invoke-interface {p1, p2}, Lcom/android/compose/animation/scene/UserAction;->to(Lcom/android/compose/animation/scene/SceneKey;)Lkotlin/Pair;

    move-result-object p1

    sget-object p3, Lcom/android/compose/animation/scene/Back;->INSTANCE:Lcom/android/compose/animation/scene/Back;

    invoke-interface {p3, p2}, Lcom/android/compose/animation/scene/UserAction;->to(Lcom/android/compose/animation/scene/SceneKey;)Lkotlin/Pair;

    move-result-object p2

    filled-new-array {p1, p2}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsShadeSceneViewModel;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
