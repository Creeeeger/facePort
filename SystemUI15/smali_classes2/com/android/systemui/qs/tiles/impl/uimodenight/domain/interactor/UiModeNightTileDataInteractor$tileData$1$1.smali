.class final Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $batteryCallback:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$batteryCallback$1;

.field final synthetic $configurationCallback:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$configurationCallback$1;

.field final synthetic $locationCallback:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$locationCallback$1;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$configurationCallback$1;Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$batteryCallback$1;Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$locationCallback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$1;->$configurationCallback:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$configurationCallback$1;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$1;->$batteryCallback:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$batteryCallback$1;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$1;->$locationCallback:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$locationCallback$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$1;->$configurationCallback:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$configurationCallback$1;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$1;->$batteryCallback:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$batteryCallback$1;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->locationController:Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$1;->$locationCallback:Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1$locationCallback$1;

    check-cast v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
