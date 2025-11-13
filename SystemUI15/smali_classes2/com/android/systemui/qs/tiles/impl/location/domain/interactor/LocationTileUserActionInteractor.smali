.class public final Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final keyguardController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final locationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field public final qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;->locationController:Lcom/android/systemui/statusbar/policy/LocationController;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p6, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;->keyguardController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-void
.end method


# virtual methods
.method public final handleInput(Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    instance-of v1, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->data:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/qs/tiles/impl/location/domain/model/LocationTileModel;

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/impl/location/domain/model/LocationTileModel;->isEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;->keyguardController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_0

    new-instance p2, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor$handleInput$2$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor$handleInput$2$1;-><init>(Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor$handleInput$2$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor$handleInput$2$2;-><init>(Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;ZLkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;->handle$default(Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Lcom/android/systemui/animation/Expandable;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
