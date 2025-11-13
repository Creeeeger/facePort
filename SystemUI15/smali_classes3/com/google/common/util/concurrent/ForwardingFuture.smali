.class public abstract Lcom/google/common/util/concurrent/ForwardingFuture;
.super Lcom/google/common/collect/ForwardingObject;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p0

    return p0
.end method

.method public abstract delegate()Lcom/google/common/util/concurrent/ListenableFuture;
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isCancelled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p0

    return p0
.end method

.method public final isDone()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p0

    return p0
.end method
