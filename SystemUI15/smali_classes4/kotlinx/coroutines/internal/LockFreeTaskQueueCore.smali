.class public final Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

.field public static final REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;


# instance fields
.field public final _next:Lkotlinx/atomicfu/AtomicRef;

.field public final _state:Lkotlinx/atomicfu/AtomicLong;

.field public final array:Lkotlinx/atomicfu/AtomicArray;

.field public final capacity:I

.field public final mask:I

.field public final singleConsumer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "REMOVE_FROZEN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    iput-boolean p2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next:Lkotlinx/atomicfu/AtomicRef;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->atomic(J)Lkotlinx/atomicfu/AtomicLong;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    new-instance v0, Lkotlinx/atomicfu/AtomicArray;

    invoke-direct {v0, p1}, Lkotlinx/atomicfu/AtomicArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    const p0, 0x3fffffff    # 1.9999999f

    const-string v0, "Check failed."

    if-gt p2, p0, :cond_1

    and-int p0, p1, p2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)I
    .locals 14

    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    :cond_0
    iget-wide v1, v0, Lkotlinx/atomicfu/AtomicLong;->value:J

    const-wide/high16 v3, 0x3000000000000000L    # 1.727233711018889E-77

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    sget-object p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/high16 p0, 0x2000000000000000L

    and-long/2addr p0, v1

    cmp-long p0, p0, v5

    if-eqz p0, :cond_1

    const/4 v4, 0x2

    :cond_1
    return v4

    :cond_2
    const-wide/32 v7, 0x3fffffff

    and-long/2addr v7, v1

    long-to-int v3, v7

    const-wide v7, 0xfffffffc0000000L

    and-long/2addr v7, v1

    const/16 v9, 0x1e

    shr-long/2addr v7, v9

    long-to-int v7, v7

    iget v8, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    add-int/lit8 v10, v7, 0x2

    and-int/2addr v10, v8

    and-int v11, v3, v8

    if-ne v10, v11, :cond_3

    return v4

    :cond_3
    iget-boolean v10, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    const v11, 0x3fffffff    # 1.9999999f

    if-nez v10, :cond_5

    iget-object v10, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    and-int v12, v7, v8

    iget-object v10, v10, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object v10, v10, v12

    iget-object v10, v10, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    if-eqz v10, :cond_5

    iget v1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    const/16 v2, 0x400

    if-lt v1, v2, :cond_4

    sub-int/2addr v7, v3

    and-int v2, v7, v11

    shr-int/lit8 v1, v1, 0x1

    if-le v2, v1, :cond_0

    :cond_4
    return v4

    :cond_5
    add-int/lit8 v3, v7, 0x1

    and-int/2addr v3, v11

    iget-object v4, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    sget-object v10, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v10, -0xfffffffc0000001L    # -3.1050369248997324E231

    and-long/2addr v10, v1

    int-to-long v12, v3

    shl-long/2addr v12, v9

    or-long v9, v10, v12

    invoke-virtual {v4, v1, v2, v9, v10}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    and-int v1, v7, v8

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    iget-wide v0, v0, Lkotlinx/atomicfu/AtomicLong;->value:J

    const-wide/high16 v2, 0x1000000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object p0

    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    iget v1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v1, v7

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object v0, v0, v1

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    if-eqz v1, :cond_7

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    iget v0, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;->index:I

    if-ne v0, v7, :cond_7

    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    iget v1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v1, v7

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_6

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final close()Z
    .locals 10

    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    :cond_0
    iget-wide v0, p0, Lkotlinx/atomicfu/AtomicLong;->value:J

    const-wide/high16 v2, 0x2000000000000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    return v5

    :cond_1
    const-wide/high16 v8, 0x1000000000000000L

    and-long/2addr v8, v0

    cmp-long v4, v8, v6

    if-eqz v4, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    or-long/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v5
.end method

.method public final next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .locals 10

    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    :cond_0
    iget-wide v1, v0, Lkotlinx/atomicfu/AtomicLong;->value:J

    const-wide/high16 v3, 0x1000000000000000L

    and-long v5, v1, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    or-long/2addr v3, v1

    invoke-virtual {v0, v1, v2, v3, v4}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide v1, v3

    :goto_0
    iget-object v3, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next:Lkotlinx/atomicfu/AtomicRef;

    :goto_1
    iget-object v0, v3, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next:Lkotlinx/atomicfu/AtomicRef;

    new-instance v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    iget v5, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    mul-int/lit8 v5, v5, 0x2

    iget-boolean v6, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    invoke-direct {v4, v5, v6}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    const-wide/32 v5, 0x3fffffff

    and-long/2addr v5, v1

    long-to-int v5, v5

    const-wide v6, 0xfffffffc0000000L

    and-long/2addr v6, v1

    const/16 v8, 0x1e

    shr-long/2addr v6, v8

    long-to-int v6, v6

    :goto_2
    iget v7, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int v8, v5, v7

    and-int/2addr v7, v6

    if-eq v8, v7, :cond_4

    iget-object v7, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    iget-object v7, v7, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object v7, v7, v8

    iget-object v7, v7, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    if-nez v7, :cond_3

    new-instance v7, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    invoke-direct {v7, v5}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;-><init>(I)V

    :cond_3
    iget-object v8, v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    iget v9, v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v9, v5

    iget-object v8, v8, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object v8, v8, v9

    invoke-virtual {v8, v7}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    sget-object v6, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v6, -0x1000000000000001L    # -3.1050361846014175E231

    and-long/2addr v6, v1

    iput-wide v6, v5, Lkotlinx/atomicfu/AtomicLong;->value:J

    iget-object v5, v5, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase;

    sget-object v6, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    if-eq v5, v6, :cond_5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    :cond_0
    iget-wide v2, v1, Lkotlinx/atomicfu/AtomicLong;->value:J

    const-wide/high16 v4, 0x1000000000000000L

    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    return-object v0

    :cond_1
    const-wide/32 v6, 0x3fffffff

    and-long v10, v2, v6

    long-to-int v10, v10

    const-wide v11, 0xfffffffc0000000L

    and-long/2addr v11, v2

    const/16 v13, 0x1e

    shr-long/2addr v11, v13

    long-to-int v11, v11

    iget v12, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v11, v12

    and-int/2addr v12, v10

    const/4 v13, 0x0

    if-ne v11, v12, :cond_2

    return-object v13

    :cond_2
    iget-object v11, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    iget-object v11, v11, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object v11, v11, v12

    iget-object v11, v11, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    if-nez v11, :cond_3

    iget-boolean v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    if-eqz v2, :cond_0

    return-object v13

    :cond_3
    instance-of v12, v11, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    if-eqz v12, :cond_4

    return-object v13

    :cond_4
    add-int/lit8 v12, v10, 0x1

    const v14, 0x3fffffff    # 1.9999999f

    and-int/2addr v12, v14

    iget-object v14, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    sget-object v15, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v15, -0x40000000

    and-long v17, v2, v15

    int-to-long v8, v12

    or-long v4, v17, v8

    invoke-virtual {v14, v2, v3, v4, v5}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    iget v0, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v0, v10

    iget-object v1, v1, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object v0, v1, v0

    invoke-virtual {v0, v13}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    return-object v11

    :cond_5
    iget-boolean v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    :goto_0
    iget-object v3, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    :goto_1
    iget-wide v0, v3, Lkotlinx/atomicfu/AtomicLong;->value:J

    and-long v4, v0, v6

    long-to-int v4, v4

    const-wide/high16 v17, 0x1000000000000000L

    and-long v21, v0, v17

    const-wide/16 v19, 0x0

    cmp-long v5, v21, v19

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_6
    iget-object v5, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    sget-object v10, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-long v21, v0, v15

    or-long v6, v21, v8

    invoke-virtual {v5, v0, v1, v6, v7}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    iget v1, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v1, v4

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object v0, v0, v1

    invoke-virtual {v0, v13}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    move-object v2, v13

    :goto_2
    if-nez v2, :cond_7

    return-object v11

    :cond_7
    const-wide/32 v6, 0x3fffffff

    goto :goto_0

    :cond_8
    const-wide/32 v6, 0x3fffffff

    goto :goto_1
.end method
