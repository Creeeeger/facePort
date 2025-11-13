.class final Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1;
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
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Landroid/os/Messenger;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1$clientMessenger$1;

    invoke-direct {v5, p1, v1, v4}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1$clientMessenger$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Ljava/util/Map;Landroid/os/Looper;)V

    invoke-direct {v3, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/4 v1, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    iget-object v4, v4, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;->service:Landroid/os/Messenger;

    if-eqz v4, :cond_3

    :try_start_0
    sget v5, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v4, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget v4, Lkotlin/Result;->$r8$clinit:I

    new-instance v4, Lkotlin/Result$Failure;

    invoke-direct {v4, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v4

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_3
    new-instance v1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1$3;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1$3;-><init>(Landroid/os/Messenger;Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;)V

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
