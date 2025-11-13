.class public Landroid/opengl/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# static fields
.field private static final blacklist ThreadTmp:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/opengl/Matrix$1;

    invoke-direct {v0}, Landroid/opengl/Matrix$1;-><init>()V

    sput-object v0, Landroid/opengl/Matrix;->ThreadTmp:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist frustumM([FIFFFFFF)V
    .locals 12

    cmpl-float v0, p2, p3

    if-eqz v0, :cond_4

    cmpl-float v0, p5, p4

    if-eqz v0, :cond_3

    cmpl-float v0, p6, p7

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v1, p6, v0

    if-lez v1, :cond_1

    cmpg-float v1, p7, v0

    if-lez v1, :cond_0

    sub-float v1, p3, p2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    sub-float v3, p5, p4

    div-float v3, v2, v3

    sub-float v4, p6, p7

    div-float/2addr v2, v4

    mul-float v4, p6, v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    mul-float v6, p6, v3

    mul-float/2addr v6, v5

    add-float v7, p3, p2

    mul-float/2addr v7, v1

    add-float v8, p5, p4

    mul-float/2addr v8, v3

    add-float v9, p7, p6

    mul-float/2addr v9, v2

    mul-float v10, p7, p6

    mul-float/2addr v10, v2

    mul-float/2addr v10, v5

    add-int/lit8 v5, p1, 0x0

    aput v4, p0, v5

    add-int/lit8 v5, p1, 0x5

    aput v6, p0, v5

    add-int/lit8 v5, p1, 0x8

    aput v7, p0, v5

    add-int/lit8 v5, p1, 0x9

    aput v8, p0, v5

    add-int/lit8 v5, p1, 0xa

    aput v9, p0, v5

    add-int/lit8 v5, p1, 0xe

    aput v10, p0, v5

    add-int/lit8 v5, p1, 0xb

    const/high16 v11, -0x40800000    # -1.0f

    aput v11, p0, v5

    add-int/lit8 v5, p1, 0x1

    aput v0, p0, v5

    add-int/lit8 v5, p1, 0x2

    aput v0, p0, v5

    add-int/lit8 v5, p1, 0x3

    aput v0, p0, v5

    add-int/lit8 v5, p1, 0x4

    aput v0, p0, v5

    add-int/lit8 v5, p1, 0x6

    aput v0, p0, v5

    add-int/lit8 v5, p1, 0x7

    aput v0, p0, v5

    add-int/lit8 v5, p1, 0xc

    aput v0, p0, v5

    add-int/lit8 v5, p1, 0xd

    aput v0, p0, v5

    add-int/lit8 v5, p1, 0xf

    aput v0, p0, v5

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "far <= 0.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "near <= 0.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "near == far"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "top == bottom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "left == right"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist invertM([FI[FI)Z
    .locals 60

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    add-int/lit8 v4, p3, 0x4

    aget v4, p2, v4

    add-int/lit8 v5, p3, 0x5

    aget v5, p2, v5

    add-int/lit8 v6, p3, 0x6

    aget v6, p2, v6

    add-int/lit8 v7, p3, 0x7

    aget v7, p2, v7

    add-int/lit8 v8, p3, 0x8

    aget v8, p2, v8

    add-int/lit8 v9, p3, 0x9

    aget v9, p2, v9

    add-int/lit8 v10, p3, 0xa

    aget v10, p2, v10

    add-int/lit8 v11, p3, 0xb

    aget v11, p2, v11

    add-int/lit8 v12, p3, 0xc

    aget v12, p2, v12

    add-int/lit8 v13, p3, 0xd

    aget v13, p2, v13

    add-int/lit8 v14, p3, 0xe

    aget v14, p2, v14

    add-int/lit8 v15, p3, 0xf

    aget v15, p2, v15

    mul-float v16, v10, v15

    mul-float v17, v14, v11

    mul-float v18, v6, v15

    mul-float v19, v14, v7

    mul-float v20, v6, v11

    mul-float v21, v10, v7

    mul-float v22, v2, v15

    mul-float v23, v14, v3

    mul-float v24, v2, v11

    mul-float v25, v10, v3

    mul-float v26, v2, v7

    mul-float v27, v6, v3

    mul-float v28, v16, v5

    mul-float v29, v19, v9

    add-float v28, v28, v29

    mul-float v29, v20, v13

    add-float v28, v28, v29

    mul-float v29, v17, v5

    mul-float v30, v18, v9

    add-float v29, v29, v30

    mul-float v30, v21, v13

    add-float v29, v29, v30

    sub-float v28, v28, v29

    mul-float v29, v17, v1

    mul-float v30, v22, v9

    add-float v29, v29, v30

    mul-float v30, v25, v13

    add-float v29, v29, v30

    mul-float v30, v16, v1

    mul-float v31, v23, v9

    add-float v30, v30, v31

    mul-float v31, v24, v13

    add-float v30, v30, v31

    sub-float v29, v29, v30

    mul-float v30, v18, v1

    mul-float v31, v23, v5

    add-float v30, v30, v31

    mul-float v31, v26, v13

    add-float v30, v30, v31

    mul-float v31, v19, v1

    mul-float v32, v22, v5

    add-float v31, v31, v32

    mul-float v32, v27, v13

    add-float v31, v31, v32

    sub-float v30, v30, v31

    mul-float v31, v21, v1

    mul-float v32, v24, v5

    add-float v31, v31, v32

    mul-float v32, v27, v9

    add-float v31, v31, v32

    mul-float v32, v20, v1

    mul-float v33, v25, v5

    add-float v32, v32, v33

    mul-float v33, v26, v9

    add-float v32, v32, v33

    sub-float v31, v31, v32

    mul-float v32, v17, v4

    mul-float v33, v18, v8

    add-float v32, v32, v33

    mul-float v33, v21, v12

    add-float v32, v32, v33

    mul-float v33, v16, v4

    mul-float v34, v19, v8

    add-float v33, v33, v34

    mul-float v34, v20, v12

    add-float v33, v33, v34

    sub-float v32, v32, v33

    mul-float v33, v16, v0

    mul-float v34, v23, v8

    add-float v33, v33, v34

    mul-float v34, v24, v12

    add-float v33, v33, v34

    mul-float v34, v17, v0

    mul-float v35, v22, v8

    add-float v34, v34, v35

    mul-float v35, v25, v12

    add-float v34, v34, v35

    sub-float v33, v33, v34

    mul-float v34, v19, v0

    mul-float v35, v22, v4

    add-float v34, v34, v35

    mul-float v35, v27, v12

    add-float v34, v34, v35

    mul-float v35, v18, v0

    mul-float v36, v23, v4

    add-float v35, v35, v36

    mul-float v36, v26, v12

    add-float v35, v35, v36

    sub-float v34, v34, v35

    mul-float v35, v20, v0

    mul-float v36, v25, v4

    add-float v35, v35, v36

    mul-float v36, v26, v8

    add-float v35, v35, v36

    mul-float v36, v21, v0

    mul-float v37, v24, v4

    add-float v36, v36, v37

    mul-float v37, v27, v8

    add-float v36, v36, v37

    sub-float v35, v35, v36

    mul-float v36, v8, v13

    mul-float v37, v12, v9

    mul-float v38, v4, v13

    mul-float v39, v12, v5

    mul-float v40, v4, v9

    mul-float v41, v8, v5

    mul-float v42, v0, v13

    mul-float v43, v12, v1

    mul-float v44, v0, v9

    mul-float v45, v8, v1

    mul-float v46, v0, v5

    mul-float v47, v4, v1

    mul-float v48, v36, v7

    mul-float v49, v39, v11

    add-float v48, v48, v49

    mul-float v49, v40, v15

    add-float v48, v48, v49

    mul-float v49, v37, v7

    mul-float v50, v38, v11

    add-float v49, v49, v50

    mul-float v50, v41, v15

    add-float v49, v49, v50

    sub-float v48, v48, v49

    mul-float v49, v37, v3

    mul-float v50, v42, v11

    add-float v49, v49, v50

    mul-float v50, v45, v15

    add-float v49, v49, v50

    mul-float v50, v36, v3

    mul-float v51, v43, v11

    add-float v50, v50, v51

    mul-float v51, v44, v15

    add-float v50, v50, v51

    sub-float v49, v49, v50

    mul-float v50, v38, v3

    mul-float v51, v43, v7

    add-float v50, v50, v51

    mul-float v51, v46, v15

    add-float v50, v50, v51

    mul-float v51, v39, v3

    mul-float v52, v42, v7

    add-float v51, v51, v52

    mul-float v52, v47, v15

    add-float v51, v51, v52

    sub-float v50, v50, v51

    mul-float v51, v41, v3

    mul-float v52, v44, v7

    add-float v51, v51, v52

    mul-float v52, v47, v11

    add-float v51, v51, v52

    mul-float v52, v40, v3

    mul-float v53, v45, v7

    add-float v52, v52, v53

    mul-float v53, v46, v11

    add-float v52, v52, v53

    sub-float v51, v51, v52

    mul-float v52, v38, v10

    mul-float v53, v41, v14

    add-float v52, v52, v53

    mul-float v53, v37, v6

    add-float v52, v52, v53

    mul-float v53, v40, v14

    mul-float v54, v36, v6

    add-float v53, v53, v54

    mul-float v54, v39, v10

    add-float v53, v53, v54

    sub-float v52, v52, v53

    mul-float v53, v44, v14

    mul-float v54, v36, v2

    add-float v53, v53, v54

    mul-float v54, v43, v10

    add-float v53, v53, v54

    mul-float v54, v42, v10

    mul-float v55, v45, v14

    add-float v54, v54, v55

    mul-float v55, v37, v2

    add-float v54, v54, v55

    sub-float v53, v53, v54

    mul-float v54, v42, v6

    mul-float v55, v47, v14

    add-float v54, v54, v55

    mul-float v55, v39, v2

    add-float v54, v54, v55

    mul-float v55, v46, v14

    mul-float v56, v38, v2

    add-float v55, v55, v56

    mul-float v56, v43, v6

    add-float v55, v55, v56

    sub-float v54, v54, v55

    mul-float v55, v46, v10

    mul-float v56, v40, v2

    add-float v55, v55, v56

    mul-float v56, v45, v6

    add-float v55, v55, v56

    mul-float v56, v44, v6

    mul-float v57, v47, v10

    add-float v56, v56, v57

    mul-float v57, v41, v2

    add-float v56, v56, v57

    sub-float v55, v55, v56

    mul-float v56, v0, v28

    mul-float v57, v4, v29

    add-float v56, v56, v57

    mul-float v57, v8, v30

    add-float v56, v56, v57

    mul-float v57, v12, v31

    add-float v56, v56, v57

    const/16 v57, 0x0

    cmpl-float v57, v56, v57

    if-nez v57, :cond_0

    const/16 v57, 0x0

    return v57

    :cond_0
    const/high16 v57, 0x3f800000    # 1.0f

    div-float v57, v57, v56

    mul-float v58, v28, v57

    aput v58, p0, p1

    add-int/lit8 v58, p1, 0x1

    mul-float v59, v29, v57

    aput v59, p0, v58

    add-int/lit8 v58, p1, 0x2

    mul-float v59, v30, v57

    aput v59, p0, v58

    add-int/lit8 v58, p1, 0x3

    mul-float v59, v31, v57

    aput v59, p0, v58

    add-int/lit8 v58, p1, 0x4

    mul-float v59, v32, v57

    aput v59, p0, v58

    add-int/lit8 v58, p1, 0x5

    mul-float v59, v33, v57

    aput v59, p0, v58

    add-int/lit8 v58, p1, 0x6

    mul-float v59, v34, v57

    aput v59, p0, v58

    add-int/lit8 v58, p1, 0x7

    mul-float v59, v35, v57

    aput v59, p0, v58

    add-int/lit8 v58, p1, 0x8

    mul-float v59, v48, v57

    aput v59, p0, v58

    add-int/lit8 v58, p1, 0x9

    mul-float v59, v49, v57

    aput v59, p0, v58

    add-int/lit8 v58, p1, 0xa

    mul-float v59, v50, v57

    aput v59, p0, v58

    add-int/lit8 v58, p1, 0xb

    mul-float v59, v51, v57

    aput v59, p0, v58

    add-int/lit8 v58, p1, 0xc

    mul-float v59, v52, v57

    aput v59, p0, v58

    add-int/lit8 v58, p1, 0xd

    mul-float v59, v53, v57

    aput v59, p0, v58

    add-int/lit8 v58, p1, 0xe

    mul-float v59, v54, v57

    aput v59, p0, v58

    add-int/lit8 v58, p1, 0xf

    mul-float v59, v55, v57

    aput v59, p0, v58

    const/16 v58, 0x1

    return v58
.end method

.method public static whitelist length(FFF)F
    .locals 2

    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static whitelist multiplyMM([FI[FI[FI)V
    .locals 14

    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    if-eqz v6, :cond_f

    if-eqz v7, :cond_e

    if-eqz v8, :cond_d

    if-ltz p1, :cond_c

    if-ltz p3, :cond_b

    if-ltz p5, :cond_a

    array-length v0, v6

    add-int/lit8 v1, p1, 0x10

    if-lt v0, v1, :cond_9

    array-length v0, v7

    add-int/lit8 v1, p3, 0x10

    if-lt v0, v1, :cond_8

    array-length v0, v8

    add-int/lit8 v1, p5, 0x10

    if-lt v0, v1, :cond_7

    const/16 v2, 0x10

    const/16 v5, 0x10

    move-object v0, p0

    move v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->overlap([FII[FII)Z

    move-result v0

    const/4 v9, 0x4

    if-nez v0, :cond_2

    const/16 v2, 0x10

    const/16 v5, 0x10

    move-object v0, p0

    move v1, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->overlap([FII[FII)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_6

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    add-int v1, v1, p5

    aget v1, v8, v1

    add-int/lit8 v2, p3, 0x0

    aget v2, v7, v2

    mul-float/2addr v2, v1

    add-int/lit8 v3, p3, 0x1

    aget v3, v7, v3

    mul-float/2addr v3, v1

    add-int/lit8 v4, p3, 0x2

    aget v4, v7, v4

    mul-float/2addr v4, v1

    add-int/lit8 v5, p3, 0x3

    aget v5, v7, v5

    mul-float/2addr v5, v1

    const/4 v10, 0x1

    :goto_1
    if-ge v10, v9, :cond_1

    mul-int/lit8 v11, v0, 0x4

    add-int/2addr v11, v10

    add-int v11, v11, p5

    aget v11, v8, v11

    mul-int/lit8 v12, v10, 0x4

    add-int/lit8 v12, v12, 0x0

    add-int v12, v12, p3

    aget v12, v7, v12

    mul-float/2addr v12, v11

    add-float/2addr v2, v12

    mul-int/lit8 v12, v10, 0x4

    add-int/lit8 v12, v12, 0x1

    add-int v12, v12, p3

    aget v12, v7, v12

    mul-float/2addr v12, v11

    add-float/2addr v3, v12

    mul-int/lit8 v12, v10, 0x4

    add-int/lit8 v12, v12, 0x2

    add-int v12, v12, p3

    aget v12, v7, v12

    mul-float/2addr v12, v11

    add-float/2addr v4, v12

    mul-int/lit8 v12, v10, 0x4

    add-int/lit8 v12, v12, 0x3

    add-int v12, v12, p3

    aget v12, v7, v12

    mul-float/2addr v12, v11

    add-float/2addr v5, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    mul-int/lit8 v10, v0, 0x4

    add-int/lit8 v10, v10, 0x0

    add-int/2addr v10, p1

    aput v2, v6, v10

    mul-int/lit8 v10, v0, 0x4

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, p1

    aput v3, v6, v10

    mul-int/lit8 v10, v0, 0x4

    add-int/lit8 v10, v10, 0x2

    add-int/2addr v10, p1

    aput v4, v6, v10

    mul-int/lit8 v10, v0, 0x4

    add-int/lit8 v10, v10, 0x3

    add-int/2addr v10, p1

    aput v5, v6, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    sget-object v0, Landroid/opengl/Matrix;->ThreadTmp:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v9, :cond_4

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x0

    add-int v2, v2, p5

    aget v2, v8, v2

    add-int/lit8 v3, p3, 0x0

    aget v3, v7, v3

    mul-float/2addr v3, v2

    add-int/lit8 v4, p3, 0x1

    aget v4, v7, v4

    mul-float/2addr v4, v2

    add-int/lit8 v5, p3, 0x2

    aget v5, v7, v5

    mul-float/2addr v5, v2

    add-int/lit8 v10, p3, 0x3

    aget v10, v7, v10

    mul-float/2addr v10, v2

    const/4 v11, 0x1

    :goto_4
    if-ge v11, v9, :cond_3

    mul-int/lit8 v12, v1, 0x4

    add-int/2addr v12, v11

    add-int v12, v12, p5

    aget v12, v8, v12

    mul-int/lit8 v13, v11, 0x4

    add-int/lit8 v13, v13, 0x0

    add-int v13, v13, p3

    aget v13, v7, v13

    mul-float/2addr v13, v12

    add-float/2addr v3, v13

    mul-int/lit8 v13, v11, 0x4

    add-int/lit8 v13, v13, 0x1

    add-int v13, v13, p3

    aget v13, v7, v13

    mul-float/2addr v13, v12

    add-float/2addr v4, v13

    mul-int/lit8 v13, v11, 0x4

    add-int/lit8 v13, v13, 0x2

    add-int v13, v13, p3

    aget v13, v7, v13

    mul-float/2addr v13, v12

    add-float/2addr v5, v13

    mul-int/lit8 v13, v11, 0x4

    add-int/lit8 v13, v13, 0x3

    add-int v13, v13, p3

    aget v13, v7, v13

    mul-float/2addr v13, v12

    add-float/2addr v10, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_3
    mul-int/lit8 v11, v1, 0x4

    add-int/lit8 v11, v11, 0x0

    aput v3, v0, v11

    mul-int/lit8 v11, v1, 0x4

    add-int/lit8 v11, v11, 0x1

    aput v4, v0, v11

    mul-int/lit8 v11, v1, 0x4

    add-int/lit8 v11, v11, 0x2

    aput v5, v0, v11

    mul-int/lit8 v11, v1, 0x4

    add-int/lit8 v11, v11, 0x3

    aput v10, v0, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x10

    if-ge v1, v2, :cond_5

    add-int v2, v1, p1

    aget v3, v0, v1

    aput v3, v6, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    nop

    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rhs.length < rhsOffset + 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lhs.length < lhsOffset + 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "result.length < resultOffset + 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rhsOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lhsOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resultOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rhs == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lhs == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "result == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist multiplyMV([FI[FI[FI)V
    .locals 6

    if-eqz p0, :cond_8

    if-eqz p2, :cond_7

    if-eqz p4, :cond_6

    if-ltz p1, :cond_5

    if-ltz p3, :cond_4

    if-ltz p5, :cond_3

    array-length v0, p0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_2

    array-length v0, p2

    add-int/lit8 v1, p3, 0x10

    if-lt v0, v1, :cond_1

    array-length v0, p4

    add-int/lit8 v1, p5, 0x4

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    add-int/lit8 v1, p5, 0x0

    aget v1, p4, v1

    mul-float/2addr v0, v1

    add-int/lit8 v1, p3, 0x4

    aget v1, p2, v1

    add-int/lit8 v2, p5, 0x1

    aget v2, p4, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    add-int/lit8 v1, p3, 0x8

    aget v1, p2, v1

    add-int/lit8 v2, p5, 0x2

    aget v2, p4, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    add-int/lit8 v1, p3, 0xc

    aget v1, p2, v1

    add-int/lit8 v2, p5, 0x3

    aget v2, p4, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    add-int/lit8 v2, p5, 0x0

    aget v2, p4, v2

    mul-float/2addr v1, v2

    add-int/lit8 v2, p3, 0x5

    aget v2, p2, v2

    add-int/lit8 v3, p5, 0x1

    aget v3, p4, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-int/lit8 v2, p3, 0x9

    aget v2, p2, v2

    add-int/lit8 v3, p5, 0x2

    aget v3, p4, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-int/lit8 v2, p3, 0xd

    aget v2, p2, v2

    add-int/lit8 v3, p5, 0x3

    aget v3, p4, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    add-int/lit8 v3, p5, 0x0

    aget v3, p4, v3

    mul-float/2addr v2, v3

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    add-int/lit8 v4, p5, 0x1

    aget v4, p4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v3, p3, 0xa

    aget v3, p2, v3

    add-int/lit8 v4, p5, 0x2

    aget v4, p4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v3, p3, 0xe

    aget v3, p2, v3

    add-int/lit8 v4, p5, 0x3

    aget v4, p4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    add-int/lit8 v4, p5, 0x0

    aget v4, p4, v4

    mul-float/2addr v3, v4

    add-int/lit8 v4, p3, 0x7

    aget v4, p2, v4

    add-int/lit8 v5, p5, 0x1

    aget v5, p4, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v4, p3, 0xb

    aget v4, p2, v4

    add-int/lit8 v5, p5, 0x2

    aget v5, p4, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v4, p3, 0xf

    aget v4, p2, v4

    add-int/lit8 v5, p5, 0x3

    aget v5, p4, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v4, p1, 0x0

    aput v0, p0, v4

    add-int/lit8 v4, p1, 0x1

    aput v1, p0, v4

    add-int/lit8 v4, p1, 0x2

    aput v2, p0, v4

    add-int/lit8 v4, p1, 0x3

    aput v3, p0, v4

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rhsVec.length < rhsVecOffset + 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lhsMat.length < lhsMatOffset + 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resultVec.length < resultVecOffset + 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rhsVecOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lhsMatOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resultVecOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rhsVec == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lhsMat == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resultVec == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist orthoM([FIFFFFFF)V
    .locals 11

    cmpl-float v0, p2, p3

    if-eqz v0, :cond_2

    cmpl-float v0, p4, p5

    if-eqz v0, :cond_1

    cmpl-float v0, p6, p7

    if-eqz v0, :cond_0

    sub-float v0, p3, p2

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    sub-float v2, p5, p4

    div-float v2, v1, v2

    sub-float v3, p7, p6

    div-float v3, v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v0, v4

    mul-float/2addr v4, v2

    const/high16 v6, -0x40000000    # -2.0f

    mul-float/2addr v6, v3

    add-float v7, p3, p2

    neg-float v7, v7

    mul-float/2addr v7, v0

    add-float v8, p5, p4

    neg-float v8, v8

    mul-float/2addr v8, v2

    add-float v9, p7, p6

    neg-float v9, v9

    mul-float/2addr v9, v3

    add-int/lit8 v10, p1, 0x0

    aput v5, p0, v10

    add-int/lit8 v10, p1, 0x5

    aput v4, p0, v10

    add-int/lit8 v10, p1, 0xa

    aput v6, p0, v10

    add-int/lit8 v10, p1, 0xc

    aput v7, p0, v10

    add-int/lit8 v10, p1, 0xd

    aput v8, p0, v10

    add-int/lit8 v10, p1, 0xe

    aput v9, p0, v10

    add-int/lit8 v10, p1, 0xf

    aput v1, p0, v10

    add-int/lit8 v1, p1, 0x1

    const/4 v10, 0x0

    aput v10, p0, v1

    add-int/lit8 v1, p1, 0x2

    aput v10, p0, v1

    add-int/lit8 v1, p1, 0x3

    aput v10, p0, v1

    add-int/lit8 v1, p1, 0x4

    aput v10, p0, v1

    add-int/lit8 v1, p1, 0x6

    aput v10, p0, v1

    add-int/lit8 v1, p1, 0x7

    aput v10, p0, v1

    add-int/lit8 v1, p1, 0x8

    aput v10, p0, v1

    add-int/lit8 v1, p1, 0x9

    aput v10, p0, v1

    add-int/lit8 v1, p1, 0xb

    aput v10, p0, v1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "near == far"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bottom == top"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "left == right"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist overlap([FII[FII)Z
    .locals 4

    const/4 v0, 0x0

    if-eq p0, p3, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p4, :cond_1

    return v1

    :cond_1
    add-int v2, p1, p2

    add-int v3, p4, p5

    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    if-ge p1, p4, :cond_3

    if-ge p4, v2, :cond_3

    return v1

    :cond_3
    if-ge p1, v3, :cond_4

    if-ge v3, v2, :cond_4

    return v1

    :cond_4
    if-ge p4, p1, :cond_5

    if-ge p1, v3, :cond_5

    return v1

    :cond_5
    if-ge p4, v2, :cond_6

    if-ge v2, v3, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public static whitelist perspectiveM([FIFFFF)V
    .locals 5

    float-to-double v0, p2

    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    sub-float v2, p4, p5

    div-float/2addr v1, v2

    add-int/lit8 v2, p1, 0x0

    div-float v3, v0, p3

    aput v3, p0, v2

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    aput v3, p0, v2

    add-int/lit8 v2, p1, 0x2

    aput v3, p0, v2

    add-int/lit8 v2, p1, 0x3

    aput v3, p0, v2

    add-int/lit8 v2, p1, 0x4

    aput v3, p0, v2

    add-int/lit8 v2, p1, 0x5

    aput v0, p0, v2

    add-int/lit8 v2, p1, 0x6

    aput v3, p0, v2

    add-int/lit8 v2, p1, 0x7

    aput v3, p0, v2

    add-int/lit8 v2, p1, 0x8

    aput v3, p0, v2

    add-int/lit8 v2, p1, 0x9

    aput v3, p0, v2

    add-int/lit8 v2, p1, 0xa

    add-float v4, p5, p4

    mul-float/2addr v4, v1

    aput v4, p0, v2

    add-int/lit8 v2, p1, 0xb

    const/high16 v4, -0x40800000    # -1.0f

    aput v4, p0, v2

    add-int/lit8 v2, p1, 0xc

    aput v3, p0, v2

    add-int/lit8 v2, p1, 0xd

    aput v3, p0, v2

    add-int/lit8 v2, p1, 0xe

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p5

    mul-float/2addr v4, p4

    mul-float/2addr v4, v1

    aput v4, p0, v2

    add-int/lit8 v2, p1, 0xf

    aput v3, p0, v2

    return-void
.end method

.method public static whitelist rotateM([FIFFFF)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->rotateM([FI[FIFFFF)V

    return-void
.end method

.method public static whitelist rotateM([FI[FIFFFF)V
    .locals 7

    sget-object v0, Landroid/opengl/Matrix;->ThreadTmp:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/16 v2, 0x10

    move-object v1, v0

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    const/16 v6, 0x10

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public static whitelist scaleM([FIFFF)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    aget v2, p0, v1

    mul-float/2addr v2, p2

    aput v2, p0, v1

    add-int/lit8 v2, v1, 0x4

    aget v3, p0, v2

    mul-float/2addr v3, p3

    aput v3, p0, v2

    add-int/lit8 v2, v1, 0x8

    aget v3, p0, v2

    mul-float/2addr v3, p4

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static whitelist scaleM([FI[FIFFF)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    add-int v2, p3, v0

    aget v3, p2, v2

    mul-float/2addr v3, p4

    aput v3, p0, v1

    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, v2, 0x4

    aget v4, p2, v4

    mul-float/2addr v4, p5

    aput v4, p0, v3

    add-int/lit8 v3, v1, 0x8

    add-int/lit8 v4, v2, 0x8

    aget v4, p2, v4

    mul-float/2addr v4, p6

    aput v4, p0, v3

    add-int/lit8 v3, v1, 0xc

    add-int/lit8 v4, v2, 0xc

    aget v4, p2, v4

    aput v4, p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static whitelist setIdentityM([FI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    const/4 v2, 0x0

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    add-int v2, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static whitelist setLookAtM([FIFFFFFFFFF)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    sub-float v5, p5, v2

    sub-float v6, p6, v3

    sub-float v7, p7, v4

    invoke-static {v5, v6, v7}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v8, v9, v8

    mul-float/2addr v5, v8

    mul-float/2addr v6, v8

    mul-float/2addr v7, v8

    mul-float v10, v6, p10

    mul-float v11, v7, p9

    sub-float/2addr v10, v11

    mul-float v11, v7, p8

    mul-float v12, v5, p10

    sub-float/2addr v11, v12

    mul-float v12, v5, p9

    mul-float v13, v6, p8

    sub-float/2addr v12, v13

    invoke-static {v10, v11, v12}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v13

    div-float v13, v9, v13

    mul-float/2addr v10, v13

    mul-float/2addr v11, v13

    mul-float/2addr v12, v13

    mul-float v14, v11, v7

    mul-float v15, v12, v6

    sub-float/2addr v14, v15

    mul-float v15, v12, v5

    mul-float v16, v10, v7

    sub-float v15, v15, v16

    mul-float v16, v10, v6

    mul-float v17, v11, v5

    sub-float v16, v16, v17

    add-int/lit8 v17, v1, 0x0

    aput v10, v0, v17

    add-int/lit8 v17, v1, 0x1

    aput v14, v0, v17

    add-int/lit8 v17, v1, 0x2

    neg-float v9, v5

    aput v9, v0, v17

    add-int/lit8 v9, v1, 0x3

    const/16 v17, 0x0

    aput v17, v0, v9

    add-int/lit8 v9, v1, 0x4

    aput v11, v0, v9

    add-int/lit8 v9, v1, 0x5

    aput v15, v0, v9

    add-int/lit8 v9, v1, 0x6

    move/from16 v18, v5

    neg-float v5, v6

    aput v5, v0, v9

    add-int/lit8 v5, v1, 0x7

    aput v17, v0, v5

    add-int/lit8 v5, v1, 0x8

    aput v12, v0, v5

    add-int/lit8 v5, v1, 0x9

    aput v16, v0, v5

    add-int/lit8 v5, v1, 0xa

    neg-float v9, v7

    aput v9, v0, v5

    add-int/lit8 v5, v1, 0xb

    aput v17, v0, v5

    add-int/lit8 v5, v1, 0xc

    aput v17, v0, v5

    add-int/lit8 v5, v1, 0xd

    aput v17, v0, v5

    add-int/lit8 v5, v1, 0xe

    aput v17, v0, v5

    add-int/lit8 v5, v1, 0xf

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v0, v5

    neg-float v5, v2

    neg-float v9, v3

    neg-float v2, v4

    invoke-static {v0, v1, v5, v9, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public static whitelist setRotateEulerM([FIFFF)V
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x3c8efa35

    mul-float v1, p2, v0

    mul-float v2, p3, v0

    mul-float v0, v0, p4

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v9, v3, v6

    mul-float v10, v4, v6

    add-int/lit8 v11, p1, 0x0

    mul-float v12, v5, v7

    aput v12, p0, v11

    add-int/lit8 v11, p1, 0x1

    neg-float v12, v5

    mul-float/2addr v12, v8

    aput v12, p0, v11

    add-int/lit8 v11, p1, 0x2

    aput v6, p0, v11

    add-int/lit8 v11, p1, 0x3

    const/4 v12, 0x0

    aput v12, p0, v11

    add-int/lit8 v11, p1, 0x4

    mul-float v13, v9, v7

    mul-float v14, v3, v8

    add-float/2addr v13, v14

    aput v13, p0, v11

    add-int/lit8 v11, p1, 0x5

    neg-float v13, v9

    mul-float/2addr v13, v8

    mul-float v14, v3, v7

    add-float/2addr v13, v14

    aput v13, p0, v11

    add-int/lit8 v11, p1, 0x6

    neg-float v13, v4

    mul-float/2addr v13, v5

    aput v13, p0, v11

    add-int/lit8 v11, p1, 0x7

    aput v12, p0, v11

    add-int/lit8 v11, p1, 0x8

    neg-float v13, v10

    mul-float/2addr v13, v7

    mul-float v14, v4, v8

    add-float/2addr v13, v14

    aput v13, p0, v11

    add-int/lit8 v11, p1, 0x9

    mul-float v13, v10, v8

    mul-float v14, v4, v7

    add-float/2addr v13, v14

    aput v13, p0, v11

    add-int/lit8 v11, p1, 0xa

    mul-float v13, v3, v5

    aput v13, p0, v11

    add-int/lit8 v11, p1, 0xb

    aput v12, p0, v11

    add-int/lit8 v11, p1, 0xc

    aput v12, p0, v11

    add-int/lit8 v11, p1, 0xd

    aput v12, p0, v11

    add-int/lit8 v11, p1, 0xe

    aput v12, p0, v11

    add-int/lit8 v11, p1, 0xf

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, p0, v11

    return-void
.end method

.method public static whitelist setRotateEulerM2([FIFFF)V
    .locals 16

    move-object/from16 v0, p0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    array-length v1, v0

    add-int/lit8 v2, p1, 0x10

    if-lt v1, v2, :cond_0

    const v1, 0x3c8efa35

    mul-float v2, p2, v1

    mul-float v3, p3, v1

    mul-float v1, v1, p4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v10, v4, v7

    mul-float v11, v5, v7

    add-int/lit8 v12, p1, 0x0

    mul-float v13, v6, v8

    aput v13, v0, v12

    add-int/lit8 v12, p1, 0x1

    neg-float v13, v6

    mul-float/2addr v13, v9

    aput v13, v0, v12

    add-int/lit8 v12, p1, 0x2

    aput v7, v0, v12

    add-int/lit8 v12, p1, 0x3

    const/4 v13, 0x0

    aput v13, v0, v12

    add-int/lit8 v12, p1, 0x4

    mul-float v14, v11, v8

    mul-float v15, v4, v9

    add-float/2addr v14, v15

    aput v14, v0, v12

    add-int/lit8 v12, p1, 0x5

    neg-float v14, v11

    mul-float/2addr v14, v9

    mul-float v15, v4, v8

    add-float/2addr v14, v15

    aput v14, v0, v12

    add-int/lit8 v12, p1, 0x6

    neg-float v14, v5

    mul-float/2addr v14, v6

    aput v14, v0, v12

    add-int/lit8 v12, p1, 0x7

    aput v13, v0, v12

    add-int/lit8 v12, p1, 0x8

    neg-float v14, v10

    mul-float/2addr v14, v8

    mul-float v15, v5, v9

    add-float/2addr v14, v15

    aput v14, v0, v12

    add-int/lit8 v12, p1, 0x9

    mul-float v14, v10, v9

    mul-float v15, v5, v8

    add-float/2addr v14, v15

    aput v14, v0, v12

    add-int/lit8 v12, p1, 0xa

    mul-float v14, v4, v6

    aput v14, v0, v12

    add-int/lit8 v12, p1, 0xb

    aput v13, v0, v12

    add-int/lit8 v12, p1, 0xc

    aput v13, v0, v12

    add-int/lit8 v12, p1, 0xd

    aput v13, v0, v12

    add-int/lit8 v12, p1, 0xe

    aput v13, v0, v12

    add-int/lit8 v12, p1, 0xf

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v0, v12

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "rm.length < rmOffset + 16"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "rmOffset < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "rm == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist setRotateM([FIFFFF)V
    .locals 16

    add-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x7

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xb

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xc

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xd

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xe

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p0, v0

    const v0, 0x3c8efa35

    mul-float v0, v0, p2

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    cmpl-float v5, v2, p3

    if-nez v5, :cond_0

    cmpl-float v5, v1, p4

    if-nez v5, :cond_0

    cmpl-float v5, v1, p5

    if-nez v5, :cond_0

    add-int/lit8 v5, p1, 0x5

    aput v4, p0, v5

    add-int/lit8 v5, p1, 0xa

    aput v4, p0, v5

    add-int/lit8 v5, p1, 0x6

    aput v3, p0, v5

    add-int/lit8 v5, p1, 0x9

    neg-float v6, v3

    aput v6, p0, v5

    add-int/lit8 v5, p1, 0x1

    aput v1, p0, v5

    add-int/lit8 v5, p1, 0x2

    aput v1, p0, v5

    add-int/lit8 v5, p1, 0x4

    aput v1, p0, v5

    add-int/lit8 v5, p1, 0x8

    aput v1, p0, v5

    add-int/lit8 v1, p1, 0x0

    aput v2, p0, v1

    goto :goto_0

    :cond_0
    cmpl-float v5, v1, p3

    if-nez v5, :cond_1

    cmpl-float v5, v2, p4

    if-nez v5, :cond_1

    cmpl-float v5, v1, p5

    if-nez v5, :cond_1

    add-int/lit8 v5, p1, 0x0

    aput v4, p0, v5

    add-int/lit8 v5, p1, 0xa

    aput v4, p0, v5

    add-int/lit8 v5, p1, 0x8

    aput v3, p0, v5

    add-int/lit8 v5, p1, 0x2

    neg-float v6, v3

    aput v6, p0, v5

    add-int/lit8 v5, p1, 0x1

    aput v1, p0, v5

    add-int/lit8 v5, p1, 0x4

    aput v1, p0, v5

    add-int/lit8 v5, p1, 0x6

    aput v1, p0, v5

    add-int/lit8 v5, p1, 0x9

    aput v1, p0, v5

    add-int/lit8 v1, p1, 0x5

    aput v2, p0, v1

    goto :goto_0

    :cond_1
    cmpl-float v5, v1, p3

    if-nez v5, :cond_2

    cmpl-float v5, v1, p4

    if-nez v5, :cond_2

    cmpl-float v5, v2, p5

    if-nez v5, :cond_2

    add-int/lit8 v5, p1, 0x0

    aput v4, p0, v5

    add-int/lit8 v5, p1, 0x5

    aput v4, p0, v5

    add-int/lit8 v5, p1, 0x1

    aput v3, p0, v5

    add-int/lit8 v5, p1, 0x4

    neg-float v6, v3

    aput v6, p0, v5

    add-int/lit8 v5, p1, 0x2

    aput v1, p0, v5

    add-int/lit8 v5, p1, 0x6

    aput v1, p0, v5

    add-int/lit8 v5, p1, 0x8

    aput v1, p0, v5

    add-int/lit8 v5, p1, 0x9

    aput v1, p0, v5

    add-int/lit8 v1, p1, 0xa

    aput v2, p0, v1

    :goto_0
    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    goto :goto_2

    :cond_2
    invoke-static/range {p3 .. p5}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v1

    cmpl-float v5, v2, v1

    if-eqz v5, :cond_3

    div-float v5, v2, v1

    mul-float v6, p3, v5

    mul-float v7, p4, v5

    mul-float v8, p5, v5

    goto :goto_1

    :cond_3
    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    :goto_1
    sub-float/2addr v2, v4

    mul-float v5, v6, v7

    mul-float v9, v7, v8

    mul-float v10, v8, v6

    mul-float v11, v6, v3

    mul-float v12, v7, v3

    mul-float v13, v8, v3

    add-int/lit8 v14, p1, 0x0

    mul-float v15, v6, v6

    mul-float/2addr v15, v2

    add-float/2addr v15, v4

    aput v15, p0, v14

    add-int/lit8 v14, p1, 0x4

    mul-float v15, v5, v2

    sub-float/2addr v15, v13

    aput v15, p0, v14

    add-int/lit8 v14, p1, 0x8

    mul-float v15, v10, v2

    add-float/2addr v15, v12

    aput v15, p0, v14

    add-int/lit8 v14, p1, 0x1

    mul-float v15, v5, v2

    add-float/2addr v15, v13

    aput v15, p0, v14

    add-int/lit8 v14, p1, 0x5

    mul-float v15, v7, v7

    mul-float/2addr v15, v2

    add-float/2addr v15, v4

    aput v15, p0, v14

    add-int/lit8 v14, p1, 0x9

    mul-float v15, v9, v2

    sub-float/2addr v15, v11

    aput v15, p0, v14

    add-int/lit8 v14, p1, 0x2

    mul-float v15, v10, v2

    sub-float/2addr v15, v12

    aput v15, p0, v14

    add-int/lit8 v14, p1, 0x6

    mul-float v15, v9, v2

    add-float/2addr v15, v11

    aput v15, p0, v14

    add-int/lit8 v14, p1, 0xa

    mul-float v15, v8, v8

    mul-float/2addr v15, v2

    add-float/2addr v15, v4

    aput v15, p0, v14

    :goto_2
    return-void
.end method

.method public static whitelist translateM([FIFFF)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    add-int/lit8 v2, v1, 0xc

    aget v3, p0, v2

    aget v4, p0, v1

    mul-float/2addr v4, p2

    add-int/lit8 v5, v1, 0x4

    aget v5, p0, v5

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, 0x8

    aget v5, p0, v5

    mul-float/2addr v5, p4

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static whitelist translateM([FI[FIFFF)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    add-int v2, p3, v0

    aget v2, p2, v2

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    add-int v1, p1, v0

    add-int v2, p3, v0

    add-int/lit8 v3, v1, 0xc

    aget v4, p2, v2

    mul-float/2addr v4, p4

    add-int/lit8 v5, v2, 0x4

    aget v5, p2, v5

    mul-float/2addr v5, p5

    add-float/2addr v4, v5

    add-int/lit8 v5, v2, 0x8

    aget v5, p2, v5

    mul-float/2addr v5, p6

    add-float/2addr v4, v5

    add-int/lit8 v5, v2, 0xc

    aget v5, p2, v5

    add-float/2addr v4, v5

    aput v4, p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static whitelist transposeM([FI[FI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int v2, v0, p1

    aget v3, p2, v1

    aput v3, p0, v2

    add-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    aput v3, p0, v2

    add-int/lit8 v2, v0, 0x8

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x2

    aget v3, p2, v3

    aput v3, p0, v2

    add-int/lit8 v2, v0, 0xc

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x3

    aget v3, p2, v3

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
