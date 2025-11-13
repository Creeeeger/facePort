.class public final Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final fontScalingDialogDelegateProvider:Ljavax/inject/Provider;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/animation/DialogTransitionAnimator;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;->fontScalingDialogDelegateProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iput-object p6, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method


# virtual methods
.method public final handleInput(Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    instance-of v1, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;->expandable:Lcom/android/systemui/animation/Expandable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor$handleInput$2$runnable$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor$handleInput$2$runnable$1;-><init>(Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;ZLcom/android/systemui/qs/tiles/base/interactor/QSTileInput;)V

    new-instance p1, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor$handleInput$2$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v1, v0}, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor$handleInput$2$1;-><init>(Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_1
    instance-of p1, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    if-eqz p1, :cond_2

    check-cast v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    iget-object p1, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;->expandable:Lcom/android/systemui/animation/Expandable;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.TEXT_READING_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;->handle$default(Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Lcom/android/systemui/animation/Expandable;Landroid/content/Intent;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
