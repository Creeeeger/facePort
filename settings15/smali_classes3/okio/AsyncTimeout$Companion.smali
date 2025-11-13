.class public abstract Lokio/AsyncTimeout$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static awaitTimeout$okio()Lokio/AsyncTimeout;
    .locals 9

    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    const-class v2, Lokio/AsyncTimeout;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sget-wide v5, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/Object;->wait(J)V

    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sget-wide v2, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    cmp-long v0, v5, v2

    if-ltz v0, :cond_0

    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    :cond_0
    return-object v1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v5, v0, Lokio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    if-lez v3, :cond_3

    const-wide/32 v3, 0xf4240

    div-long v7, v5, v3

    mul-long/2addr v3, v7

    sub-long/2addr v5, v3

    long-to-int v0, v5

    invoke-virtual {v2, v7, v8, v0}, Ljava/lang/Object;->wait(JI)V

    return-object v1

    :cond_3
    sget-object v2, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-eqz v2, :cond_4

    iget-object v3, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v3, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v1, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    return-object v0

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method
