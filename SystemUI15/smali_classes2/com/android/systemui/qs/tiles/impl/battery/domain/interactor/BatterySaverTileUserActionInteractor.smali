.class public final Lcom/android/systemui/qs/tiles/impl/battery/domain/interactor/BatterySaverTileUserActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;


# instance fields
.field public final batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/battery/domain/interactor/BatterySaverTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/battery/domain/interactor/BatterySaverTileUserActionInteractor;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-void
.end method


# virtual methods
.method public final handleInput(Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    instance-of v0, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    if-eqz v0, :cond_0

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->data:Ljava/lang/Object;

    check-cast p2, Lcom/android/systemui/qs/tiles/impl/battery/domain/model/BatterySaverTileModel;

    invoke-interface {p2}, Lcom/android/systemui/qs/tiles/impl/battery/domain/model/BatterySaverTileModel;->isPluggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/android/systemui/qs/tiles/impl/battery/domain/model/BatterySaverTileModel;->isPowerSaving()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    invoke-interface {p1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;->getExpandable()Lcom/android/systemui/animation/Expandable;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/battery/domain/interactor/BatterySaverTileUserActionInteractor;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->setPowerSaveMode(ZLcom/android/systemui/animation/Expandable;)V

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    iget-object p1, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;->expandable:Lcom/android/systemui/animation/Expandable;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.BATTERY_SAVER_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/battery/domain/interactor/BatterySaverTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;->handle$default(Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Lcom/android/systemui/animation/Expandable;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
