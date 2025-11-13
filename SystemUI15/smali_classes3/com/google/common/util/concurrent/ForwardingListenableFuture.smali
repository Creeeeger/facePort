.class public abstract Lcom/google/common/util/concurrent/ForwardingListenableFuture;
.super Lcom/google/common/util/concurrent/ForwardingFuture;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingListenableFuture;->delegate$1()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public bridge synthetic delegate()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingListenableFuture;->delegate$1()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingListenableFuture;->delegate$1()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public abstract delegate$1()Lcom/google/common/util/concurrent/ListenableFuture;
.end method
