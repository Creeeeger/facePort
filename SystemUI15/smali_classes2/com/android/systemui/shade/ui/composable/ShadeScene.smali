.class public final Lcom/android/systemui/shade/ui/composable/ShadeScene;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/scene/ui/composable/ComposableScene;


# instance fields
.field public final batteryMeterViewControllerFactory:Lcom/android/systemui/battery/BatteryMeterViewController$Factory;

.field public final destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final key:Lcom/android/compose/animation/scene/SceneKey;

.field public final mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

.field public final mediaHost:Lcom/android/systemui/media/controls/ui/view/MediaHost;

.field public final notificationStackScrollView:Ldagger/Lazy;

.field public final shadeSession:Lcom/android/systemui/scene/session/ui/composable/SaveableSession;

.field public final statusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

.field public final tintedIconManagerFactory:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;

.field public final viewModel:Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/scene/session/ui/composable/SaveableSession;Ldagger/Lazy;Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel;Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;Lcom/android/systemui/battery/BatteryMeterViewController$Factory;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;Lcom/android/systemui/media/controls/ui/view/MediaHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/scene/session/ui/composable/SaveableSession;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel;",
            "Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;",
            "Lcom/android/systemui/battery/BatteryMeterViewController$Factory;",
            "Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;",
            "Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;",
            "Lcom/android/systemui/media/controls/ui/view/MediaHost;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/android/systemui/scene/shared/model/Scenes;->Shade:Lcom/android/compose/animation/scene/SceneKey;

    iput-object p1, p0, Lcom/android/systemui/shade/ui/composable/ShadeScene;->key:Lcom/android/compose/animation/scene/SceneKey;

    iget-object p1, p3, Lcom/android/systemui/shade/ui/viewmodel/ShadeSceneViewModel;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/shade/ui/composable/ShadeScene;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p8, p0}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->setExpansion(F)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, p8, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget-boolean p2, p1, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x1

    if-nez p0, :cond_0

    iput-boolean p2, p1, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    iget-object p0, p1, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p8, p2}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->init(I)V

    return-void
.end method


# virtual methods
.method public final getDestinationScenes()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/ui/composable/ShadeScene;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getKey()Lcom/android/compose/animation/scene/SceneKey;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/ui/composable/ShadeScene;->key:Lcom/android/compose/animation/scene/SceneKey;

    return-object p0
.end method
