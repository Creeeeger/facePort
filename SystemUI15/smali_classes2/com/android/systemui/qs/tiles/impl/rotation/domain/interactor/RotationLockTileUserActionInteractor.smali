.class public final Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileUserActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;


# instance fields
.field public final controller:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field public final qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileUserActionInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileUserActionInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileUserActionInteractor;->controller:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    return-void
.end method


# virtual methods
.method public final handleInput(Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    instance-of v0, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->data:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/qs/tiles/impl/rotation/domain/model/RotationLockTileModel;

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/impl/rotation/domain/model/RotationLockTileModel;->isRotationLocked:Z

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "QSTileUserActionInteractor#handleInput"

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileUserActionInteractor;->controller:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    iget-object p1, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;->expandable:Lcom/android/systemui/animation/Expandable;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.AUTO_ROTATE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;->handle$default(Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Lcom/android/systemui/animation/Expandable;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
