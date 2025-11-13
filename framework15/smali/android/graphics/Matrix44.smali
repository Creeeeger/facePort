.class public Landroid/graphics/Matrix44;
.super Ljava/lang/Object;
.source "Matrix44.java"


# instance fields
.field final blacklist mBackingArray:[F


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/graphics/Matrix;)V
    .locals 21

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v1, v0, [F

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v6, v1, v5

    const/4 v7, 0x2

    aget v8, v1, v7

    const/4 v9, 0x3

    aget v10, v1, v9

    const/4 v11, 0x4

    aget v12, v1, v11

    const/4 v13, 0x5

    aget v14, v1, v13

    const/4 v15, 0x6

    aget v16, v1, v15

    const/16 v17, 0x7

    aget v18, v1, v17

    const/16 v19, 0x8

    aget v20, v1, v19

    const/16 v0, 0x10

    new-array v0, v0, [F

    aput v4, v0, v3

    aput v6, v0, v5

    const/4 v3, 0x0

    aput v3, v0, v7

    aput v8, v0, v9

    aput v10, v0, v11

    aput v12, v0, v13

    aput v3, v0, v15

    aput v14, v0, v17

    aput v3, v0, v19

    const/16 v4, 0x9

    aput v3, v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xa

    aput v4, v0, v5

    const/16 v4, 0xb

    aput v3, v0, v4

    const/16 v4, 0xc

    aput v16, v0, v4

    const/16 v4, 0xd

    aput v18, v0, v4

    const/16 v4, 0xe

    aput v3, v0, v4

    const/16 v3, 0xf

    aput v20, v0, v3

    move-object/from16 v3, p0

    iput-object v0, v3, Landroid/graphics/Matrix44;->mBackingArray:[F

    return-void
.end method

.method private static blacklist dot(FFFFFFFF)F
    .locals 2

    mul-float v0, p0, p4

    mul-float v1, p1, p5

    add-float/2addr v0, v1

    mul-float v1, p2, p6

    add-float/2addr v0, v1

    mul-float v1, p3, p7

    add-float/2addr v0, v1

    return v0
.end method

.method private static blacklist dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Matrix44;->get(II)F

    move-result v1

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix44;->get(II)F

    move-result v0

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Matrix44;->get(II)F

    move-result v2

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix44;->get(II)F

    move-result v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Matrix44;->get(II)F

    move-result v2

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix44;->get(II)F

    move-result v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Matrix44;->get(II)F

    move-result v2

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix44;->get(II)F

    move-result v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method


# virtual methods
.method public whitelist concat(Landroid/graphics/Matrix44;)Landroid/graphics/Matrix44;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v5

    const/4 v6, 0x2

    invoke-static {v0, v1, v2, v6}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v7

    const/4 v8, 0x3

    invoke-static {v0, v1, v2, v8}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v9

    invoke-static {v0, v1, v4, v2}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v10

    invoke-static {v0, v1, v4, v4}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v11

    invoke-static {v0, v1, v4, v6}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v12

    invoke-static {v0, v1, v4, v8}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v13

    invoke-static {v0, v1, v6, v2}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v14

    invoke-static {v0, v1, v6, v4}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v15

    invoke-static {v0, v1, v6, v6}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v16

    invoke-static {v0, v1, v6, v8}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v17

    invoke-static {v0, v1, v8, v2}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v18

    invoke-static {v0, v1, v8, v4}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v19

    invoke-static {v0, v1, v8, v6}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v20

    invoke-static {v0, v1, v8, v8}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v21

    iget-object v8, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v3, v8, v2

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v5, v2, v4

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v7, v2, v6

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x3

    aput v9, v2, v4

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x4

    aput v10, v2, v4

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x5

    aput v11, v2, v4

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x6

    aput v12, v2, v4

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x7

    aput v13, v2, v4

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v4, 0x8

    aput v14, v2, v4

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v4, 0x9

    aput v15, v2, v4

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v4, 0xa

    aput v16, v2, v4

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v4, 0xb

    aput v17, v2, v4

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v4, 0xc

    aput v18, v2, v4

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v4, 0xd

    aput v19, v2, v4

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v4, 0xe

    aput v20, v2, v4

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v4, 0xf

    aput v21, v2, v4

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/graphics/Matrix44;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    move-object v1, p1

    check-cast v1, Landroid/graphics/Matrix44;

    iget-object v1, v1, Landroid/graphics/Matrix44;->mBackingArray:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist get(II)F
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid row and column values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getValues([F)V
    .locals 3

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dst array must be of length 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xb

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xd

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xe

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xf

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist invert()Z
    .locals 50

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v5, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v7, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    iget-object v9, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v10, 0x4

    aget v9, v9, v10

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v14, 0x6

    aget v13, v13, v14

    iget-object v15, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v16, 0x7

    aget v15, v15, v16

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v18, 0x8

    aget v14, v14, v18

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v20, 0x9

    aget v12, v12, v20

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v22, 0xa

    aget v10, v10, v22

    iget-object v8, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v24, 0xb

    aget v8, v8, v24

    iget-object v6, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v26, 0xc

    aget v6, v6, v26

    iget-object v4, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v28, 0xd

    aget v4, v4, v28

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v30, 0xe

    aget v2, v2, v30

    move/from16 v31, v8

    iget-object v8, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v32, 0xf

    aget v8, v8, v32

    mul-float v33, v1, v11

    mul-float v34, v3, v9

    sub-float v33, v33, v34

    mul-float v34, v1, v13

    mul-float v35, v5, v9

    sub-float v34, v34, v35

    mul-float v35, v1, v15

    mul-float v36, v7, v9

    sub-float v35, v35, v36

    mul-float v36, v3, v13

    mul-float v37, v5, v11

    sub-float v36, v36, v37

    mul-float v37, v3, v15

    mul-float v38, v7, v11

    sub-float v37, v37, v38

    mul-float v38, v5, v15

    mul-float v39, v7, v13

    sub-float v38, v38, v39

    mul-float v39, v14, v4

    mul-float v40, v12, v6

    sub-float v39, v39, v40

    mul-float v40, v14, v2

    mul-float v41, v10, v6

    sub-float v40, v40, v41

    mul-float v41, v14, v8

    mul-float v42, v31, v6

    sub-float v41, v41, v42

    mul-float v42, v12, v2

    mul-float v43, v10, v4

    sub-float v42, v42, v43

    mul-float v43, v12, v8

    mul-float v44, v31, v4

    sub-float v43, v43, v44

    mul-float v44, v10, v8

    mul-float v45, v31, v2

    sub-float v44, v44, v45

    mul-float v45, v33, v44

    mul-float v46, v34, v43

    sub-float v45, v45, v46

    mul-float v46, v35, v42

    add-float v45, v45, v46

    mul-float v46, v36, v41

    add-float v45, v45, v46

    mul-float v46, v37, v40

    sub-float v45, v45, v46

    mul-float v46, v38, v39

    add-float v45, v45, v46

    const/16 v46, 0x0

    cmpl-float v46, v45, v46

    if-nez v46, :cond_0

    const/16 v16, 0x0

    return v16

    :cond_0
    const/high16 v46, 0x3f800000    # 1.0f

    div-float v46, v46, v45

    move/from16 v47, v14

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v48, v11, v44

    mul-float v49, v13, v43

    sub-float v48, v48, v49

    mul-float v49, v15, v42

    add-float v48, v48, v49

    mul-float v48, v48, v46

    const/16 v29, 0x0

    aput v48, v14, v29

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    move/from16 v29, v11

    neg-float v11, v3

    mul-float v11, v11, v44

    mul-float v48, v5, v43

    add-float v11, v11, v48

    mul-float v48, v7, v42

    sub-float v11, v11, v48

    mul-float v11, v11, v46

    const/16 v27, 0x1

    aput v11, v14, v27

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v14, v4, v38

    mul-float v48, v2, v37

    sub-float v14, v14, v48

    mul-float v48, v8, v36

    add-float v14, v14, v48

    mul-float v14, v14, v46

    const/16 v25, 0x2

    aput v14, v11, v25

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    neg-float v14, v12

    mul-float v14, v14, v38

    mul-float v25, v10, v37

    add-float v14, v14, v25

    mul-float v25, v31, v36

    sub-float v14, v14, v25

    mul-float v14, v14, v46

    const/16 v23, 0x3

    aput v14, v11, v23

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    neg-float v14, v9

    mul-float v14, v14, v44

    mul-float v23, v13, v41

    add-float v14, v14, v23

    mul-float v23, v15, v40

    sub-float v14, v14, v23

    mul-float v14, v14, v46

    const/16 v21, 0x4

    aput v14, v11, v21

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v14, v1, v44

    mul-float v21, v5, v41

    sub-float v14, v14, v21

    mul-float v21, v7, v40

    add-float v14, v14, v21

    mul-float v14, v14, v46

    const/16 v19, 0x5

    aput v14, v11, v19

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    neg-float v14, v6

    mul-float v14, v14, v38

    mul-float v19, v2, v35

    add-float v14, v14, v19

    mul-float v19, v8, v34

    sub-float v14, v14, v19

    mul-float v14, v14, v46

    const/16 v17, 0x6

    aput v14, v11, v17

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v14, v47, v38

    mul-float v17, v10, v35

    sub-float v14, v14, v17

    mul-float v17, v31, v34

    add-float v14, v14, v17

    mul-float v14, v14, v46

    aput v14, v11, v16

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v14, v9, v43

    mul-float v16, v29, v41

    sub-float v14, v14, v16

    mul-float v16, v15, v39

    add-float v14, v14, v16

    mul-float v14, v14, v46

    aput v14, v11, v18

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    neg-float v14, v1

    mul-float v14, v14, v43

    mul-float v16, v3, v41

    add-float v14, v14, v16

    mul-float v16, v7, v39

    sub-float v14, v14, v16

    mul-float v14, v14, v46

    aput v14, v11, v20

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v14, v6, v37

    mul-float v16, v4, v35

    sub-float v14, v14, v16

    mul-float v16, v8, v33

    add-float v14, v14, v16

    mul-float v14, v14, v46

    aput v14, v11, v22

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    move/from16 v16, v7

    move/from16 v14, v47

    neg-float v7, v14

    mul-float v7, v7, v37

    mul-float v17, v12, v35

    add-float v7, v7, v17

    mul-float v17, v31, v33

    sub-float v7, v7, v17

    mul-float v7, v7, v46

    aput v7, v11, v24

    iget-object v7, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    neg-float v11, v9

    mul-float v11, v11, v42

    mul-float v17, v29, v40

    add-float v11, v11, v17

    mul-float v17, v13, v39

    sub-float v11, v11, v17

    mul-float v11, v11, v46

    aput v11, v7, v26

    iget-object v7, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v11, v1, v42

    mul-float v17, v3, v40

    sub-float v11, v11, v17

    mul-float v17, v5, v39

    add-float v11, v11, v17

    mul-float v11, v11, v46

    aput v11, v7, v28

    iget-object v7, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    neg-float v11, v6

    mul-float v11, v11, v36

    mul-float v17, v4, v34

    add-float v11, v11, v17

    mul-float v17, v2, v33

    sub-float v11, v11, v17

    mul-float v11, v11, v46

    aput v11, v7, v30

    iget-object v7, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v11, v14, v36

    mul-float v17, v12, v34

    sub-float v11, v11, v17

    mul-float v17, v10, v33

    add-float v11, v11, v17

    mul-float v11, v11, v46

    aput v11, v7, v32

    const/4 v7, 0x1

    return v7
.end method

.method public whitelist isIdentity()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    rem-int/lit8 v1, v0, 0x4

    div-int/lit8 v2, v0, 0x4

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v2, v2, v0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist map(FFFF[F)V
    .locals 7

    array-length v0, p5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    mul-float/2addr v0, p1

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v0, v3

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v5, 0x2

    aget v3, v3, v5

    mul-float/2addr v3, p3

    add-float/2addr v0, v3

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v6, 0x3

    aget v3, v3, v6

    mul-float/2addr v3, p4

    add-float/2addr v0, v3

    aput v0, p5, v2

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v0, v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    aput v0, p5, v4

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0x8

    aget v0, v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xb

    aget v1, v1, v2

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    aput v0, p5, v5

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0xc

    aget v0, v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xd

    aget v1, v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xe

    aget v1, v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xf

    aget v1, v1, v2

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    aput v0, p5, v6

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dst array must be of length 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist map(FFFF)[F
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix44;->map(FFFF[F)V

    return-object v0
.end method

.method public whitelist reset()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    rem-int/lit8 v2, v0, 0x4

    div-int/lit8 v3, v0, 0x4

    if-ne v2, v3, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public whitelist rotate(FFFF)Landroid/graphics/Matrix44;
    .locals 64

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-float v2, p2, p3

    add-float v2, v2, p4

    div-float v3, p2, v2

    div-float v4, p3, v2

    div-float v5, p4, v2

    float-to-double v6, v1

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v12, v1

    mul-double/2addr v12, v8

    div-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v6

    mul-float v9, v8, v3

    mul-float/2addr v9, v3

    add-float/2addr v9, v6

    mul-float v10, v8, v3

    mul-float/2addr v10, v4

    mul-float v11, v7, v5

    sub-float v20, v10, v11

    mul-float v10, v8, v3

    mul-float/2addr v10, v5

    mul-float v11, v7, v4

    add-float v21, v10, v11

    mul-float v10, v8, v3

    mul-float/2addr v10, v4

    mul-float v11, v7, v5

    add-float v22, v10, v11

    mul-float v10, v8, v4

    mul-float/2addr v10, v4

    add-float v23, v10, v6

    mul-float v10, v8, v4

    mul-float/2addr v10, v5

    mul-float v11, v7, v3

    sub-float v24, v10, v11

    mul-float v10, v8, v3

    mul-float/2addr v10, v5

    mul-float v11, v7, v4

    sub-float v25, v10, v11

    mul-float v10, v8, v4

    mul-float/2addr v10, v5

    mul-float v11, v7, v3

    add-float v26, v10, v11

    mul-float v10, v8, v5

    mul-float/2addr v10, v5

    add-float v27, v10, v6

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v28, 0x0

    aget v10, v10, v28

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v29, 0x1

    aget v11, v11, v29

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v30, 0x2

    aget v12, v12, v30

    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v31, 0x3

    aget v13, v13, v31

    const/16 v17, 0x0

    move v14, v9

    move/from16 v15, v22

    move/from16 v16, v25

    invoke-static/range {v10 .. v17}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v32

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v12, v10, v28

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v13, v10, v29

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v14, v10, v30

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v10, v31

    const/16 v19, 0x0

    move/from16 v16, v20

    move/from16 v17, v23

    move/from16 v18, v26

    invoke-static/range {v12 .. v19}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v33

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v12, v10, v28

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v13, v10, v29

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v14, v10, v30

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v10, v31

    move/from16 v16, v21

    move/from16 v17, v24

    move/from16 v18, v27

    invoke-static/range {v12 .. v19}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v34

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v11, v10, v28

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v12, v10, v29

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v13, v10, v30

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v14, v10, v31

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v35

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v36, 0x4

    aget v10, v10, v36

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v37, 0x5

    aget v11, v11, v37

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v38, 0x6

    aget v12, v12, v38

    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v39, 0x7

    aget v13, v13, v39

    move v14, v9

    move/from16 v15, v22

    move/from16 v16, v25

    invoke-static/range {v10 .. v17}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v40

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v12, v10, v36

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v13, v10, v37

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v14, v10, v38

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v10, v39

    move/from16 v16, v20

    move/from16 v17, v23

    move/from16 v18, v26

    invoke-static/range {v12 .. v19}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v41

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v12, v10, v36

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v13, v10, v37

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v14, v10, v38

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v10, v39

    move/from16 v16, v21

    move/from16 v17, v24

    move/from16 v18, v27

    invoke-static/range {v12 .. v19}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v42

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v11, v10, v36

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v12, v10, v37

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v13, v10, v38

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v14, v10, v39

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v43

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v44, 0x8

    aget v10, v10, v44

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v45, 0x9

    aget v11, v11, v45

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v46, 0xa

    aget v12, v12, v46

    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v47, 0xb

    aget v13, v13, v47

    move v14, v9

    move/from16 v15, v22

    move/from16 v16, v25

    invoke-static/range {v10 .. v17}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v48

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v12, v10, v44

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v13, v10, v45

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v14, v10, v46

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v10, v47

    move/from16 v16, v20

    move/from16 v17, v23

    move/from16 v18, v26

    invoke-static/range {v12 .. v19}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v49

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v12, v10, v44

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v13, v10, v45

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v14, v10, v46

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v10, v47

    move/from16 v16, v21

    move/from16 v17, v24

    move/from16 v18, v27

    invoke-static/range {v12 .. v19}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v50

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v11, v10, v44

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v12, v10, v45

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v13, v10, v46

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v14, v10, v47

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v51

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v52, 0xc

    aget v10, v10, v52

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v53, 0xd

    aget v11, v11, v53

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v54, 0xe

    aget v12, v12, v54

    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v55, 0xf

    aget v13, v13, v55

    move v14, v9

    move/from16 v15, v22

    move/from16 v16, v25

    invoke-static/range {v10 .. v17}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v10

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v12, v11, v52

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v13, v11, v53

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v14, v11, v54

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v11, v55

    move/from16 v16, v20

    move/from16 v17, v23

    move/from16 v18, v26

    invoke-static/range {v12 .. v19}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v11

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v12, v12, v52

    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v13, v13, v53

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v14, v14, v54

    iget-object v15, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v15, v55

    move/from16 v16, v21

    move/from16 v17, v24

    move/from16 v18, v27

    invoke-static/range {v12 .. v19}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v12

    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v56, v13, v52

    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v57, v13, v53

    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v58, v13, v54

    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v59, v13, v55

    const/16 v62, 0x0

    const/high16 v63, 0x3f800000    # 1.0f

    const/16 v60, 0x0

    const/16 v61, 0x0

    invoke-static/range {v56 .. v63}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v13

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v32, v14, v28

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v33, v14, v29

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v34, v14, v30

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v35, v14, v31

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v40, v14, v36

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v41, v14, v37

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v42, v14, v38

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v43, v14, v39

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v48, v14, v44

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v49, v14, v45

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v50, v14, v46

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v51, v14, v47

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v10, v14, v52

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v11, v14, v53

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v12, v14, v54

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v13, v14, v55

    return-object v0
.end method

.method public whitelist scale(FFF)Landroid/graphics/Matrix44;
    .locals 3

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0x8

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x5

    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0x9

    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0xd

    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0xa

    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0xe

    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    return-object p0
.end method

.method public whitelist set(IIF)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aput p3, v0, v1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid row and column values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setValues([F)V
    .locals 3

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Src array must be of length 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x2

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v5, 0x3

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v6, 0x4

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v7, 0x5

    aget v1, v1, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v8, 0x6

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v9, 0x7

    aget v1, v1, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v10, 0x8

    aget v1, v1, v10

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v11, 0x9

    aget v1, v1, v11

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v12, 0xa

    aget v1, v1, v12

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v13, 0xb

    aget v1, v1, v13

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v14, 0xc

    aget v1, v1, v14

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v15, 0xd

    aget v1, v1, v15

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v16, 0xe

    aget v1, v1, v16

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v17, 0xf

    aget v1, v1, v17

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "| %f %f %f %f |\n| %f %f %f %f |\n| %f %f %f %f |\n| %f %f %f %f |\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist translate(FFF)Landroid/graphics/Matrix44;
    .locals 9

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v3, 0x4

    aget v1, v1, v3

    mul-float/2addr v1, p1

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    mul-float/2addr v3, p3

    add-float/2addr v1, v3

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    add-float/2addr v1, v3

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v5, 0x8

    aget v3, v3, v5

    mul-float/2addr v3, p1

    iget-object v5, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v5, p2

    add-float/2addr v3, v5

    iget-object v5, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v5, p3

    add-float/2addr v3, v5

    iget-object v5, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    add-float/2addr v3, v5

    iget-object v5, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v7, 0xc

    aget v5, v5, v7

    mul-float/2addr v5, p1

    iget-object v7, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v8, 0xd

    aget v7, v7, v8

    mul-float/2addr v7, p2

    add-float/2addr v5, v7

    iget-object v7, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v8, 0xe

    aget v7, v7, v8

    mul-float/2addr v7, p3

    add-float/2addr v5, v7

    iget-object v7, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v8, 0xf

    aget v7, v7, v8

    add-float/2addr v5, v7

    iget-object v7, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v0, v7, v2

    iget-object v2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v1, v2, v4

    iget-object v2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v3, v2, v6

    iget-object v2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v5, v2, v8

    return-object p0
.end method
