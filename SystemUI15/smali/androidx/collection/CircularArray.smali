.class public final Landroidx/collection/CircularArray;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public capacityBitmask:I

.field public elements:[Ljava/lang/Object;

.field public head:I

.field public tail:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/CircularArray;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    iput v0, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

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
    invoke-direct {p0, p1}, Landroidx/collection/CircularArray;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final doubleCapacity()V
    .locals 7

    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Landroidx/collection/CircularArray;->head:I

    sub-int v3, v1, v2

    shl-int/lit8 v4, v1, 0x1

    if-ltz v4, :cond_0

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v5, v6, v2, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/CircularArray;->head:I

    invoke-static {v0, v5, v3, v6, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iput-object v5, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    iput v6, p0, Landroidx/collection/CircularArray;->head:I

    iput v1, p0, Landroidx/collection/CircularArray;->tail:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Max array capacity exceeded"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeFromEnd(I)V
    .locals 5

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_5

    iget v0, p0, Landroidx/collection/CircularArray;->tail:I

    if-ge p1, v0, :cond_1

    sub-int v1, v0, p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :goto_1
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    iget-object v4, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Landroidx/collection/CircularArray;->tail:I

    sub-int v1, v0, v1

    sub-int/2addr p1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularArray;->tail:I

    if-lez p1, :cond_4

    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Landroidx/collection/CircularArray;->tail:I

    sub-int p1, v0, p1

    move v1, p1

    :goto_2
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iput p1, p0, Landroidx/collection/CircularArray;->tail:I

    :cond_4
    return-void

    :cond_5
    sget p0, Landroidx/collection/CollectionPlatformUtils;->$r8$clinit:I

    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final removeFromStart(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_5

    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    sub-int v2, v0, v1

    if-ge p1, v2, :cond_1

    add-int v0, v1, p1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    iget-object v3, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    add-int/2addr v1, v0

    iget v0, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularArray;->head:I

    if-lez p1, :cond_4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput p1, p0, Landroidx/collection/CircularArray;->head:I

    :cond_4
    return-void

    :cond_5
    sget p0, Landroidx/collection/CollectionPlatformUtils;->$r8$clinit:I

    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final size()I
    .locals 2

    iget v0, p0, Landroidx/collection/CircularArray;->tail:I

    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr p0, v0

    return p0
.end method
