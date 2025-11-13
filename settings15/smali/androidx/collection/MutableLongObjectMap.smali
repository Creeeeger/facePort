.class public final Landroidx/collection/MutableLongObjectMap;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public _capacity:I

.field public _size:I

.field public growthLimit:I

.field public keys:[J

.field public metadata:[J

.field public values:[Ljava/lang/Object;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    instance-of v3, v1, Landroidx/collection/MutableLongObjectMap;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    :cond_1
    check-cast v1, Landroidx/collection/MutableLongObjectMap;

    iget v3, v1, Landroidx/collection/MutableLongObjectMap;->_size:I

    iget v5, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    if-eq v3, v5, :cond_2

    return v4

    :cond_2
    iget-object v3, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    iget-object v5, v0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_c

    move v7, v4

    :goto_0
    aget-wide v8, v0, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_d

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v4

    :goto_1
    if-ge v12, v10, :cond_b

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_a

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-wide v14, v3, v13

    aget-object v13, v5, v13

    if-nez v13, :cond_8

    invoke-virtual {v1, v14, v15}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    const v16, -0x3361d2af    # -8.293031E7f

    mul-int v13, v13, v16

    shl-int/lit8 v16, v13, 0x10

    xor-int v13, v13, v16

    and-int/lit8 v2, v13, 0x7f

    iget v11, v1, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    ushr-int/lit8 v13, v13, 0x7

    and-int/2addr v13, v11

    const/16 v17, 0x0

    move/from16 v18, v17

    :goto_2
    iget-object v4, v1, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    shr-int/lit8 v19, v13, 0x3

    and-int/lit8 v20, v13, 0x7

    move-object/from16 p1, v0

    shl-int/lit8 v0, v20, 0x3

    aget-wide v20, v4, v19

    ushr-long v20, v20, v0

    const/16 v22, 0x1

    add-int/lit8 v19, v19, 0x1

    aget-wide v23, v4, v19

    rsub-int/lit8 v4, v0, 0x40

    shl-long v23, v23, v4

    move-object/from16 v19, v3

    int-to-long v3, v0

    neg-long v3, v3

    const/16 v0, 0x3f

    shr-long/2addr v3, v0

    and-long v3, v23, v3

    or-long v3, v20, v3

    move-object v0, v5

    move/from16 v20, v6

    int-to-long v5, v2

    const-wide v23, 0x101010101010101L

    mul-long v5, v5, v23

    xor-long/2addr v5, v3

    sub-long v23, v5, v23

    not-long v5, v5

    and-long v5, v23, v5

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v5, v5, v23

    :goto_3
    const-wide/16 v25, 0x0

    cmp-long v21, v5, v25

    if-eqz v21, :cond_4

    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v21

    shr-int/lit8 v21, v21, 0x3

    add-int v21, v13, v21

    and-int v21, v21, v11

    move-object/from16 v27, v0

    iget-object v0, v1, Landroidx/collection/MutableLongObjectMap;->keys:[J

    aget-wide v25, v0, v21

    cmp-long v0, v25, v14

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    const-wide/16 v25, 0x1

    sub-long v25, v5, v25

    and-long v5, v5, v25

    move-object/from16 v0, v27

    goto :goto_3

    :cond_4
    move-object/from16 v27, v0

    not-long v5, v3

    const/4 v0, 0x6

    shl-long/2addr v5, v0

    and-long/2addr v3, v5

    and-long v3, v3, v23

    cmp-long v0, v3, v25

    if-eqz v0, :cond_6

    const/16 v21, -0x1

    :goto_4
    if-ltz v21, :cond_5

    move/from16 v17, v22

    :cond_5
    const/4 v0, 0x0

    if-nez v17, :cond_9

    goto :goto_5

    :cond_6
    add-int/lit8 v18, v18, 0x8

    add-int v13, v13, v18

    and-int/2addr v13, v11

    move-object/from16 v0, p1

    move-object/from16 v3, v19

    move/from16 v6, v20

    move-object/from16 v5, v27

    goto/16 :goto_2

    :cond_7
    move v0, v4

    :goto_5
    return v0

    :cond_8
    move-object/from16 p1, v0

    move-object/from16 v19, v3

    move v0, v4

    move-object/from16 v27, v5

    move/from16 v20, v6

    invoke-virtual {v1, v14, v15}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v0

    :cond_9
    const/16 v2, 0x8

    goto :goto_6

    :cond_a
    move-object/from16 p1, v0

    move-object/from16 v19, v3

    move v0, v4

    move-object/from16 v27, v5

    move/from16 v20, v6

    move v2, v11

    :goto_6
    shr-long/2addr v8, v2

    add-int/lit8 v12, v12, 0x1

    move v4, v0

    move v11, v2

    move-object/from16 v3, v19

    move/from16 v6, v20

    move-object/from16 v5, v27

    const/4 v2, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_1

    :cond_b
    move-object/from16 p1, v0

    move-object/from16 v19, v3

    move v0, v4

    move-object/from16 v27, v5

    move/from16 v20, v6

    move v2, v11

    if-ne v10, v2, :cond_c

    move/from16 v6, v20

    goto :goto_7

    :cond_c
    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    move-object/from16 p1, v0

    move-object/from16 v19, v3

    move v0, v4

    move-object/from16 v27, v5

    :goto_7
    if-eq v7, v6, :cond_c

    add-int/lit8 v7, v7, 0x1

    move v4, v0

    move-object/from16 v3, v19

    move-object/from16 v5, v27

    const/4 v2, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_0

    :goto_8
    return v0
.end method

.method public final findFirstAvailableSlot(I)I
    .locals 9

    iget v0, p0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

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

.method public final get(J)Ljava/lang/Object;
    .locals 13

    invoke-static {p1, p2}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const v1, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x7f

    iget v2, p0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    ushr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    shr-int/lit8 v5, v0, 0x3

    and-int/lit8 v6, v0, 0x7

    shl-int/lit8 v6, v6, 0x3

    aget-wide v7, v4, v5

    ushr-long/2addr v7, v6

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    rsub-int/lit8 v9, v6, 0x40

    shl-long/2addr v4, v9

    int-to-long v9, v6

    neg-long v9, v9

    const/16 v6, 0x3f

    shr-long/2addr v9, v6

    and-long/2addr v4, v9

    or-long/2addr v4, v7

    int-to-long v6, v1

    const-wide v8, 0x101010101010101L

    mul-long/2addr v6, v8

    xor-long/2addr v6, v4

    sub-long v8, v6, v8

    not-long v6, v6

    and-long/2addr v6, v8

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-eqz v12, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    shr-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v0

    and-int/2addr v10, v2

    iget-object v11, p0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    aget-wide v11, v11, v10

    cmp-long v11, v11, p1

    if-nez v11, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v10, 0x1

    sub-long v10, v6, v10

    and-long/2addr v6, v10

    goto :goto_1

    :cond_1
    not-long v6, v4

    const/4 v12, 0x6

    shl-long/2addr v6, v12

    and-long/2addr v4, v6

    and-long/2addr v4, v8

    cmp-long v4, v4, v10

    if-eqz v4, :cond_3

    const/4 v10, -0x1

    :goto_2
    if-ltz v10, :cond_2

    iget-object p0, p0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    aget-object p0, p0, v10

    goto :goto_3

    :cond_2
    const/4 p0, 0x0

    :goto_3
    return-object p0

    :cond_3
    add-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    and-int/2addr v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 15

    iget-object v0, p0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    iget-object v1, p0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    iget-object p0, p0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x0

    if-ltz v2, :cond_5

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

    if-eqz v8, :cond_3

    sub-int v8, v4, v2

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    move v10, v3

    :goto_1
    if-ge v10, v8, :cond_2

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-gez v11, :cond_1

    shl-int/lit8 v11, v4, 0x3

    add-int/2addr v11, v10

    aget-wide v12, v0, v11

    aget-object v11, v1, v11

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    goto :goto_2

    :cond_0
    move v11, v3

    :goto_2
    xor-int/2addr v11, v12

    add-int/2addr v5, v11

    :cond_1
    shr-long/2addr v6, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    if-ne v8, v9, :cond_6

    :cond_3
    if-eq v4, v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v3, v5

    :cond_5
    move v5, v3

    :cond_6
    return v5
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
    iput p1, p0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

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
    iput-object v0, p0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

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

    iget v0, p0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    iget v1, p0, Landroidx/collection/MutableLongObjectMap;->_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    return-void
.end method

.method public final resizeStorage(I)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    iget-object v2, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    iget-object v3, v0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    iget v4, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    invoke-virtual/range {p0 .. p1}, Landroidx/collection/MutableLongObjectMap;->initializeStorage(I)V

    iget-object v5, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    iget-object v6, v0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

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

    iget-object v12, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

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

    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

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

    iget v3, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    and-int v4, v2, v3

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

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

    iget-object v11, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

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

    iget-object v3, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

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
    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    if-le v1, v6, :cond_3

    iget v3, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    int-to-long v6, v3

    const-wide/16 v13, 0x20

    mul-long/2addr v6, v13

    int-to-long v13, v1

    const-wide/16 v15, 0x19

    mul-long/2addr v13, v15

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v1

    if-gtz v1, :cond_3

    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/MutableLongObjectMap;->resizeStorage(I)V

    goto :goto_2

    :cond_3
    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/MutableLongObjectMap;->resizeStorage(I)V

    :goto_2
    invoke-virtual {v0, v2}, Landroidx/collection/MutableLongObjectMap;->findFirstAvailableSlot(I)I

    move-result v1

    :cond_4
    :goto_3
    move v15, v1

    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    add-int/2addr v1, v12

    iput v1, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    iget-object v2, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

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

    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

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
    iget-object v1, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    aput-wide p1, v1, v15

    iget-object v0, v0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    aput-object p3, v0, v15

    return-void

    :cond_6
    add-int/lit8 v6, v17, 0x8

    add-int/2addr v4, v6

    and-int/2addr v4, v3

    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    if-nez v1, :cond_0

    const-string/jumbo v0, "{}"

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    iget-object v3, v0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    iget-object v4, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    aget-wide v9, v4, v7

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_5

    sub-int v11, v7, v5

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_4

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v14, v14, v16

    if-gez v14, :cond_2

    shl-int/lit8 v14, v7, 0x3

    add-int/2addr v14, v13

    move/from16 v16, v7

    aget-wide v6, v2, v14

    aget-object v14, v3, v14

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v14, v0, :cond_1

    const-string v14, "(this)"

    :cond_1
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    iget v6, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    if-ge v8, v6, :cond_3

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    move/from16 v16, v7

    :cond_3
    :goto_2
    shr-long/2addr v9, v12

    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v16

    goto :goto_1

    :cond_4
    move/from16 v16, v7

    if-ne v11, v12, :cond_6

    move/from16 v6, v16

    goto :goto_3

    :cond_5
    move v6, v7

    :goto_3
    if-eq v6, v5, :cond_6

    add-int/lit8 v7, v6, 0x1

    goto :goto_0

    :cond_6
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "s.append(\'}\').toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
