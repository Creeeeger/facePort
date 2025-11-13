.class public final Lcom/android/systemui/notifications/ui/viewmodel/NotificationsShadeSceneViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/compose/animation/scene/Swipe;->Companion:Lcom/android/compose/animation/scene/Swipe$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/compose/animation/scene/Swipe;->Up:Lcom/android/compose/animation/scene/Swipe;

    sget-object v1, Lcom/android/systemui/scene/shared/model/SceneFamilies;->Home:Lcom/android/compose/animation/scene/SceneKey;

    invoke-interface {v0, v1}, Lcom/android/compose/animation/scene/UserAction;->to(Lcom/android/compose/animation/scene/SceneKey;)Lkotlin/Pair;

    move-result-object v0

    sget-object v2, Lcom/android/compose/animation/scene/Back;->INSTANCE:Lcom/android/compose/animation/scene/Back;

    invoke-interface {v2, v1}, Lcom/android/compose/animation/scene/UserAction;->to(Lcom/android/compose/animation/scene/SceneKey;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v0, v1}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/notifications/ui/viewmodel/NotificationsShadeSceneViewModel;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
