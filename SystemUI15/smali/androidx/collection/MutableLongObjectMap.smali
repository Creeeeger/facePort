.class public final Landroidx/collection/MutableLongObjectMap;
.super Landroidx/collection/LongObjectMap;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public growthLimit:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/MutableLongObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/collection/LongObjectMap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-ltz p1, :cond_0

    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/collection/MutableLongObjectMap;->initializeStorage(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Capacity must be a positive value."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableLongObjectMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final findFirstAvailableSlot(I)I
    .locals 9

    iget v0, p0, Landroidx/collection/LongObjectMap;->_capacity:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/collection/LongObjectMap;->metadata:[J

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

.method public final initializeStorage(I)V
    .locals 9

    const/4 v0, 0x0

    if-lez p1, :cond_0

    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    move-result p1

    const/4 v1, 0x7

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Landroidx/collection/LongObjectMap;->_capacity:I

    if-nez p1, :cond_1

    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    goto :goto_1

    :cond_1
    add-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, -0x8

    shr-int/lit8 v1, v1, 0x3

    new-array v2, v1, [J

    const-wide v3, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    invoke-static {v2, v0, v1, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    move-object v0, v2

    :goto_1
    iput-object v0, p0, Landroidx/collection/LongObjectMap;->metadata:[J

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

    iget v0, p0, Landroidx/collection/LongObjectMap;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    iget v1, p0, Landroidx/collection/LongObjectMap;->_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/collection/LongObjectMap;->keys:[J

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/LongObjectMap;->values:[Ljava/lang/Object;

    return-void
.end method

.method public final resizeStorage(I)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/collection/LongObjectMap;->metadata:[J

    iget-object v2, v0, Landroidx/collection/LongObjectMap;->keys:[J

    iget-object v3, v0, Landroidx/collection/LongObjectMap;->values:[Ljava/lang/Object;

    iget v4, v0, Landroidx/collection/LongObjectMap;->_capacity:I

    invoke-virtual/range {p0 .. p1}, Landroidx/collection/MutableLongObjectMap;->initializeStorage(I)V

    iget-object v5, v0, Landroidx/collection/LongObjectMap;->keys:[J

    iget-object v6, v0, Landroidx/collection/LongObjectMap;->values:[Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_1

    shr-int/lit8 v8, v7, 0x3

    aget-wide v8, v1, v8

    and-int/lit8 v10, v7, 0x7

    shl-int/lit8 v10, v10, 0x3

    shr-long/2addr v8, v10

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const-wide/16 v12, 0x80

    cmp-long v8, v8, v12

    if-gez v8, :cond_0

    aget-wide v8, v2, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    const v13, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v12, v13

    shl-int/lit8 v13, v12, 0x10

    xor-int/2addr v12, v13

    ushr-int/lit8 v13, v12, 0x7

    invoke-virtual {v0, v13}, Landroidx/collection/MutableLongObjectMap;->findFirstAvailableSlot(I)I

    move-result v13

    and-int/lit8 v12, v12, 0x7f

    int-to-long v14, v12

    iget-object v12, v0, Landroidx/collection/LongObjectMap;->metadata:[J

    shr-int/lit8 v16, v13, 0x3

    and-int/lit8 v17, v13, 0x7

    shl-int/lit8 v17, v17, 0x3

    aget-wide v18, v12, v16

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    shl-long v1, v10, v17

    not-long v1, v1

    and-long v1, v18, v1

    shl-long v17, v14, v17

    or-long v1, v1, v17

    aput-wide v1, v12, v16

    iget v1, v0, Landroidx/collection/LongObjectMap;->_capacity:I

    add-int/lit8 v2, v13, -0x7

    and-int/2addr v2, v1

    and-int/lit8 v1, v1, 0x7

    add-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x3

    aget-wide v16, v12, v1

    shl-long/2addr v10, v2

    not-long v10, v10

    and-long v10, v16, v10

    shl-long/2addr v14, v2

    or-long/2addr v10, v14

    aput-wide v10, v12, v1

    aput-wide v8, v5, v13

    aget-object v1, v3, v7

    aput-object v1, v6, v13

    goto :goto_1

    :cond_0
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    :goto_1
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final set(JLandroidx/collection/MutableObjectList;)V
    .locals 21

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    const v2, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x10

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x7

    and-int/lit8 v1, v1, 0x7f

    iget v3, v0, Landroidx/collection/LongObjectMap;->_capacity:I

    and-int v4, v2, v3

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Landroidx/collection/LongObjectMap;->metadata:[J

    shr-int/lit8 v8, v4, 0x3

    and-int/lit8 v9, v4, 0x7

    shl-int/lit8 v9, v9, 0x3

    aget-wide v10, v7, v8

    ushr-long/2addr v10, v9

    const/4 v12, 0x1

    add-int/2addr v8, v12

    aget-wide v7, v7, v8

    rsub-int/lit8 v13, v9, 0x40

    shl-long/2addr v7, v13

    int-to-long v13, v9

    neg-long v13, v13

    const/16 v9, 0x3f

    shr-long/2addr v13, v9

    and-long/2addr v7, v13

    or-long/2addr v7, v10

    int-to-long v9, v1

    const-wide v13, 0x101010101010101L

    mul-long v15, v9, v13

    move/from16 v17, v6

    xor-long v5, v7, v15

    sub-long v13, v5, v13

    not-long v5, v5

    and-long/2addr v5, v13

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v5, v13

    :goto_1
    const-wide/16 v15, 0x0

    cmp-long v18, v5, v15

    if-eqz v18, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v15

    shr-int/lit8 v15, v15, 0x3

    add-int/2addr v15, v4

    and-int/2addr v15, v3

    iget-object v11, v0, Landroidx/collection/LongObjectMap;->keys:[J

    aget-wide v19, v11, v15

    cmp-long v11, v19, p1

    if-nez v11, :cond_0

    goto/16 :goto_5

    :cond_0
    const-wide/16 v15, 0x1

    sub-long v15, v5, v15

    and-long/2addr v5, v15

    goto :goto_1

    :cond_1
    not-long v5, v7

    const/4 v11, 0x6

    shl-long/2addr v5, v11

    and-long/2addr v5, v7

    and-long/2addr v5, v13

    cmp-long v5, v5, v15

    const/16 v6, 0x8

    if-eqz v5, :cond_6

    invoke-virtual {v0, v2}, Landroidx/collection/MutableLongObjectMap;->findFirstAvailableSlot(I)I

    move-result v1

    iget v3, v0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    const-wide/16 v4, 0xff

    if-nez v3, :cond_4

    iget-object v3, v0, Landroidx/collection/LongObjectMap;->metadata:[J

    shr-int/lit8 v7, v1, 0x3

    aget-wide v7, v3, v7

    and-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x3

    shr-long/2addr v7, v3

    and-long/2addr v7, v4

    const-wide/16 v13, 0xfe

    cmp-long v3, v7, v13

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    iget v1, v0, Landroidx/collection/LongObjectMap;->_capacity:I

    if-le v1, v6, :cond_3

    iget v3, v0, Landroidx/collection/LongObjectMap;->_size:I

    int-to-long v6, v3

    sget v3, Lkotlin/ULong;->$r8$clinit:I

    const-wide/16 v13, 0x20

    mul-long/2addr v6, v13

    int-to-long v13, v1

    const-wide/16 v15, 0x19

    mul-long/2addr v13, v15

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v1

    if-gtz v1, :cond_3

    iget v1, v0, Landroidx/collection/LongObjectMap;->_capacity:I

    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/MutableLongObjectMap;->resizeStorage(I)V

    goto :goto_2

    :cond_3
    iget v1, v0, Landroidx/collection/LongObjectMap;->_capacity:I

    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/MutableLongObjectMap;->resizeStorage(I)V

    :goto_2
    invoke-virtual {v0, v2}, Landroidx/collection/MutableLongObjectMap;->findFirstAvailableSlot(I)I

    move-result v1

    :cond_4
    :goto_3
    move v15, v1

    iget v1, v0, Landroidx/collection/LongObjectMap;->_size:I

    add-int/2addr v1, v12

    iput v1, v0, Landroidx/collection/LongObjectMap;->_size:I

    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    iget-object v2, v0, Landroidx/collection/LongObjectMap;->metadata:[J

    shr-int/lit8 v3, v15, 0x3

    aget-wide v6, v2, v3

    and-int/lit8 v8, v15, 0x7

    shl-int/lit8 v8, v8, 0x3

    shr-long v13, v6, v8

    and-long/2addr v13, v4

    const-wide/16 v16, 0x80

    cmp-long v11, v13, v16

    if-nez v11, :cond_5

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    :goto_4
    sub-int/2addr v1, v12

    iput v1, v0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    shl-long v11, v4, v8

    not-long v11, v11

    and-long/2addr v6, v11

    shl-long v11, v9, v8

    or-long/2addr v6, v11

    aput-wide v6, v2, v3

    iget v1, v0, Landroidx/collection/LongObjectMap;->_capacity:I

    add-int/lit8 v3, v15, -0x7

    and-int/2addr v3, v1

    and-int/lit8 v1, v1, 0x7

    add-int/2addr v3, v1

    shr-int/lit8 v1, v3, 0x3

    and-int/lit8 v3, v3, 0x7

    shl-int/lit8 v3, v3, 0x3

    aget-wide v6, v2, v1

    shl-long/2addr v4, v3

    not-long v4, v4

    and-long/2addr v4, v6

    shl-long v6, v9, v3

    or-long v3, v4, v6

    aput-wide v3, v2, v1

    :goto_5
    iget-object v1, v0, Landroidx/collection/LongObjectMap;->keys:[J

    aput-wide p1, v1, v15

    iget-object v0, v0, Landroidx/collection/LongObjectMap;->values:[Ljava/lang/Object;

    aput-object p3, v0, v15

    return-void

    :cond_6
    add-int/lit8 v6, v17, 0x8

    add-int/2addr v4, v6

    and-int/2addr v4, v3

    goto/16 :goto_0
.end method
