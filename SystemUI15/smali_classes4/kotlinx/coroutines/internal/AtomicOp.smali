.class public abstract Lkotlinx/coroutines/internal/AtomicOp;
.super Lkotlinx/coroutines/internal/OpDescriptor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _consensus:Lkotlinx/atomicfu/AtomicRef;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/internal/OpDescriptor;-><init>()V

    sget-object v0, Lkotlinx/coroutines/internal/AtomicKt;->NO_DECISION:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/AtomicOp;->_consensus:Lkotlinx/atomicfu/AtomicRef;

    return-void
.end method


# virtual methods
.method public abstract complete(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public final perform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/AtomicOp;->_consensus:Lkotlinx/atomicfu/AtomicRef;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/internal/AtomicKt;->NO_DECISION:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/AtomicOp;->prepare(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    iget-object v2, p0, Lkotlinx/coroutines/internal/AtomicOp;->_consensus:Lkotlinx/atomicfu/AtomicRef;

    iget-object v2, v2, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    if-eq v2, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/internal/AtomicOp;->_consensus:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v2, v1, v0}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/internal/AtomicOp;->_consensus:Lkotlinx/atomicfu/AtomicRef;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/internal/AtomicOp;->complete(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract prepare(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Symbol;
.end method
