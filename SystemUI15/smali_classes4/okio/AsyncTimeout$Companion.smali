.class public final Lokio/AsyncTimeout$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lokio/AsyncTimeout$Companion;-><init>()V

    return-void
.end method

.method public static final access$insertIntoQueue(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;JZ)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-nez p0, :cond_0

    new-instance p0, Lokio/AsyncTimeout;

    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    sput-object p0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    new-instance p0, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {p0}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, p2, v2

    if-eqz p0, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    add-long/2addr p2, v0

    iput-wide p2, p1, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    add-long/2addr p2, v0

    iput-wide p2, p1, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_6

    invoke-virtual {p1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lokio/AsyncTimeout;->timeoutAt:J

    :goto_0
    iget-wide p2, p1, Lokio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr p2, v0

    sget-object p0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    iget-object p4, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-eqz p4, :cond_4

    iget-wide v2, p4, Lokio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v2, v0

    cmp-long v2, p2, v2

    if-gez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p0, p4

    goto :goto_1

    :cond_4
    :goto_2
    iput-object p4, p1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object p1, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    sget-object p1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-ne p0, p1, :cond_5

    sget-object p0, Lokio/AsyncTimeout;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static awaitTimeout()Lokio/AsyncTimeout;
    .locals 7

    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-object v0, Lokio/AsyncTimeout;->condition:Ljava/util/concurrent/locks/Condition;

    sget-wide v4, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sget-wide v2, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    :cond_0
    return-object v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, v0, Lokio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    sget-object v0, Lokio/AsyncTimeout;->condition:Ljava/util/concurrent/locks/Condition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    return-object v1

    :cond_2
    sget-object v2, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v3, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v1, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    const/4 v1, 0x2

    iput v1, v0, Lokio/AsyncTimeout;->state:I

    return-object v0
.end method
