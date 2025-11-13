.class public abstract Landroidx/collection/LongObjectMap;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public _capacity:I

.field public _size:I

.field public keys:[J

.field public metadata:[J

.field public values:[Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    iput-object v0, p0, Landroidx/collection/LongObjectMap;->metadata:[J

    sget-object v0, Landroidx/collection/LongSetKt;->EmptyLongArray:[J

    iput-object v0, p0, Landroidx/collection/LongObjectMap;->keys:[J

    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/LongObjectMap;->values:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/collection/LongObjectMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    instance-of v3, v1, Landroidx/collection/LongObjectMap;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    :cond_1
    check-cast v1, Landroidx/collection/LongObjectMap;

    iget v3, v1, Landroidx/collection/LongObjectMap;->_size:I

    iget v5, v0, Landroidx/collection/LongObjectMap;->_size:I

    if-eq v3, v5, :cond_2

    return v4

    :cond_2
    iget-object v3, v0, Landroidx/collection/LongObjectMap;->keys:[J

    iget-object v5, v0, Landroidx/collection/LongObjectMap;->values:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/LongObjectMap;->metadata:[J

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

    invoke-virtual {v1, v14, v15}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

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

    iget v11, v1, Landroidx/collection/LongObjectMap;->_capacity:I

    ushr-int/lit8 v13, v13, 0x7

    and-int/2addr v13, v11

    const/16 v17, 0x0

    move/from16 v18, v17

    :goto_2
    iget-object v4, v1, Landroidx/collection/LongObjectMap;->metadata:[J

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

    iget-object v0, v1, Landroidx/collection/LongObjectMap;->keys:[J

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

    invoke-virtual {v1, v14, v15}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

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

.method public final get(J)Ljava/lang/Object;
    .locals 13

    invoke-static {p1, p2}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const v1, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x7f

    iget v2, p0, Landroidx/collection/LongObjectMap;->_capacity:I

    ushr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroidx/collection/LongObjectMap;->metadata:[J

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

    iget-object v11, p0, Landroidx/collection/LongObjectMap;->keys:[J

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

    iget-object p0, p0, Landroidx/collection/LongObjectMap;->values:[Ljava/lang/Object;

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

    iget-object v0, p0, Landroidx/collection/LongObjectMap;->keys:[J

    iget-object v1, p0, Landroidx/collection/LongObjectMap;->values:[Ljava/lang/Object;

    iget-object p0, p0, Landroidx/collection/LongObjectMap;->metadata:[J

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

.method public final toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/collection/LongObjectMap;->_size:I

    if-nez v1, :cond_0

    const-string/jumbo v0, "{}"

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/collection/LongObjectMap;->keys:[J

    iget-object v3, v0, Landroidx/collection/LongObjectMap;->values:[Ljava/lang/Object;

    iget-object v4, v0, Landroidx/collection/LongObjectMap;->metadata:[J

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

    iget v6, v0, Landroidx/collection/LongObjectMap;->_size:I

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

    return-object v0
.end method
