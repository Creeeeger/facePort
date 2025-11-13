.class public final Lcom/android/systemui/screenshot/ActionExecutor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final finishDismiss:Lkotlin/jvm/functions/Function0;

.field public final intentExecutor:Lcom/android/systemui/screenshot/ActionIntentExecutor;

.field public isPendingSharedTransition:Z

.field public final viewProxy:Lcom/android/systemui/screenshot/ScreenshotViewProxy;

.field public final window:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/ActionExecutor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/ActionExecutor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/screenshot/ActionIntentExecutor;Lkotlinx/coroutines/CoroutineScope;Landroid/view/Window;Lcom/android/systemui/screenshot/ScreenshotViewProxy;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/screenshot/ActionIntentExecutor;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroid/view/Window;",
            "Lcom/android/systemui/screenshot/ScreenshotViewProxy;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ActionExecutor;->intentExecutor:Lcom/android/systemui/screenshot/ActionIntentExecutor;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ActionExecutor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ActionExecutor;->window:Landroid/view/Window;

    iput-object p4, p0, Lcom/android/systemui/screenshot/ActionExecutor;->viewProxy:Lcom/android/systemui/screenshot/ScreenshotViewProxy;

    iput-object p5, p0, Lcom/android/systemui/screenshot/ActionExecutor;->finishDismiss:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final startSharedTransition(Landroid/content/Intent;Landroid/os/UserHandle;Z)V
    .locals 12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ActionExecutor;->isPendingSharedTransition:Z

    iget-object v1, p0, Lcom/android/systemui/screenshot/ActionExecutor;->viewProxy:Lcom/android/systemui/screenshot/ScreenshotViewProxy;

    invoke-interface {v1}, Lcom/android/systemui/screenshot/ScreenshotViewProxy;->fadeForSharedTransition()V

    new-instance v2, Lcom/android/systemui/screenshot/ActionExecutor$createWindowTransition$callbacks$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/ActionExecutor$createWindowTransition$callbacks$1;-><init>(Lcom/android/systemui/screenshot/ActionExecutor;)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/ActionExecutor;->window:Landroid/view/Window;

    new-array v0, v0, [Landroid/util/Pair;

    invoke-interface {v1}, Lcom/android/systemui/screenshot/ScreenshotViewProxy;->getScreenshotPreview()Landroid/view/View;

    move-result-object v1

    const-string/jumbo v4, "screenshot_preview_image"

    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x0

    invoke-static {v3, v2, v1, v0}, Landroid/app/ActivityOptions;->startSharedElementAnimation(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v11

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v2, Lcom/android/systemui/screenshot/ActionExecutor$startSharedTransition$$inlined$launch$default$1;

    const/4 v6, 0x0

    const-string v5, "ActionExecutor#launchIntentAsync"

    move-object v4, v2

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move v10, p3

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/screenshot/ActionExecutor$startSharedTransition$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/screenshot/ActionExecutor;Landroid/content/Intent;Landroid/os/UserHandle;ZLandroid/util/Pair;)V

    const/4 p1, 0x2

    iget-object p0, p0, Lcom/android/systemui/screenshot/ActionExecutor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v0, v1, v2, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
