.class public final Landroidx/collection/MutableObjectLongMap;
.super Landroidx/collection/ObjectLongMap;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public growthLimit:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/MutableObjectLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/collection/ObjectLongMap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-ltz p1, :cond_0

    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectLongMap;->initializeStorage(I)V

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
    invoke-direct {p0, p1}, Landroidx/collection/MutableObjectLongMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final findFirstAvailableSlot(I)I
    .locals 9

    iget v0, p0, Landroidx/collection/ObjectLongMap;->_capacity:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/collection/ObjectLongMap;->metadata:[J

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
    iput p1, p0, Landroidx/collection/ObjectLongMap;->_capacity:I

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
    iput-object v0, p0, Landroidx/collection/ObjectLongMap;->metadata:[J

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

    iget v0, p0, Landroidx/collection/ObjectLongMap;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    iget v1, p0, Landroidx/collection/ObjectLongMap;->_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/MutableObjectLongMap;->growthLimit:I

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/ObjectLongMap;->keys:[Ljava/lang/Object;

    new-array p1, p1, [J

    iput-object p1, p0, Landroidx/collection/ObjectLongMap;->values:[J

    return-void
.end method

.method public final resizeStorage(I)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/collection/ObjectLongMap;->metadata:[J

    iget-object v2, v0, Landroidx/collection/ObjectLongMap;->keys:[Ljava/lang/Object;

    iget-object v3, v0, Landroidx/collection/ObjectLongMap;->values:[J

    iget v4, v0, Landroidx/collection/ObjectLongMap;->_capacity:I

    invoke-virtual/range {p0 .. p1}, Landroidx/collection/MutableObjectLongMap;->initializeStorage(I)V

    iget-object v5, v0, Landroidx/collection/ObjectLongMap;->keys:[Ljava/lang/Object;

    iget-object v6, v0, Landroidx/collection/ObjectLongMap;->values:[J

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_2

    shr-int/lit8 v9, v8, 0x3

    aget-wide v9, v1, v9

    and-int/lit8 v11, v8, 0x7

    shl-int/lit8 v11, v11, 0x3

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    const-wide/16 v13, 0x80

    cmp-long v9, v9, v13

    if-gez v9, :cond_1

    aget-object v9, v2, v8

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    const v13, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v10, v13

    shl-int/lit8 v13, v10, 0x10

    xor-int/2addr v10, v13

    ushr-int/lit8 v13, v10, 0x7

    invoke-virtual {v0, v13}, Landroidx/collection/MutableObjectLongMap;->findFirstAvailableSlot(I)I

    move-result v13

    and-int/lit8 v10, v10, 0x7f

    int-to-long v14, v10

    iget-object v10, v0, Landroidx/collection/ObjectLongMap;->metadata:[J

    shr-int/lit8 v16, v13, 0x3

    and-int/lit8 v17, v13, 0x7

    shl-int/lit8 v17, v17, 0x3

    aget-wide v18, v10, v16

    move/from16 v20, v8

    shl-long v7, v11, v17

    not-long v7, v7

    and-long v7, v18, v7

    shl-long v17, v14, v17

    or-long v7, v7, v17

    aput-wide v7, v10, v16

    iget v7, v0, Landroidx/collection/ObjectLongMap;->_capacity:I

    add-int/lit8 v8, v13, -0x7

    and-int/2addr v8, v7

    and-int/lit8 v7, v7, 0x7

    add-int/2addr v8, v7

    shr-int/lit8 v7, v8, 0x3

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x3

    aget-wide v16, v10, v7

    shl-long/2addr v11, v8

    not-long v11, v11

    and-long v11, v16, v11

    shl-long/2addr v14, v8

    or-long/2addr v11, v14

    aput-wide v11, v10, v7

    aput-object v9, v5, v13

    aget-wide v7, v3, v20

    aput-wide v7, v6, v13

    goto :goto_2

    :cond_1
    move/from16 v20, v8

    :goto_2
    add-int/lit8 v8, v20, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final set(Ljava/lang/Object;J)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v2, v3

    shl-int/lit8 v3, v2, 0x10

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0x7

    and-int/lit8 v2, v2, 0x7f

    iget v4, v0, Landroidx/collection/ObjectLongMap;->_capacity:I

    and-int v5, v3, v4

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v0, Landroidx/collection/ObjectLongMap;->metadata:[J

    shr-int/lit8 v9, v5, 0x3

    and-int/lit8 v10, v5, 0x7

    shl-int/lit8 v10, v10, 0x3

    aget-wide v11, v8, v9

    ushr-long/2addr v11, v10

    const/4 v13, 0x1

    add-int/2addr v9, v13

    aget-wide v8, v8, v9

    rsub-int/lit8 v14, v10, 0x40

    shl-long/2addr v8, v14

    int-to-long v14, v10

    neg-long v14, v14

    const/16 v10, 0x3f

    shr-long/2addr v14, v10

    and-long/2addr v8, v14

    or-long/2addr v8, v11

    int-to-long v10, v2

    const-wide v14, 0x101010101010101L

    mul-long v16, v10, v14

    move/from16 v18, v7

    xor-long v6, v8, v16

    sub-long v14, v6, v14

    not-long v6, v6

    and-long/2addr v6, v14

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v14

    :goto_1
    const-wide/16 v16, 0x0

    cmp-long v19, v6, v16

    if-eqz v19, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v16

    shr-int/lit8 v16, v16, 0x3

    add-int v16, v5, v16

    and-int v16, v16, v4

    iget-object v12, v0, Landroidx/collection/ObjectLongMap;->keys:[Ljava/lang/Object;

    aget-object v12, v12, v16

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move/from16 v2, v16

    goto/16 :goto_5

    :cond_0
    const-wide/16 v16, 0x1

    sub-long v16, v6, v16

    and-long v6, v6, v16

    goto :goto_1

    :cond_1
    not-long v6, v8

    const/4 v12, 0x6

    shl-long/2addr v6, v12

    and-long/2addr v6, v8

    and-long/2addr v6, v14

    cmp-long v6, v6, v16

    const/16 v7, 0x8

    if-eqz v6, :cond_7

    invoke-virtual {v0, v3}, Landroidx/collection/MutableObjectLongMap;->findFirstAvailableSlot(I)I

    move-result v2

    iget v4, v0, Landroidx/collection/MutableObjectLongMap;->growthLimit:I

    const-wide/16 v5, 0xff

    if-nez v4, :cond_4

    iget-object v4, v0, Landroidx/collection/ObjectLongMap;->metadata:[J

    shr-int/lit8 v8, v2, 0x3

    aget-wide v8, v4, v8

    and-int/lit8 v4, v2, 0x7

    shl-int/lit8 v4, v4, 0x3

    shr-long/2addr v8, v4

    and-long/2addr v8, v5

    const-wide/16 v14, 0xfe

    cmp-long v4, v8, v14

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    iget v2, v0, Landroidx/collection/ObjectLongMap;->_capacity:I

    if-le v2, v7, :cond_3

    iget v4, v0, Landroidx/collection/ObjectLongMap;->_size:I

    int-to-long v7, v4

    sget v4, Lkotlin/ULong;->$r8$clinit:I

    const-wide/16 v14, 0x20

    mul-long/2addr v7, v14

    int-to-long v14, v2

    const-wide/16 v16, 0x19

    mul-long v14, v14, v16

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v2

    if-gtz v2, :cond_3

    iget v2, v0, Landroidx/collection/ObjectLongMap;->_capacity:I

    invoke-static {v2}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/collection/MutableObjectLongMap;->resizeStorage(I)V

    goto :goto_2

    :cond_3
    iget v2, v0, Landroidx/collection/ObjectLongMap;->_capacity:I

    invoke-static {v2}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/collection/MutableObjectLongMap;->resizeStorage(I)V

    :goto_2
    invoke-virtual {v0, v3}, Landroidx/collection/MutableObjectLongMap;->findFirstAvailableSlot(I)I

    move-result v2

    :cond_4
    :goto_3
    iget v3, v0, Landroidx/collection/ObjectLongMap;->_size:I

    add-int/2addr v3, v13

    iput v3, v0, Landroidx/collection/ObjectLongMap;->_size:I

    iget v3, v0, Landroidx/collection/MutableObjectLongMap;->growthLimit:I

    iget-object v4, v0, Landroidx/collection/ObjectLongMap;->metadata:[J

    shr-int/lit8 v7, v2, 0x3

    aget-wide v8, v4, v7

    and-int/lit8 v12, v2, 0x7

    shl-int/lit8 v12, v12, 0x3

    shr-long v14, v8, v12

    and-long/2addr v14, v5

    const-wide/16 v16, 0x80

    cmp-long v14, v14, v16

    if-nez v14, :cond_5

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    sub-int/2addr v3, v13

    iput v3, v0, Landroidx/collection/MutableObjectLongMap;->growthLimit:I

    shl-long v13, v5, v12

    not-long v13, v13

    and-long/2addr v8, v13

    shl-long v12, v10, v12

    or-long/2addr v8, v12

    aput-wide v8, v4, v7

    iget v3, v0, Landroidx/collection/ObjectLongMap;->_capacity:I

    add-int/lit8 v7, v2, -0x7

    and-int/2addr v7, v3

    and-int/lit8 v3, v3, 0x7

    add-int/2addr v7, v3

    shr-int/lit8 v3, v7, 0x3

    and-int/lit8 v7, v7, 0x7

    shl-int/lit8 v7, v7, 0x3

    aget-wide v8, v4, v3

    shl-long/2addr v5, v7

    not-long v5, v5

    and-long/2addr v5, v8

    shl-long v7, v10, v7

    or-long/2addr v5, v7

    aput-wide v5, v4, v3

    not-int v2, v2

    :goto_5
    if-gez v2, :cond_6

    not-int v2, v2

    :cond_6
    iget-object v3, v0, Landroidx/collection/ObjectLongMap;->keys:[Ljava/lang/Object;

    aput-object v1, v3, v2

    iget-object v0, v0, Landroidx/collection/ObjectLongMap;->values:[J

    aput-wide p2, v0, v2

    return-void

    :cond_7
    add-int/lit8 v7, v18, 0x8

    add-int/2addr v5, v7

    and-int/2addr v5, v4

    goto/16 :goto_0
.end method
