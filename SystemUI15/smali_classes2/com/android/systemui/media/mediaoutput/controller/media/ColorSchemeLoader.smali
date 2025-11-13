.class public final Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public processingJob:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method
