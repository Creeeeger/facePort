.class final Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $this_with:Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;",
            "Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;->this$0:Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;->$this_with:Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;->this$0:Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;->$this_with:Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;-><init>(Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;->this$0:Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->systemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iget-object v3, v0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->context:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->backgroundContext:Lkotlin/coroutines/CoroutineContext;

    iget-object v5, v0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->dataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lcom/android/systemui/statusbar/policy/DataSaverController;Landroid/content/SharedPreferences;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;->this$0:Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->systemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->context:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;->$this_with:Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;->getExpandable()Lcom/android/systemui/animation/Expandable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/animation/DialogCuj;

    const/16 v2, 0x3a

    const-string/jumbo v3, "start_data_saver"

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/animation/Expandable;->dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor$handleInput$2$2;->this$0:Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/interactor/DataSaverTileUserActionInteractor;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    sget-object v1, Lcom/android/systemui/animation/DialogTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/animation/DialogTransitionAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
