.class public final Landroidx/compose/foundation/lazy/layout/MutableIntervalList;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final intervals:Landroidx/compose/runtime/collection/MutableVector;

.field public lastInterval:Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->intervals:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method


# virtual methods
.method public final addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V
    .locals 2

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->size:I

    invoke-direct {v0, v1, p1, p2}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;-><init>(IILjava/lang/Object;)V

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->size:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->size:I

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->intervals:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p0, "size should be >=0, but was "

    invoke-static {p1, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final checkIndexBounds(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->size:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index "

    const-string v2, ", size "

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->size:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->checkIndexBounds(I)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->lastInterval:Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    if-eqz v0, :cond_0

    iget v1, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->size:I

    iget v2, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    if-gt v2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->intervals:Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {p1, v0}, Landroidx/compose/foundation/lazy/layout/IntervalListKt;->access$binarySearch(ILandroidx/compose/runtime/collection/MutableVector;)I

    move-result p1

    iget-object v0, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object p1, v0, p1

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->lastInterval:Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    :goto_0
    return-object v0
.end method
