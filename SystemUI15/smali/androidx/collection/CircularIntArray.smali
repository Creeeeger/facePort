.class public final Landroidx/collection/CircularIntArray;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public capacityBitmask:I

.field public elements:[I

.field public tail:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/CircularIntArray;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-gt p1, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/2addr p1, v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/collection/CircularIntArray;->elements:[I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "capacity must be <= 2^30"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "capacity must be >= 1"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x8

    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/CircularIntArray;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final addLast(I)V
    .locals 4

    iget-object v0, p0, Landroidx/collection/CircularIntArray;->elements:[I

    iget v1, p0, Landroidx/collection/CircularIntArray;->tail:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    and-int/2addr p1, v1

    iput p1, p0, Landroidx/collection/CircularIntArray;->tail:I

    if-nez p1, :cond_1

    array-length p1, v0

    shl-int/lit8 v1, p1, 0x1

    if-ltz v1, :cond_0

    new-array v2, v1, [I

    const/4 v3, 0x0

    invoke-static {v3, v3, p1, v0, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto(III[I[I)V

    iget-object v0, p0, Landroidx/collection/CircularIntArray;->elements:[I

    invoke-static {p1, v3, v3, v0, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto(III[I[I)V

    iput-object v2, p0, Landroidx/collection/CircularIntArray;->elements:[I

    iput p1, p0, Landroidx/collection/CircularIntArray;->tail:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Max array capacity exceeded"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
