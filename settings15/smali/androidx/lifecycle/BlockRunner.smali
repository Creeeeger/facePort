.class public final Landroidx/lifecycle/BlockRunner;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final block:Lkotlin/jvm/functions/Function2;

.field public cancellationJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final liveData:Landroidx/lifecycle/CoroutineLiveData;

.field public final onDone:Lkotlin/jvm/functions/Function0;

.field public runningJob:Lkotlinx/coroutines/Job;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final timeoutInMs:J


# direct methods
.method public constructor <init>(Landroidx/lifecycle/CoroutineLiveData;Lkotlin/jvm/functions/Function2;JLkotlinx/coroutines/internal/ContextScope;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/BlockRunner;->liveData:Landroidx/lifecycle/CoroutineLiveData;

    iput-object p2, p0, Landroidx/lifecycle/BlockRunner;->block:Lkotlin/jvm/functions/Function2;

    iput-wide p3, p0, Landroidx/lifecycle/BlockRunner;->timeoutInMs:J

    iput-object p5, p0, Landroidx/lifecycle/BlockRunner;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Landroidx/lifecycle/BlockRunner;->onDone:Lkotlin/jvm/functions/Function0;

    return-void
.end method
