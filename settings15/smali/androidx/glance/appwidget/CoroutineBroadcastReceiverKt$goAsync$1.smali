.class final Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;Landroid/content/BroadcastReceiver$PendingResult;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->$block:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;

    iget-object v1, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->$block:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {v0, v1, v2, p0, p2}, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;Landroid/content/BroadcastReceiver$PendingResult;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->label:I

    const/4 v2, 0x0

    const-string v3, "Error thrown when trying to finish broadcast"

    const-string v4, "Cancel parent coroutine scope"

    const/4 v5, 0x1

    const-string v6, "CoroutineBroadcastReceiver"

    const-string v7, "Finish broadcast "

    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    iget-object v1, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->$block:Lkotlin/jvm/functions/Function2;

    iput v5, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    :try_start_2
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    :goto_1
    invoke-static {p1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_7

    :goto_2
    :try_start_3
    const-string v0, "BroadcastReceiver execution failed"

    invoke-static {v6, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :goto_3
    :try_start_5
    iget-object p1, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-static {v6, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_2
    move-exception p1

    goto :goto_6

    :goto_5
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_6
    :try_start_7
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_7
    :try_start_8
    iget-object v0, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt$goAsync$1;->$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_8

    :catch_2
    move-exception p0

    invoke-static {v6, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_8
    throw p1
.end method
