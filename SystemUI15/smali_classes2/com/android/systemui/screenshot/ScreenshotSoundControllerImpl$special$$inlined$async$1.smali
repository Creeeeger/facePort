.class public final Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;
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
.field final synthetic $spanName:Ljava/lang/String;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;->$spanName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;->$spanName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;

    invoke-direct {v0, v1, p2, p0}, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;)V

    iput-object p1, v0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;->label:I

    if-nez v0, :cond_9

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;->$spanName:Ljava/lang/String;

    sget-object v0, Lcom/android/app/tracing/coroutines/TraceContextElementKt;->traceThreadLocal:Lcom/android/app/tracing/coroutines/TraceDataThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/app/tracing/coroutines/TraceData;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "<none>"

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/app/tracing/coroutines/TraceData;->beginSpan(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const-string v3, "Coroutines"

    if-eqz v1, :cond_4

    invoke-static {v2, v3, p1}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackBegin(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;->soundProvider:Lcom/android/systemui/screenshot/ScreenshotSoundProvider;

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotSoundProviderImpl;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotSoundProviderImpl;->getScreenshotSound()Landroid/media/MediaPlayer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "ScreenshotSoundControllerImpl"

    const-string v4, "Screenshot sound initialization failed"

    invoke-static {p1, v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    :goto_2
    if-eqz v1, :cond_5

    invoke-static {v2, v3}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/app/tracing/coroutines/TraceData;->endSpan()V

    :cond_6
    return-object p0

    :goto_3
    if-eqz v1, :cond_7

    invoke-static {v2, v3}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/app/tracing/coroutines/TraceData;->endSpan()V

    :cond_8
    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
