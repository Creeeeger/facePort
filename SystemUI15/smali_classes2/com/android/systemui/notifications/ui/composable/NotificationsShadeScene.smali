.class public final Lcom/android/systemui/notifications/ui/composable/NotificationsShadeScene;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/scene/ui/composable/ComposableScene;


# instance fields
.field public final batteryMeterViewControllerFactory:Lcom/android/systemui/battery/BatteryMeterViewController$Factory;

.field public final destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final key:Lcom/android/compose/animation/scene/SceneKey;

.field public final lockscreenContent:Ldagger/Lazy;

.field public final notificationsPlaceholderViewModel:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationsPlaceholderViewModel;

.field public final overlayShadeViewModel:Lcom/android/systemui/shade/ui/viewmodel/OverlayShadeViewModel;

.field public final shadeHeaderViewModel:Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;

.field public final shadeSession:Lcom/android/systemui/scene/session/ui/composable/SaveableSession;

.field public final stackScrollView:Ldagger/Lazy;

.field public final statusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

.field public final tintedIconManagerFactory:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/notifications/ui/viewmodel/NotificationsShadeSceneViewModel;Lcom/android/systemui/shade/ui/viewmodel/OverlayShadeViewModel;Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationsPlaceholderViewModel;Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;Lcom/android/systemui/battery/BatteryMeterViewController$Factory;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Lcom/android/systemui/scene/session/ui/composable/SaveableSession;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/notifications/ui/viewmodel/NotificationsShadeSceneViewModel;",
            "Lcom/android/systemui/shade/ui/viewmodel/OverlayShadeViewModel;",
            "Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;",
            "Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationsPlaceholderViewModel;",
            "Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;",
            "Lcom/android/systemui/battery/BatteryMeterViewController$Factory;",
            "Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;",
            "Lcom/android/systemui/scene/session/ui/composable/SaveableSession;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p2, Lcom/android/systemui/scene/shared/model/Scenes;->NotificationsShade:Lcom/android/compose/animation/scene/SceneKey;

    iput-object p2, p0, Lcom/android/systemui/notifications/ui/composable/NotificationsShadeScene;->key:Lcom/android/compose/animation/scene/SceneKey;

    iget-object p1, p1, Lcom/android/systemui/notifications/ui/viewmodel/NotificationsShadeSceneViewModel;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/notifications/ui/composable/NotificationsShadeScene;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final getDestinationScenes()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/notifications/ui/composable/NotificationsShadeScene;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getKey()Lcom/android/compose/animation/scene/SceneKey;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/notifications/ui/composable/NotificationsShadeScene;->key:Lcom/android/compose/animation/scene/SceneKey;

    return-object p0
.end method
