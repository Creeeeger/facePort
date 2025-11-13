.class public abstract Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source "GCMUtil.java"


# static fields
.field private static final blacklist E1:I = -0x1f000000

.field private static final blacklist E1L:J = -0x1f00000000000000L


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist asBytes([I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    return-void
.end method

.method public static blacklist asBytes([J[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian([J[BI)V

    return-void
.end method

.method public static blacklist asBytes([I)[B
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    return-object v0
.end method

.method public static blacklist asBytes([J)[B
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian([J[BI)V

    return-object v0
.end method

.method public static blacklist asInts([B[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI[I)V

    return-void
.end method

.method public static blacklist asInts([B)[I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI[I)V

    return-object v0
.end method

.method public static blacklist asLongs([B[J)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI[J)V

    return-void
.end method

.method public static blacklist asLongs([B)[J
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI[J)V

    return-object v0
.end method

.method public static blacklist copy([I[I)V
    .locals 2

    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    return-void
.end method

.method public static blacklist copy([J[J)V
    .locals 3

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    return-void
.end method

.method public static blacklist divideP([J[J)V
    .locals 13

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 v6, 0x3f

    shr-long v7, v1, v6

    const-wide/high16 v9, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v9, v7

    xor-long/2addr v1, v9

    shl-long v9, v1, v3

    ushr-long v11, v4, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v0

    shl-long v9, v4, v3

    neg-long v11, v7

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    return-void
.end method

.method private static blacklist implMul64(JJ)J
    .locals 34

    const-wide v0, 0x1111111111111111L

    and-long v2, p0, v0

    const-wide v4, 0x2222222222222222L

    and-long v6, p0, v4

    const-wide v8, 0x4444444444444444L    # 7.477080264543605E20

    and-long v10, p0, v8

    const-wide v12, -0x7777777777777778L    # -1.48603973805866E-267

    and-long v14, p0, v12

    and-long v16, p2, v0

    and-long v18, p2, v4

    and-long v20, p2, v8

    and-long v22, p2, v12

    mul-long v24, v2, v16

    mul-long v26, v6, v22

    xor-long v24, v24, v26

    mul-long v26, v10, v20

    xor-long v24, v24, v26

    mul-long v26, v14, v18

    xor-long v24, v24, v26

    mul-long v26, v2, v18

    mul-long v28, v6, v16

    xor-long v26, v26, v28

    mul-long v28, v10, v22

    xor-long v26, v26, v28

    mul-long v28, v14, v20

    xor-long v26, v26, v28

    mul-long v28, v2, v20

    mul-long v30, v6, v18

    xor-long v28, v28, v30

    mul-long v30, v10, v16

    xor-long v28, v28, v30

    mul-long v30, v14, v22

    xor-long v28, v28, v30

    mul-long v30, v2, v22

    mul-long v32, v6, v20

    xor-long v30, v30, v32

    mul-long v32, v10, v18

    xor-long v30, v30, v32

    mul-long v32, v14, v16

    xor-long v30, v30, v32

    and-long v0, v24, v0

    and-long v4, v26, v4

    and-long v8, v28, v8

    and-long v12, v30, v12

    or-long v24, v0, v4

    or-long v24, v24, v8

    or-long v24, v24, v12

    return-wide v24
.end method

.method public static blacklist multiply([B[B)V
    .locals 2

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([J[J)V

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([J[B)V

    return-void
.end method

.method public static blacklist multiply([I[I)V
    .locals 19

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    const/4 v6, 0x3

    aget v7, p1, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x4

    if-ge v12, v13, :cond_1

    aget v13, p0, v12

    const/4 v14, 0x0

    :goto_1
    const/16 v15, 0x20

    if-ge v14, v15, :cond_0

    shr-int/lit8 v15, v13, 0x1f

    shl-int/lit8 v13, v13, 0x1

    and-int v16, v1, v15

    xor-int v8, v8, v16

    and-int v16, v3, v15

    xor-int v9, v9, v16

    and-int v16, v5, v15

    xor-int v10, v10, v16

    and-int v16, v7, v15

    xor-int v11, v11, v16

    shl-int/lit8 v16, v7, 0x1f

    shr-int/lit8 v16, v16, 0x8

    ushr-int/lit8 v17, v7, 0x1

    shl-int/lit8 v18, v5, 0x1f

    or-int v7, v17, v18

    ushr-int/lit8 v17, v5, 0x1

    shl-int/lit8 v18, v3, 0x1f

    or-int v5, v17, v18

    ushr-int/lit8 v17, v3, 0x1

    shl-int/lit8 v18, v1, 0x1f

    or-int v3, v17, v18

    ushr-int/lit8 v17, v1, 0x1

    const/high16 v18, -0x1f000000

    and-int v18, v16, v18

    xor-int v1, v17, v18

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    aput v8, p0, v0

    aput v9, p0, v2

    aput v10, p0, v4

    aput v11, p0, v6

    return-void
.end method

.method public static blacklist multiply([J[J)V
    .locals 45

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    aget-wide v6, p1, v0

    aget-wide v8, p1, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v10

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v12

    invoke-static {v6, v7}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v14

    move-wide/from16 v17, v4

    invoke-static {v8, v9}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v3

    invoke-static {v10, v11, v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v19

    invoke-static {v1, v2, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v21

    const/4 v5, 0x1

    shl-long v21, v21, v5

    invoke-static {v12, v13, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v23

    move-wide/from16 v25, v1

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v16

    shl-long v17, v16, v5

    move-wide/from16 v27, v6

    xor-long v5, v10, v12

    move-wide/from16 v29, v10

    xor-long v10, v14, v3

    invoke-static {v5, v6, v10, v11}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v5

    xor-long v10, v25, v0

    move-wide/from16 v31, v0

    xor-long v0, v27, v8

    invoke-static {v10, v11, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v0

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    move-wide/from16 v10, v19

    xor-long v33, v21, v19

    xor-long v33, v33, v23

    xor-long v33, v33, v5

    xor-long v35, v23, v21

    xor-long v35, v35, v17

    xor-long v35, v35, v0

    move-wide/from16 v37, v17

    const/4 v2, 0x1

    ushr-long v39, v37, v2

    xor-long v39, v37, v39

    const/4 v2, 0x2

    ushr-long v41, v37, v2

    xor-long v39, v39, v41

    const/4 v7, 0x7

    ushr-long v41, v37, v7

    xor-long v39, v39, v41

    xor-long v33, v33, v39

    const/16 v39, 0x3e

    shl-long v40, v37, v39

    const/16 v42, 0x39

    shl-long v43, v37, v42

    xor-long v40, v40, v43

    xor-long v35, v35, v40

    const/16 v16, 0x1

    ushr-long v40, v35, v16

    xor-long v40, v35, v40

    ushr-long v43, v35, v2

    xor-long v40, v40, v43

    ushr-long v43, v35, v7

    xor-long v40, v40, v43

    xor-long v10, v10, v40

    const/16 v2, 0x3f

    shl-long v40, v35, v2

    shl-long v43, v35, v39

    xor-long v39, v40, v43

    shl-long v41, v35, v42

    xor-long v39, v39, v41

    xor-long v33, v33, v39

    const/4 v2, 0x0

    aput-wide v10, p0, v2

    const/4 v2, 0x1

    aput-wide v33, p0, v2

    return-void
.end method

.method public static blacklist multiplyP([I)V
    .locals 11

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    shl-int/lit8 v8, v7, 0x1f

    shr-int/lit8 v8, v8, 0x1f

    ushr-int/lit8 v9, v1, 0x1

    const/high16 v10, -0x1f000000

    and-int/2addr v10, v8

    xor-int/2addr v9, v10

    aput v9, p0, v0

    ushr-int/lit8 v0, v3, 0x1

    shl-int/lit8 v9, v1, 0x1f

    or-int/2addr v0, v9

    aput v0, p0, v2

    ushr-int/lit8 v0, v5, 0x1

    shl-int/lit8 v2, v3, 0x1f

    or-int/2addr v0, v2

    aput v0, p0, v4

    ushr-int/lit8 v0, v7, 0x1

    shl-int/lit8 v2, v5, 0x1f

    or-int/2addr v0, v2

    aput v0, p0, v6

    return-void
.end method

.method public static blacklist multiplyP([I[I)V
    .locals 11

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    shl-int/lit8 v8, v7, 0x1f

    shr-int/lit8 v8, v8, 0x1f

    ushr-int/lit8 v9, v1, 0x1

    const/high16 v10, -0x1f000000

    and-int/2addr v10, v8

    xor-int/2addr v9, v10

    aput v9, p1, v0

    ushr-int/lit8 v0, v3, 0x1

    shl-int/lit8 v9, v1, 0x1f

    or-int/2addr v0, v9

    aput v0, p1, v2

    ushr-int/lit8 v0, v5, 0x1

    shl-int/lit8 v2, v3, 0x1f

    or-int/2addr v0, v2

    aput v0, p1, v4

    ushr-int/lit8 v0, v7, 0x1

    shl-int/lit8 v2, v5, 0x1f

    or-int/2addr v0, v2

    aput v0, p1, v6

    return-void
.end method

.method public static blacklist multiplyP([J)V
    .locals 13

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 v6, 0x3f

    shl-long v7, v4, v6

    shr-long/2addr v7, v6

    ushr-long v9, v1, v3

    const-wide/high16 v11, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v11, v7

    xor-long/2addr v9, v11

    aput-wide v9, p0, v0

    ushr-long v9, v4, v3

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p0, v3

    return-void
.end method

.method public static blacklist multiplyP([J[J)V
    .locals 13

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 v6, 0x3f

    shl-long v7, v4, v6

    shr-long/2addr v7, v6

    ushr-long v9, v1, v3

    const-wide/high16 v11, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v11, v7

    xor-long/2addr v9, v11

    aput-wide v9, p1, v0

    ushr-long v9, v4, v3

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    return-void
.end method

.method public static blacklist multiplyP3([J[J)V
    .locals 14

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 v6, 0x3d

    shl-long v7, v4, v6

    const/4 v9, 0x3

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    return-void
.end method

.method public static blacklist multiplyP4([J[J)V
    .locals 14

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 v6, 0x3c

    shl-long v7, v4, v6

    const/4 v9, 0x4

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    return-void
.end method

.method public static blacklist multiplyP7([J[J)V
    .locals 14

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 v6, 0x39

    shl-long v7, v4, v6

    const/4 v9, 0x7

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    ushr-long v12, v7, v9

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    return-void
.end method

.method public static blacklist multiplyP8([I)V
    .locals 11

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    shl-int/lit8 v8, v7, 0x18

    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v9, v8

    ushr-int/lit8 v10, v8, 0x1

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x7

    xor-int/2addr v9, v10

    aput v9, p0, v0

    ushr-int/lit8 v0, v3, 0x8

    shl-int/lit8 v9, v1, 0x18

    or-int/2addr v0, v9

    aput v0, p0, v2

    ushr-int/lit8 v0, v5, 0x8

    shl-int/lit8 v2, v3, 0x18

    or-int/2addr v0, v2

    aput v0, p0, v4

    ushr-int/lit8 v0, v7, 0x8

    shl-int/lit8 v2, v5, 0x18

    or-int/2addr v0, v2

    aput v0, p0, v6

    return-void
.end method

.method public static blacklist multiplyP8([I[I)V
    .locals 11

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    shl-int/lit8 v8, v7, 0x18

    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v9, v8

    ushr-int/lit8 v10, v8, 0x1

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x7

    xor-int/2addr v9, v10

    aput v9, p1, v0

    ushr-int/lit8 v0, v3, 0x8

    shl-int/lit8 v9, v1, 0x18

    or-int/2addr v0, v9

    aput v0, p1, v2

    ushr-int/lit8 v0, v5, 0x8

    shl-int/lit8 v2, v3, 0x18

    or-int/2addr v0, v2

    aput v0, p1, v4

    ushr-int/lit8 v0, v7, 0x8

    shl-int/lit8 v2, v5, 0x18

    or-int/2addr v0, v2

    aput v0, p1, v6

    return-void
.end method

.method public static blacklist multiplyP8([J)V
    .locals 14

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 v6, 0x38

    shl-long v7, v4, v6

    const/16 v9, 0x8

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p0, v0

    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p0, v3

    return-void
.end method

.method public static blacklist multiplyP8([J[J)V
    .locals 14

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 v6, 0x38

    shl-long v7, v4, v6

    const/16 v9, 0x8

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    return-void
.end method

.method public static blacklist oneAsBytes()[B
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static blacklist oneAsInts()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    return-object v0
.end method

.method public static blacklist oneAsLongs()[J
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public static blacklist pAsLongs()[J
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public static blacklist square([J[J)V
    .locals 20

    const/4 v0, 0x4

    new-array v0, v0, [J

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Interleave;->expand64To128Rev(J[JI)V

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    const/4 v5, 0x2

    invoke-static {v3, v4, v0, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Interleave;->expand64To128Rev(J[JI)V

    aget-wide v3, v0, v1

    aget-wide v6, v0, v2

    aget-wide v8, v0, v5

    const/4 v10, 0x3

    aget-wide v10, v0, v10

    ushr-long v12, v10, v2

    xor-long/2addr v12, v10

    ushr-long v14, v10, v5

    xor-long/2addr v12, v14

    const/4 v14, 0x7

    ushr-long v15, v10, v14

    xor-long/2addr v12, v15

    xor-long/2addr v6, v12

    const/16 v12, 0x3f

    shl-long v15, v10, v12

    const/16 v13, 0x3e

    shl-long v17, v10, v13

    xor-long v15, v15, v17

    const/16 v17, 0x39

    shl-long v18, v10, v17

    xor-long v15, v15, v18

    xor-long/2addr v8, v15

    ushr-long v15, v8, v2

    xor-long/2addr v15, v8

    ushr-long v18, v8, v5

    xor-long v15, v15, v18

    ushr-long v18, v8, v14

    xor-long v14, v15, v18

    xor-long/2addr v3, v14

    shl-long v14, v8, v12

    shl-long v12, v8, v13

    xor-long/2addr v12, v14

    shl-long v14, v8, v17

    xor-long/2addr v12, v14

    xor-long v5, v6, v12

    aput-wide v3, p1, v1

    aput-wide v5, p1, v2

    return-void
.end method

.method public static blacklist xor([BI[BII)V
    .locals 3

    nop

    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_0

    add-int v0, p1, p4

    aget-byte v1, p0, v0

    add-int v2, p3, p4

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist xor([BI[BI[BI)V
    .locals 4

    const/4 v0, 0x0

    :cond_0
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    return-void
.end method

.method public static blacklist xor([B[B)V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    return-void
.end method

.method public static blacklist xor([B[BI)V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    return-void
.end method

.method public static blacklist xor([B[BII)V
    .locals 2

    nop

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_0

    aget-byte v0, p0, p3

    add-int v1, p2, p3

    aget-byte v1, p1, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist xor([B[B[B)V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    return-void
.end method

.method public static blacklist xor([I[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x3

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    return-void
.end method

.method public static blacklist xor([I[I[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x3

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    return-void
.end method

.method public static blacklist xor([J[J)V
    .locals 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-void
.end method

.method public static blacklist xor([J[J[J)V
    .locals 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    return-void
.end method
