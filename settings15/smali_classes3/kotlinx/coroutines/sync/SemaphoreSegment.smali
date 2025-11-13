.class public final Lkotlinx/coroutines/sync/SemaphoreSegment;
.super Lkotlinx/coroutines/internal/Segment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final acquirers:Lkotlinx/atomicfu/AtomicArray;


# direct methods
.method public constructor <init>(JLkotlinx/coroutines/sync/SemaphoreSegment;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/internal/Segment;-><init>(JLkotlinx/coroutines/internal/Segment;I)V

    sget p1, Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I

    new-instance p2, Lkotlinx/atomicfu/AtomicArray;

    invoke-direct {p2, p1}, Lkotlinx/atomicfu/AtomicArray;-><init>(I)V

    iput-object p2, p0, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Lkotlinx/atomicfu/AtomicArray;

    return-void
.end method


# virtual methods
.method public final getNumberOfSlots()I
    .locals 0

    sget p0, Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I

    return p0
.end method

.method public final onCancellation(ILkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lkotlinx/coroutines/sync/SemaphoreKt;->CANCELLED:Lkotlinx/coroutines/internal/Symbol;

    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Lkotlinx/atomicfu/AtomicArray;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SemaphoreSegment[id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lkotlinx/coroutines/internal/Segment;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", hashCode="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
