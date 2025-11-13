.class public final Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;


# static fields
.field public static final spec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;


# instance fields
.field public final nightDisplayRepository:Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;

.field public final qsLogger:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;

.field public final qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->Companion:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "night"

    invoke-static {v0}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor;->spec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor;->nightDisplayRepository:Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor;->qsLogger:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;

    return-void
.end method


# virtual methods
.method public final handleInput(Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$handleInput$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$handleInput$1;

    iget v1, v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$handleInput$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$handleInput$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$handleInput$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$handleInput$1;-><init>(Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$handleInput$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$handleInput$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$handleInput$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;

    iget-object p0, v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$handleInput$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    instance-of v2, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    if-eqz v2, :cond_6

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->data:Ljava/lang/Object;

    check-cast p2, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel;

    invoke-interface {p2}, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel;->isEnrolledInForcedNightDisplayAutoMode()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->user:Landroid/os/UserHandle;

    iput-object p0, v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$handleInput$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$handleInput$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$handleInput$1;->label:I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor;->nightDisplayRepository:Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;

    invoke-virtual {v2, p2, v0}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->setNightDisplayAutoMode(Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor;->qsLogger:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;

    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->logInfo()V

    :cond_5
    iget-object p2, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->data:Ljava/lang/Object;

    check-cast p2, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel;

    invoke-interface {p2}, Lcom/android/systemui/qs/tiles/impl/night/domain/model/NightDisplayTileModel;->isActivated()Z

    move-result p2

    xor-int/2addr p2, v4

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->user:Landroid/os/UserHandle;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$handleInput$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$handleInput$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor$handleInput$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor;->nightDisplayRepository:Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->setNightDisplayActivated(Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_6
    instance-of p1, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    if-eqz p1, :cond_7

    check-cast p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    iget-object p1, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;->expandable:Lcom/android/systemui/animation/Expandable;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.NIGHT_DISPLAY_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;->handle$default(Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Lcom/android/systemui/animation/Expandable;Landroid/content/Intent;)V

    :cond_7
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
