.class public final Lcom/android/systemui/qs/ui/composable/QuickSettingsScene;
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

.field public final notificationsPlaceholderViewModel:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationsPlaceholderViewModel;

.field public final shadeSession:Lcom/android/systemui/scene/session/ui/composable/SaveableSession;

.field public final statusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

.field public final tintedIconManagerFactory:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;

.field public final viewModel:Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/scene/session/ui/composable/SaveableSession;Ldagger/Lazy;Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel;Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationsPlaceholderViewModel;Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;Lcom/android/systemui/battery/BatteryMeterViewController$Factory;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;Lcom/android/systemui/media/controls/ui/view/MediaHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/scene/session/ui/composable/SaveableSession;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel;",
            "Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationsPlaceholderViewModel;",
            "Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;",
            "Lcom/android/systemui/battery/BatteryMeterViewController$Factory;",
            "Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;",
            "Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;",
            "Lcom/android/systemui/media/controls/ui/view/MediaHost;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p2, Lcom/android/systemui/scene/shared/model/Scenes;->QuickSettings:Lcom/android/compose/animation/scene/SceneKey;

    iput-object p2, p0, Lcom/android/systemui/qs/ui/composable/QuickSettingsScene;->key:Lcom/android/compose/animation/scene/SceneKey;

    iget-object p2, p4, Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p4, 0x3

    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p4

    invoke-static {p2, p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/ui/composable/QuickSettingsScene;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final getDestinationScenes()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/ui/composable/QuickSettingsScene;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getKey()Lcom/android/compose/animation/scene/SceneKey;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/ui/composable/QuickSettingsScene;->key:Lcom/android/compose/animation/scene/SceneKey;

    return-object p0
.end method
