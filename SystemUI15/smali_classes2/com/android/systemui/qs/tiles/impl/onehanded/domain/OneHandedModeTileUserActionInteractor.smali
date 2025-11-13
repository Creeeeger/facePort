.class public final Lcom/android/systemui/qs/tiles/impl/onehanded/domain/OneHandedModeTileUserActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;


# instance fields
.field public final oneHandedModeRepository:Lcom/android/systemui/accessibility/data/repository/OneHandedModeRepository;

.field public final qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/data/repository/OneHandedModeRepository;Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/onehanded/domain/OneHandedModeTileUserActionInteractor;->oneHandedModeRepository:Lcom/android/systemui/accessibility/data/repository/OneHandedModeRepository;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/onehanded/domain/OneHandedModeTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    return-void
.end method


# virtual methods
.method public final handleInput(Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    instance-of v1, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/tiles/impl/onehanded/domain/model/OneHandedModeTileModel;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/impl/onehanded/domain/model/OneHandedModeTileModel;->isEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->user:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/onehanded/domain/OneHandedModeTileUserActionInteractor;->oneHandedModeRepository:Lcom/android/systemui/accessibility/data/repository/OneHandedModeRepository;

    check-cast p0, Lcom/android/systemui/accessibility/data/repository/OneHandedModeRepositoryImpl;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/accessibility/data/repository/OneHandedModeRepositoryImpl;->setIsEnabled(Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_0
    instance-of p1, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    if-eqz p1, :cond_1

    check-cast v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    iget-object p1, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;->expandable:Lcom/android/systemui/animation/Expandable;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.action.ONE_HANDED_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/onehanded/domain/OneHandedModeTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;->handle$default(Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Lcom/android/systemui/animation/Expandable;Landroid/content/Intent;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
