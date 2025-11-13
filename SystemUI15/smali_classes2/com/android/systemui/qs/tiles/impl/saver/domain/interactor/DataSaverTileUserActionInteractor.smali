.class public final Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;


# instance fields
.field public final backgroundContext:Lkotlin/coroutines/CoroutineContext;

.field public final context:Landroid/content/Context;

.field public final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final dataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field public final dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

.field public final sharedPreferences:Landroid/content/SharedPreferences;

.field public final systemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcom/android/systemui/statusbar/policy/DataSaverController;Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;Lcom/android/systemui/settings/UserFileManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->backgroundContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->dataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    iput-object p6, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iput-object p7, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->systemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    check-cast p8, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string p2, "data_saver"

    invoke-virtual {p8, p1, p2}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final handleInput(Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    instance-of v1, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/tiles/impl/saver/domain/model/DataSaverTileModel;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/impl/saver/domain/model/DataSaverTileModel;->isEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "data_saver_dialog_shown"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;-><init>(Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_1
    :goto_0
    new-instance p1, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$1;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$1;-><init>(Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;ZLkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->backgroundContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_2
    instance-of p1, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    if-eqz p1, :cond_3

    check-cast v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    iget-object p1, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;->expandable:Lcom/android/systemui/animation/Expandable;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.DATA_SAVER_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;->handle$default(Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Lcom/android/systemui/animation/Expandable;Landroid/content/Intent;)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
