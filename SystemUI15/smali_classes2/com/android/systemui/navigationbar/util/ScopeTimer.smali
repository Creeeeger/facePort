.class public final Lcom/android/systemui/navigationbar/util/ScopeTimer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public job:Lkotlinx/coroutines/Job;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/util/ScopeTimer;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/util/ScopeTimer;->job:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/util/ScopeTimer;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/navigationbar/util/ScopeTimer;->job:Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method public final start(JLkotlin/jvm/functions/Function0;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/util/ScopeTimer;->cancel()V

    new-instance v6, Lcom/android/systemui/navigationbar/util/ScopeTimer$start$1;

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/util/ScopeTimer$start$1;-><init>(JLkotlin/jvm/functions/Function0;Lcom/android/systemui/navigationbar/util/ScopeTimer;Lkotlin/coroutines/Continuation;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/util/ScopeTimer;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-static {p1, p2, p2, v6, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/util/ScopeTimer;->job:Lkotlinx/coroutines/Job;

    return-void
.end method
