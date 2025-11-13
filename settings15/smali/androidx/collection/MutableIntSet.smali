.class public final Landroidx/collection/MutableIntSet;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public _capacity:I

.field public _size:I

.field public elements:[I

.field public growthLimit:I

.field public metadata:[J


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroidx/collection/MutableIntSet;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    iput-object v0, p0, Landroidx/collection/MutableIntSet;->metadata:[J

    sget-object v0, Landroidx/collection/IntSetKt;->EmptyIntArray:[I

    iput-object v0, p0, Landroidx/collection/MutableIntSet;->elements:[I

    if-ltz p1, :cond_0

    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntSet;->initializeStorage(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Capacity must be a positive value."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final add(I)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroidx/collection/MutableIntSet;->_size:I

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v3

    const v4, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x10

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x7

    and-int/lit8 v3, v3, 0x7f

    iget v5, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    and-int v6, v4, v5

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Landroidx/collection/MutableIntSet;->metadata:[J

    shr-int/lit8 v10, v6, 0x3

    and-int/lit8 v11, v6, 0x7

    shl-int/lit8 v11, v11, 0x3

    aget-wide v12, v9, v10

    ushr-long/2addr v12, v11

    const/4 v14, 0x1

    add-int/2addr v10, v14

    aget-wide v9, v9, v10

    rsub-int/lit8 v15, v11, 0x40

    shl-long/2addr v9, v15

    move/from16 v16, v8

    int-to-long v7, v11

    neg-long v7, v7

    const/16 v11, 0x3f

    shr-long/2addr v7, v11

    and-long/2addr v7, v9

    or-long/2addr v7, v12

    int-to-long v9, v3

    const-wide v11, 0x101010101010101L

    mul-long v17, v9, v11

    xor-long v14, v7, v17

    sub-long v11, v14, v11

    not-long v14, v14

    and-long/2addr v11, v14

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v14

    :goto_1
    const-wide/16 v17, 0x0

    cmp-long v19, v11, v17

    if-eqz v19, :cond_1

    invoke-static {v11, v12}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v17

    shr-int/lit8 v17, v17, 0x3

    add-int v17, v6, v17

    and-int v17, v17, v5

    iget-object v13, v0, Landroidx/collection/MutableIntSet;->elements:[I

    aget v13, v13, v17

    if-ne v13, v1, :cond_0

    const/16 v19, 0x1

    goto/16 :goto_5

    :cond_0
    const-wide/16 v17, 0x1

    sub-long v17, v11, v17

    and-long v11, v11, v17

    goto :goto_1

    :cond_1
    not-long v11, v7

    const/4 v13, 0x6

    shl-long/2addr v11, v13

    and-long/2addr v7, v11

    and-long/2addr v7, v14

    cmp-long v7, v7, v17

    const/16 v8, 0x8

    if-eqz v7, :cond_7

    invoke-virtual {v0, v4}, Landroidx/collection/MutableIntSet;->findFirstAvailableSlot(I)I

    move-result v3

    iget v5, v0, Landroidx/collection/MutableIntSet;->growthLimit:I

    const-wide/16 v6, 0xff

    if-nez v5, :cond_4

    iget-object v5, v0, Landroidx/collection/MutableIntSet;->metadata:[J

    shr-int/lit8 v11, v3, 0x3

    aget-wide v11, v5, v11

    and-int/lit8 v5, v3, 0x7

    shl-int/lit8 v5, v5, 0x3

    shr-long/2addr v11, v5

    and-long/2addr v11, v6

    const-wide/16 v13, 0xfe

    cmp-long v5, v11, v13

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    iget v3, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    if-le v3, v8, :cond_3

    iget v5, v0, Landroidx/collection/MutableIntSet;->_size:I

    int-to-long v11, v5

    const-wide/16 v13, 0x20

    mul-long/2addr v11, v13

    int-to-long v13, v3

    const-wide/16 v15, 0x19

    mul-long/2addr v13, v15

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v3

    if-gtz v3, :cond_3

    iget v3, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    invoke-static {v3}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/collection/MutableIntSet;->resizeStorage(I)V

    goto :goto_2

    :cond_3
    iget v3, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    invoke-static {v3}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/collection/MutableIntSet;->resizeStorage(I)V

    :goto_2
    invoke-virtual {v0, v4}, Landroidx/collection/MutableIntSet;->findFirstAvailableSlot(I)I

    move-result v3

    :cond_4
    :goto_3
    move/from16 v17, v3

    iget v3, v0, Landroidx/collection/MutableIntSet;->_size:I

    const/16 v19, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroidx/collection/MutableIntSet;->_size:I

    iget v3, v0, Landroidx/collection/MutableIntSet;->growthLimit:I

    iget-object v4, v0, Landroidx/collection/MutableIntSet;->metadata:[J

    shr-int/lit8 v5, v17, 0x3

    aget-wide v11, v4, v5

    and-int/lit8 v8, v17, 0x7

    shl-int/lit8 v8, v8, 0x3

    shr-long v13, v11, v8

    and-long/2addr v13, v6

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-nez v13, :cond_5

    move/from16 v13, v19

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    sub-int/2addr v3, v13

    iput v3, v0, Landroidx/collection/MutableIntSet;->growthLimit:I

    shl-long v13, v6, v8

    not-long v13, v13

    and-long/2addr v11, v13

    shl-long v13, v9, v8

    or-long/2addr v11, v13

    aput-wide v11, v4, v5

    iget v3, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    add-int/lit8 v5, v17, -0x7

    and-int/2addr v5, v3

    and-int/lit8 v3, v3, 0x7

    add-int/2addr v5, v3

    shr-int/lit8 v3, v5, 0x3

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x3

    aget-wide v11, v4, v3

    shl-long/2addr v6, v5

    not-long v6, v6

    and-long/2addr v6, v11

    shl-long v8, v9, v5

    or-long v5, v6, v8

    aput-wide v5, v4, v3

    :goto_5
    iget-object v3, v0, Landroidx/collection/MutableIntSet;->elements:[I

    aput v1, v3, v17

    iget v0, v0, Landroidx/collection/MutableIntSet;->_size:I

    if-eq v0, v2, :cond_6

    move/from16 v7, v19

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    return v7

    :cond_7
    add-int/lit8 v8, v16, 0x8

    add-int/2addr v6, v8

    and-int/2addr v6, v5

    goto/16 :goto_0
.end method

.method public final clear()V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/MutableIntSet;->_size:I

    iget-object v0, p0, Landroidx/collection/MutableIntSet;->metadata:[J

    sget-object v1, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default([J)V

    iget-object v0, p0, Landroidx/collection/MutableIntSet;->metadata:[J

    iget v1, p0, Landroidx/collection/MutableIntSet;->_capacity:I

    shr-int/lit8 v2, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x3

    aget-wide v3, v0, v2

    const-wide/16 v5, 0xff

    shl-long/2addr v5, v1

    not-long v7, v5

    and-long/2addr v3, v7

    or-long/2addr v3, v5

    aput-wide v3, v0, v2

    :cond_0
    iget v0, p0, Landroidx/collection/MutableIntSet;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    iget v1, p0, Landroidx/collection/MutableIntSet;->_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/MutableIntSet;->growthLimit:I

    return-void
.end method

.method public final contains(I)Z
    .locals 18

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    const v2, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x10

    xor-int/2addr v1, v2

    and-int/lit8 v2, v1, 0x7f

    iget v3, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    ushr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, v0, Landroidx/collection/MutableIntSet;->metadata:[J

    shr-int/lit8 v7, v1, 0x3

    and-int/lit8 v8, v1, 0x7

    shl-int/lit8 v8, v8, 0x3

    aget-wide v9, v6, v7

    ushr-long/2addr v9, v8

    const/4 v11, 0x1

    add-int/2addr v7, v11

    aget-wide v6, v6, v7

    rsub-int/lit8 v12, v8, 0x40

    shl-long/2addr v6, v12

    int-to-long v12, v8

    neg-long v12, v12

    const/16 v8, 0x3f

    shr-long/2addr v12, v8

    and-long/2addr v6, v12

    or-long/2addr v6, v9

    int-to-long v8, v2

    const-wide v12, 0x101010101010101L

    mul-long/2addr v8, v12

    xor-long/2addr v8, v6

    sub-long v12, v8, v12

    not-long v8, v8

    and-long/2addr v8, v12

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v12

    :goto_1
    const-wide/16 v14, 0x0

    cmp-long v10, v8, v14

    if-eqz v10, :cond_1

    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    shr-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v1

    and-int/2addr v10, v3

    iget-object v14, v0, Landroidx/collection/MutableIntSet;->elements:[I

    aget v14, v14, v10

    move/from16 v15, p1

    if-ne v14, v15, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v16, 0x1

    sub-long v16, v8, v16

    and-long v8, v8, v16

    goto :goto_1

    :cond_1
    not-long v8, v6

    const/4 v10, 0x6

    shl-long/2addr v8, v10

    and-long/2addr v6, v8

    and-long/2addr v6, v12

    cmp-long v6, v6, v14

    if-eqz v6, :cond_3

    const/4 v10, -0x1

    :goto_2
    if-ltz v10, :cond_2

    move v4, v11

    :cond_2
    return v4

    :cond_3
    add-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    and-int/2addr v1, v3

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 14

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/collection/MutableIntSet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/collection/MutableIntSet;

    iget v1, p1, Landroidx/collection/MutableIntSet;->_size:I

    iget v3, p0, Landroidx/collection/MutableIntSet;->_size:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/collection/MutableIntSet;->elements:[I

    iget-object p0, p0, Landroidx/collection/MutableIntSet;->metadata:[J

    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_6

    move v4, v2

    :goto_0
    aget-wide v5, p0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v2

    :goto_1
    if-ge v9, v7, :cond_4

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_3

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget v10, v1, v10

    invoke-virtual {p1, v10}, Landroidx/collection/MutableIntSet;->contains(I)Z

    move-result v10

    if-nez v10, :cond_3

    return v2

    :cond_3
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    if-ne v7, v8, :cond_6

    :cond_5
    if-eq v4, v3, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public final findFirstAvailableSlot(I)I
    .locals 9

    iget v0, p0, Landroidx/collection/MutableIntSet;->_capacity:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/collection/MutableIntSet;->metadata:[J

    shr-int/lit8 v3, p1, 0x3

    and-int/lit8 v4, p1, 0x7

    shl-int/lit8 v4, v4, 0x3

    aget-wide v5, v2, v3

    ushr-long/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    rsub-int/lit8 v7, v4, 0x40

    shl-long/2addr v2, v7

    int-to-long v7, v4

    neg-long v7, v7

    const/16 v4, 0x3f

    shr-long/2addr v7, v4

    and-long/2addr v2, v7

    or-long/2addr v2, v5

    not-long v4, v2

    const/4 v6, 0x7

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    shr-int/lit8 p0, p0, 0x3

    add-int/2addr p1, p0

    and-int p0, p1, v0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x8

    add-int/2addr p1, v1

    and-int/2addr p1, v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 14

    iget-object v0, p0, Landroidx/collection/MutableIntSet;->elements:[I

    iget-object p0, p0, Landroidx/collection/MutableIntSet;->metadata:[J

    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    if-ltz v1, :cond_4

    move v3, v2

    move v4, v3

    :goto_0
    aget-wide v5, p0, v3

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v3, v1

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v2

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v3, 0x3

    add-int/2addr v10, v9

    aget v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->hashCode(I)I

    move-result v10

    add-int/2addr v10, v4

    move v4, v10

    :cond_0
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_5

    :cond_2
    if-eq v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    :cond_4
    move v4, v2

    :cond_5
    return v4
.end method

.method public final initializeStorage(I)V
    .locals 9

    if-lez p1, :cond_0

    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    move-result p1

    const/4 v0, 0x7

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Landroidx/collection/MutableIntSet;->_capacity:I

    if-nez p1, :cond_1

    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, -0x8

    shr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [J

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default([J)V

    :goto_1
    iput-object v0, p0, Landroidx/collection/MutableIntSet;->metadata:[J

    shr-int/lit8 v1, p1, 0x3

    and-int/lit8 v2, p1, 0x7

    shl-int/lit8 v2, v2, 0x3

    aget-wide v3, v0, v1

    const-wide/16 v5, 0xff

    shl-long/2addr v5, v2

    not-long v7, v5

    and-long v2, v3, v7

    or-long/2addr v2, v5

    aput-wide v2, v0, v1

    iget v0, p0, Landroidx/collection/MutableIntSet;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    iget v1, p0, Landroidx/collection/MutableIntSet;->_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/MutableIntSet;->growthLimit:I

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/collection/MutableIntSet;->elements:[I

    return-void
.end method

.method public final removeElementAt(I)V
    .locals 11

    iget v0, p0, Landroidx/collection/MutableIntSet;->_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/MutableIntSet;->_size:I

    iget-object v0, p0, Landroidx/collection/MutableIntSet;->metadata:[J

    shr-int/lit8 v1, p1, 0x3

    and-int/lit8 v2, p1, 0x7

    shl-int/lit8 v2, v2, 0x3

    aget-wide v3, v0, v1

    const-wide/16 v5, 0xff

    shl-long v7, v5, v2

    not-long v7, v7

    and-long/2addr v3, v7

    const-wide/16 v7, 0xfe

    shl-long v9, v7, v2

    or-long v2, v3, v9

    aput-wide v2, v0, v1

    iget p0, p0, Landroidx/collection/MutableIntSet;->_capacity:I

    add-int/lit8 p1, p1, -0x7

    and-int/2addr p1, p0

    and-int/lit8 p0, p0, 0x7

    add-int/2addr p1, p0

    shr-int/lit8 p0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x3

    aget-wide v1, v0, p0

    shl-long v3, v5, p1

    not-long v3, v3

    and-long/2addr v1, v3

    shl-long v3, v7, p1

    or-long/2addr v1, v3

    aput-wide v1, v0, p0

    return-void
.end method

.method public final resizeStorage(I)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/collection/MutableIntSet;->metadata:[J

    iget-object v2, v0, Landroidx/collection/MutableIntSet;->elements:[I

    iget v3, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    invoke-virtual/range {p0 .. p1}, Landroidx/collection/MutableIntSet;->initializeStorage(I)V

    iget-object v4, v0, Landroidx/collection/MutableIntSet;->elements:[I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    shr-int/lit8 v6, v5, 0x3

    aget-wide v6, v1, v6

    and-int/lit8 v8, v5, 0x7

    shl-int/lit8 v8, v8, 0x3

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const-wide/16 v10, 0x80

    cmp-long v6, v6, v10

    if-gez v6, :cond_0

    aget v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->hashCode(I)I

    move-result v7

    const v10, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v7, v10

    shl-int/lit8 v10, v7, 0x10

    xor-int/2addr v7, v10

    ushr-int/lit8 v10, v7, 0x7

    invoke-virtual {v0, v10}, Landroidx/collection/MutableIntSet;->findFirstAvailableSlot(I)I

    move-result v10

    and-int/lit8 v7, v7, 0x7f

    int-to-long v11, v7

    iget-object v7, v0, Landroidx/collection/MutableIntSet;->metadata:[J

    shr-int/lit8 v13, v10, 0x3

    and-int/lit8 v14, v10, 0x7

    shl-int/lit8 v14, v14, 0x3

    aget-wide v15, v7, v13

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    shl-long v1, v8, v14

    not-long v1, v1

    and-long/2addr v1, v15

    shl-long v14, v11, v14

    or-long/2addr v1, v14

    aput-wide v1, v7, v13

    iget v1, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    add-int/lit8 v2, v10, -0x7

    and-int/2addr v2, v1

    and-int/lit8 v1, v1, 0x7

    add-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x3

    aget-wide v13, v7, v1

    shl-long/2addr v8, v2

    not-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v11, v2

    or-long/2addr v8, v11

    aput-wide v8, v7, v1

    aput v6, v4, v10

    goto :goto_1

    :cond_0
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/collection/MutableIntSet;->elements:[I

    iget-object p0, p0, Landroidx/collection/MutableIntSet;->metadata:[J

    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_5

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    aget-wide v6, p0, v4

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    sub-int v8, v4, v2

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    move v10, v3

    :goto_1
    if-ge v10, v8, :cond_3

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-gez v11, :cond_2

    shl-int/lit8 v11, v4, 0x3

    add-int/2addr v11, v10

    aget v11, v1, v11

    const/4 v12, -0x1

    if-ne v5, v12, :cond_0

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    if-eqz v5, :cond_1

    const-string v12, ", "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :cond_2
    shr-long/2addr v6, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    if-ne v8, v9, :cond_5

    :cond_4
    if-eq v4, v2, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
