.class public abstract Landroidx/collection/FloatSet;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public _capacity:I

.field public elements:[F

.field public metadata:[J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    iput-object v0, p0, Landroidx/collection/FloatSet;->metadata:[J

    sget-object v0, Landroidx/collection/FloatSetKt;->EmptyFloatArray:[F

    iput-object v0, p0, Landroidx/collection/FloatSet;->elements:[F

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/collection/FloatSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    instance-of v3, v1, Landroidx/collection/FloatSet;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    :cond_1
    check-cast v1, Landroidx/collection/FloatSet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/collection/FloatSet;->elements:[F

    iget-object v0, v0, Landroidx/collection/FloatSet;->metadata:[J

    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_9

    move v6, v4

    :goto_0
    aget-wide v7, v0, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v12

    cmp-long v9, v9, v12

    if-eqz v9, :cond_a

    sub-int v9, v6, v5

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    move v14, v4

    :goto_1
    if-ge v14, v9, :cond_8

    const-wide/16 v15, 0xff

    and-long/2addr v15, v7

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_7

    shl-int/lit8 v15, v6, 0x3

    add-int/2addr v15, v14

    aget v15, v3, v15

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Ljava/lang/Float;->hashCode(F)I

    move-result v16

    const v17, -0x3361d2af    # -8.293031E7f

    mul-int v16, v16, v17

    shl-int/lit8 v17, v16, 0x10

    xor-int v16, v16, v17

    and-int/lit8 v10, v16, 0x7f

    iget v4, v1, Landroidx/collection/FloatSet;->_capacity:I

    ushr-int/lit8 v16, v16, 0x7

    and-int v16, v16, v4

    const/16 v18, 0x0

    :goto_2
    iget-object v11, v1, Landroidx/collection/FloatSet;->metadata:[J

    shr-int/lit8 v19, v16, 0x3

    and-int/lit8 v20, v16, 0x7

    shl-int/lit8 v12, v20, 0x3

    aget-wide v22, v11, v19

    ushr-long v22, v22, v12

    add-int/lit8 v19, v19, 0x1

    aget-wide v19, v11, v19

    rsub-int/lit8 v11, v12, 0x40

    shl-long v19, v19, v11

    int-to-long v11, v12

    neg-long v11, v11

    const/16 v13, 0x3f

    shr-long/2addr v11, v13

    and-long v11, v19, v11

    or-long v11, v22, v11

    move-object/from16 v19, v3

    int-to-long v2, v10

    const-wide v22, 0x101010101010101L

    mul-long v2, v2, v22

    xor-long/2addr v2, v11

    sub-long v22, v2, v22

    not-long v2, v2

    and-long v2, v22, v2

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v2, v2, v20

    :goto_3
    const-wide/16 v22, 0x0

    cmp-long v20, v2, v22

    if-eqz v20, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v20

    shr-int/lit8 v20, v20, 0x3

    add-int v20, v16, v20

    and-int v20, v20, v4

    iget-object v13, v1, Landroidx/collection/FloatSet;->elements:[F

    aget v13, v13, v20

    cmpg-float v13, v13, v15

    if-nez v13, :cond_2

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_4

    :cond_2
    const-wide/16 v22, 0x1

    sub-long v22, v2, v22

    and-long v2, v2, v22

    goto :goto_3

    :cond_3
    not-long v2, v11

    const/4 v13, 0x6

    shl-long/2addr v2, v13

    and-long/2addr v2, v11

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v11

    cmp-long v2, v2, v22

    if-eqz v2, :cond_6

    const/16 v20, -0x1

    :goto_4
    if-ltz v20, :cond_4

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    :goto_5
    if-nez v2, :cond_5

    const/4 v2, 0x0

    return v2

    :cond_5
    const/4 v2, 0x0

    const/16 v3, 0x8

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    const/16 v3, 0x8

    add-int/lit8 v18, v18, 0x8

    add-int v16, v16, v18

    and-int v16, v16, v4

    move-wide v12, v11

    move-object/from16 v3, v19

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_7
    move-object/from16 v19, v3

    move v2, v4

    move v3, v10

    move-wide v11, v12

    :goto_6
    shr-long/2addr v7, v3

    add-int/lit8 v14, v14, 0x1

    move v4, v2

    move v10, v3

    move-wide v12, v11

    move-object/from16 v3, v19

    const/4 v2, 0x1

    const/4 v11, 0x7

    goto/16 :goto_1

    :cond_8
    move-object/from16 v19, v3

    move v2, v4

    move v3, v10

    if-ne v9, v3, :cond_9

    goto :goto_7

    :cond_9
    const/4 v0, 0x1

    goto :goto_8

    :cond_a
    move-object/from16 v19, v3

    move v2, v4

    :goto_7
    if-eq v6, v5, :cond_9

    add-int/lit8 v6, v6, 0x1

    move v4, v2

    move-object/from16 v3, v19

    const/4 v2, 0x1

    goto/16 :goto_0

    :goto_8
    return v0
.end method

.method public final hashCode()I
    .locals 14

    iget-object v0, p0, Landroidx/collection/FloatSet;->elements:[F

    iget-object p0, p0, Landroidx/collection/FloatSet;->metadata:[J

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

    invoke-static {v10}, Ljava/lang/Float;->hashCode(F)I

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

.method public final toString()Ljava/lang/String;
    .locals 15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/collection/FloatSet;->elements:[F

    iget-object p0, p0, Landroidx/collection/FloatSet;->metadata:[J

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
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    return-object p0
.end method
