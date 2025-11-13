.class public final Lokio/ForwardingTimeout;
.super Lokio/Timeout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public delegate:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokio/Timeout;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public final clearDeadline()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public final clearTimeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public final deadlineNanoTime()J
    .locals 2

    iget-object p0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final deadlineNanoTime(J)Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {p0, p1, p2}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public final hasDeadline()Z
    .locals 0

    iget-object p0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result p0

    return p0
.end method

.method public final throwIfReached()V
    .locals 0

    iget-object p0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->throwIfReached()V

    return-void
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 1

    const-string/jumbo v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {p0, p1, p2, p3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method
