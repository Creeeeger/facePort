.class public final Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lio/reactivex/internal/fuseable/SimpleQueue;


# static fields
.field public static final HAS_NEXT:Ljava/lang/Object;

.field public static final MAX_LOOK_AHEAD_STEP:I


# instance fields
.field public consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field public final consumerMask:I

.field public producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field public producerLookAhead:J

.field public final producerLookAheadStep:I

.field public final producerMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v1, 0x8

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    shl-int p1, v1, p1

    add-int/lit8 v1, p1, -0x1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v3, p1, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v2, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput v1, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerMask:I

    div-int/lit8 v3, p1, 0x4

    sget v4, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAheadStep:I

    iput-object v2, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput v1, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerMask:I

    add-int/lit8 p1, p1, -0x2

    int-to-long v1, p1

    iput-wide v1, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAhead:J

    const-wide/16 p0, 0x0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final isEmpty()Z
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object p0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 13

    if-eqz p1, :cond_3

    iget-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object v1, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    long-to-int v3, v1

    iget v4, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerMask:I

    and-int/2addr v3, v4

    iget-wide v5, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAhead:J

    cmp-long v5, v1, v5

    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    if-gez v5, :cond_0

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    add-long/2addr v1, v6

    iget-object p0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return v8

    :cond_0
    iget v5, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAheadStep:I

    int-to-long v9, v5

    add-long/2addr v9, v1

    long-to-int v5, v9

    and-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    sub-long/2addr v9, v6

    iput-wide v9, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAhead:J

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    add-long/2addr v1, v6

    iget-object p0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return v8

    :cond_1
    add-long v9, v1, v6

    long-to-int v5, v9

    and-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return v8

    :cond_2
    int-to-long v4, v4

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v11

    new-instance v12, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v12, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v12, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-long/2addr v1, v4

    sub-long/2addr v1, v6

    iput-wide v1, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAhead:J

    invoke-virtual {v12, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result p1

    sub-int/2addr p1, v8

    invoke-virtual {v0, p1, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    sget-object p1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return v8

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null is not a valid element"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object v1, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    long-to-int v3, v1

    iget v4, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerMask:I

    and-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-wide/16 v8, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    invoke-virtual {v0, v3, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    add-long/2addr v1, v8

    iget-object p0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-object v5

    :cond_1
    if-eqz v6, :cond_3

    add-int/2addr v4, v7

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v4, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    iput-object v5, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v5, v3, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    add-long/2addr v1, v8

    iget-object p0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    :cond_2
    return-object v0

    :cond_3
    return-object v10
.end method
