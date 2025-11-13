.class final Lcom/android/settings/sim/receivers/SimSlotChangeService$onStartJob$1;
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
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $params:Landroid/app/job/JobParameters;

.field label:I

.field final synthetic this$0:Lcom/android/settings/sim/receivers/SimSlotChangeService;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/receivers/SimSlotChangeService;Landroid/app/job/JobParameters;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeService$onStartJob$1;->this$0:Lcom/android/settings/sim/receivers/SimSlotChangeService;

    iput-object p2, p0, Lcom/android/settings/sim/receivers/SimSlotChangeService$onStartJob$1;->$params:Landroid/app/job/JobParameters;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settings/sim/receivers/SimSlotChangeService$onStartJob$1;

    iget-object v0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeService$onStartJob$1;->this$0:Lcom/android/settings/sim/receivers/SimSlotChangeService;

    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeService$onStartJob$1;->$params:Landroid/app/job/JobParameters;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settings/sim/receivers/SimSlotChangeService$onStartJob$1;-><init>(Lcom/android/settings/sim/receivers/SimSlotChangeService;Landroid/app/job/JobParameters;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/sim/receivers/SimSlotChangeService$onStartJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/sim/receivers/SimSlotChangeService$onStartJob$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeService$onStartJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "SimSlotChangeService"

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeService$onStartJob$1;->label:I

    if-nez v1, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_0
    const-string p1, "runOnBackgroundThread"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeService$onStartJob$1;->this$0:Lcom/android/settings/sim/receivers/SimSlotChangeService;

    invoke-static {p1}, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->runOnBackgroundThread(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "Exception running job"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeService$onStartJob$1;->this$0:Lcom/android/settings/sim/receivers/SimSlotChangeService;

    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeService$onStartJob$1;->$params:Landroid/app/job/JobParameters;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
