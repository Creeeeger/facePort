.class final Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$releaseScreenshotSound$2;
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
.field label:I

.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$releaseScreenshotSound$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$releaseScreenshotSound$2;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$releaseScreenshotSound$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$releaseScreenshotSound$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$releaseScreenshotSound$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$releaseScreenshotSound$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$releaseScreenshotSound$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$releaseScreenshotSound$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object p1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v3, p1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v4

    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$releaseScreenshotSound$2$1;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$releaseScreenshotSound$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;

    invoke-direct {p1, v1, v2}, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$releaseScreenshotSound$2$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$releaseScreenshotSound$2;->label:I

    invoke-static {v4, v5}, Lkotlinx/coroutines/DelayKt;->toDelayMillis-LRDsOJo(J)J

    move-result-wide v3

    invoke-static {v3, v4, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$releaseScreenshotSound$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;->player:Lkotlinx/coroutines/DeferredCoroutine;

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    const-string p0, "ScreenshotSoundControllerImpl"

    const-string v0, "Error releasing shutter sound"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    :cond_2
    :goto_1
    return-object p1
.end method
