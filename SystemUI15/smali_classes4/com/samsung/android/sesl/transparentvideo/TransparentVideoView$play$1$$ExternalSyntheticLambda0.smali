.class public final synthetic Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$play$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$play$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$play$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$play$1$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$play$1$1$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
