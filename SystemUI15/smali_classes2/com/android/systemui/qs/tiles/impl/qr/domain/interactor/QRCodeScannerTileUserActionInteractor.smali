.class public final Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileUserActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;


# instance fields
.field public final qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    return-void
.end method


# virtual methods
.method public final handleInput(Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    instance-of v0, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->data:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel;

    instance-of v1, v0, Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel$Available;

    if-eqz v1, :cond_1

    check-cast p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;->expandable:Lcom/android/systemui/animation/Expandable;

    check-cast p1, Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel$Available;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel$Available;->intent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/qr/domain/interactor/QRCodeScannerTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    check-cast p0, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandlerImpl;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/systemui/animation/Expandable;->activityTransitionController(Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandlerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0, p2, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Z)V

    goto :goto_1

    :cond_1
    instance-of p0, v0, Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel$TemporarilyUnavailable;

    goto :goto_1

    :cond_2
    instance-of p0, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
