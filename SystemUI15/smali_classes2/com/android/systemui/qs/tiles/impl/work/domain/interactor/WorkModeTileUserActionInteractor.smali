.class public final Lcom/android/systemui/qs/tiles/impl/work/domain/interactor/WorkModeTileUserActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;


# instance fields
.field public final profileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

.field public final qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ManagedProfileController;Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/work/domain/interactor/WorkModeTileUserActionInteractor;->profileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/work/domain/interactor/WorkModeTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    return-void
.end method


# virtual methods
.method public final handleInput(Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    instance-of v0, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of p2, p1, Lcom/android/systemui/qs/tiles/impl/work/domain/model/WorkModeTileModel$HasActiveProfile;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/android/systemui/qs/tiles/impl/work/domain/model/WorkModeTileModel$HasActiveProfile;

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/impl/work/domain/model/WorkModeTileModel$HasActiveProfile;->isEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/work/domain/interactor/WorkModeTileUserActionInteractor;->profileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    check-cast p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->setWorkModeEnabled(Z)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    if-eqz v0, :cond_1

    instance-of p1, p1, Lcom/android/systemui/qs/tiles/impl/work/domain/model/WorkModeTileModel$HasActiveProfile;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    iget-object p1, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;->expandable:Lcom/android/systemui/animation/Expandable;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGED_PROFILE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/work/domain/interactor/WorkModeTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;->handle$default(Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Lcom/android/systemui/animation/Expandable;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
