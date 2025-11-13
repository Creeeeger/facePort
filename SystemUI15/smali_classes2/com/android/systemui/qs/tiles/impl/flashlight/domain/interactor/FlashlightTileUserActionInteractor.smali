.class public final Lcom/android/systemui/qs/tiles/impl/flashlight/domain/interactor/FlashlightTileUserActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;


# instance fields
.field public final flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/interactor/FlashlightTileUserActionInteractor;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-void
.end method


# virtual methods
.method public final handleInput(Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    instance-of p2, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->data:Ljava/lang/Object;

    instance-of p2, p1, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightAvailable;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightAvailable;

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightAvailable;->isEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/interactor/FlashlightTileUserActionInteractor;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
