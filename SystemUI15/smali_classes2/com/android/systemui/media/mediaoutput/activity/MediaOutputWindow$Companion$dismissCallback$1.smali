.class final Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1;
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
.field final synthetic $this_dismissCallback:Landroid/content/Context;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1;->$this_dismissCallback:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1;->$this_dismissCallback:Landroid/content/Context;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    new-instance v3, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$activityControllerListener$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$activityControllerListener$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1;->$this_dismissCallback:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.samsung.android.mdx.quickboard.PHONE_STATE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.samsung.android.launcher.TASKBAR_PERFORMED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v6, 0x2

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1;->$this_dismissCallback:Landroid/content/Context;

    const-class v5, Landroid/app/ActivityManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Landroid/app/ActivityManager;->semRegisterActivityControllerListener(Landroid/app/ActivityManager$SemActivityControllerListener;)V

    :cond_2
    new-instance v5, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$2;

    iget-object v6, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1;->$this_dismissCallback:Landroid/content/Context;

    invoke-direct {v5, v6, v1, v4, v3}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$2;-><init>(Landroid/content/Context;Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;Landroid/app/ActivityManager;Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$activityControllerListener$1;)V

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1;->label:I

    invoke-static {p1, v5, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
