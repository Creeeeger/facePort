.class public final Landroidx/room/InvalidationTracker$WeakObserver;
.super Landroidx/room/InvalidationTracker$Observer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final delegateRef:Ljava/lang/ref/WeakReference;

.field public final tracker:Landroidx/room/InvalidationTracker;


# direct methods
.method public constructor <init>(Landroidx/room/InvalidationTracker;Lkotlinx/coroutines/internal/ContextScope;Landroidx/room/InvalidationTracker$Observer;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p3, Landroidx/room/InvalidationTracker$Observer;->tables:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/InvalidationTracker$WeakObserver;->tracker:Landroidx/room/InvalidationTracker;

    iput-object p2, p0, Landroidx/room/InvalidationTracker$WeakObserver;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/room/InvalidationTracker$WeakObserver;->delegateRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onInvalidated(Ljava/util/Set;)V
    .locals 2

    const-string/jumbo v0, "tables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/InvalidationTracker$WeakObserver;->delegateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/InvalidationTracker$Observer;

    if-nez v0, :cond_0

    new-instance p1, Landroidx/room/InvalidationTracker$WeakObserver$onInvalidated$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/room/InvalidationTracker$WeakObserver$onInvalidated$1;-><init>(Landroidx/room/InvalidationTracker$WeakObserver;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object p0, p0, Landroidx/room/InvalidationTracker$WeakObserver;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v0, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    :goto_0
    return-void
.end method
