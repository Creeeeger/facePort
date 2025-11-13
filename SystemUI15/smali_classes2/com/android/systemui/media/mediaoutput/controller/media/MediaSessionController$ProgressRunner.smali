.class public final Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final callback:Lkotlin/jvm/functions/Function0;

.field public final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public processingJob:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;->callback:Lkotlin/jvm/functions/Function0;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method


# virtual methods
.method public final declared-synchronized state(Z)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;->processingJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner$play$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner$play$2;-><init>(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {p1, v0, v0, v1, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;->processingJob:Lkotlinx/coroutines/Job;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;->processingJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iput-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;->processingJob:Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
